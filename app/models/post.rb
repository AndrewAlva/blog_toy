class Post < ApplicationRecord
	belongs_to :author, class_name: "User"
	has_many :comments, as: :commentable


	validates :title,
		presence: true,
		uniqueness: true,
		length: { minimum: 5 }

	validates_presence_of :description, :image
end
