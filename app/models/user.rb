class User < ActiveRecord::Base
  has_many :tweets
  validates :email, presence: true
  validates :handle, presence: true
end

