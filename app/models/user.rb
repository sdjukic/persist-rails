class User < ActiveRecord::Base
  validates :name, presence: true, 
                   length: { maximum: 35 },
                   uniqueness: true
  has_secure_password
  validates :password, length: { minimum: 6 }

end
