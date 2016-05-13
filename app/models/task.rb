class Task < ActiveRecord::Base
  belongs_to :sponsor
  belongs_to :assignee, class_name: 'User'
end
