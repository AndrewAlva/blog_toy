module ApplicationHelper

	def full_title page_title
		base_title = "Andrew's Blog"
		if page_title.empty?
			base_title
		else
			base_title += " | #{page_title}"
		end
	end

	def description_meta page_description

		if page_description.empty?
			"Lorem description ipsum"
		else
			page_description
		end
	end

	def image_meta page_image

		if page_image.empty?
			"/assets/lorem_image.jpg"
		else
			page_image
		end
	end
end
