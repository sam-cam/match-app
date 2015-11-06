class User < ActiveRecord::Base
  has_secure_password
  # has_one :developer
  # has_one :designer
end
