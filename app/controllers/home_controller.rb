class HomeController < ApplicationController

	def trash_em_all
		@trash_em_all = List.where(:completed => true).destroy_all
		redirect_to lists_url, notice: "All Selected Items Were Successfully Deleted."
	end

end