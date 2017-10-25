class User < ApplicationRecord
  include Clearance::User
  has_secure_token :api_token

  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
end
