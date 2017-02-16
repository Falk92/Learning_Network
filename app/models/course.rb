class Course < ActiveRecord::Base
  
  mount_uploader :picture, CourseCoverUploader

  has_many :orders
  has_many :comments

  # validates :name, presence: true
  
end
