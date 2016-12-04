class Venue < ActiveRecord::Base
  scope :needs_follow_up, -> { where.not('status = ?', 'Never') }
  # Interested / Last resort

  def self.import(file)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      venue = find_by_id(row["id"]) || new
      venue.attributes = row.to_hash.slice(*row.to_hash.keys)
      venue.save!
    end
  end

  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when ".csv" then Roo::CSV.new(file.path)
    when ".xls" then Roo::Excel.new(file.path)
    when ".xlsx" then Roo::Excelx.new(file.path)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end

  def self.status_options
    [
      'Waiting for their email',
      'Waiting for their call',
      'Waiting on me to email',
      'Waiting on me to call',
      'Interested / Last resort',
      'Interested',
      "Dates don't work",
      'Waitlisted',
      'Not interested',
      'Next year',
      'Never',
      'Need to make first contact',
      'Not sure check email'
    ]
  end
end
