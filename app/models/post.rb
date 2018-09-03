class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 20 }
  has_many :comments
  belongs_to :user
end