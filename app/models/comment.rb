class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :commentable

  has_many :comments, :as => :commentable
  #validations
  validates :content, presence: true
  validates :user, presence: true
end
