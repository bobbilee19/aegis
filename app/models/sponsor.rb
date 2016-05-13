class Sponsor < ActiveRecord::Base
  has_many :events
  has_many :contacts
end
