class User < ApplicationRecord
  enum status: [:active, :inactive]
  enum role: [:customer, :support, :admin]

  has_secure_password

  validates :username, presence: true, length: {within: 2..20}, uniqueness: true
  validates :name, presence: true, length: {within: 5..20}
  validates :email, presence: true, length: {within: 5..20}, uniqueness: true  
end
