class Test < ApplicationRecord
  has_many :device_pre_tests
  has_many :device_post_tests
end
