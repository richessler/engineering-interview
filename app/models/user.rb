class User < ActiveRecord::Base
  has_many :tweets
  validates :email, presence: true
  validates :handle, presense: true
end

