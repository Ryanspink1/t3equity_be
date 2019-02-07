class User < ApplicationRecord
  has_secure_password

  enum role: [:default, :admin]

  validates :username,

            presence: true,
            uniqueness:true


end
