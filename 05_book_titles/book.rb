class Book

attr_accessor :title

	def title
		@title = @title.split	
		@majuscule = []
		@exceptions = %w(and in the of a an)
		@title.each do |i|
			if @exceptions.include? i
				@majuscule << i
			else @majuscule << i.capitalize
			end
		end
		@majuscule.first.capitalize!
		@title = @majuscule.join(" ")
	end

end
