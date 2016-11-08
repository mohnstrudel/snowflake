class FrontController < ApplicationController
	layout 'front'
	before_filter :get_instagram

	private

	def get_instagram
		instagram_result = InstagramHelper.new
    	@instagram = instagram_result.by_tag("lashes")
	end
end
