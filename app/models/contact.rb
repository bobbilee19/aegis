class Contact < ActiveRecord::Base
  belongs_to :sponsor
  has_many :deliverables
end
