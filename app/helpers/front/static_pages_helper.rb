module Front::StaticPagesHelper

	def daytime_class_helper(opening_hours)
		if opening_hours == "выходной"
			return "ds_wtime closed"
		else
			return "ds_wtime"
		end
	end
end
