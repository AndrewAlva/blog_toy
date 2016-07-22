class Post < ApplicationRecord
	validates :title,
		presence: true,
		uniqueness: true,
		length: { minimum: 5 }

	validates_presence_of :description, :image
end
