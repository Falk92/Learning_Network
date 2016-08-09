class Course < ActiveRecord::Base
  has_many :orders
  has_many :comments

  validates :name, presence: true
  
end
