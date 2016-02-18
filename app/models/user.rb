class User < ActiveRecord::Base
  has_many :tweets
  validates :handle, :email, presence: true
end

