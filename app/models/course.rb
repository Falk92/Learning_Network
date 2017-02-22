class Course < ActiveRecord::Base
  has_many :orders
  has_many :comments
  has_many :user_courses, :dependent => :destroy
  has_many :users, through: :user_courses
  # validates :name, presence: true
  
end
