module MoviesHelper
	def format_total_gross(movie)
		if movie.flop?
			content_tag(:strong, 'Flop!')
		else
			number_to_currency(movie.total_gross)
		end
	end

	def image_for(movie)
		if movie.image_file_name.blank?
			image_tag('bug.png')
		else
			image_tag(movie.image_file_name, :size => "120x120")
		end
	end
	
end
