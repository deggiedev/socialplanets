class User < ApplicationRecord
  has_many :planets
  has_secure_password
end
