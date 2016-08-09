class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :course

  validates :body, presence: true
    validates :user, presence: true
    validates :course, presence: true
    validates :rating, numericality: { only_integer: true }
end
