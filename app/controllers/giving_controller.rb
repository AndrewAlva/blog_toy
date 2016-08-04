class GivingController < ApplicationController
	
	def index
		@posts = Post.all
	end
end