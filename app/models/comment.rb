class Comment < ActiveRecord::Base
  belongs_to :post
  validates :email, presence: true, email: true
  validates :body, presence: true
end