class User < ActiveRecord::Base

  has_many :jobs
  
  has_secure_password

  validates :email,
   presence: true

  validates :password,
   length: { in: 6..20 }, on: :create

end
