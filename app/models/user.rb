class User < ApplicationRecord
    include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: self
    has_many :destinations, :through => :destination_users
    has_many :destination_users

  validate :password_complexity

  def password_complexity
      return if password.blank? || password == email

      errors.add :password, 'Requirements not met.'
  end
end
