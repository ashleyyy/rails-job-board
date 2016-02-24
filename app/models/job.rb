class Job < ActiveRecord::Base
  belongs_to :user

  validates :user, :title,
    presence: true
end
