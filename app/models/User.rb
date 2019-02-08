class User < ApplicationRecord
  has_secure_password

  has_many :newsletters

  enum role: [:default, :admin]

  validates :email,

            presence: true,
            uniqueness:true

end
