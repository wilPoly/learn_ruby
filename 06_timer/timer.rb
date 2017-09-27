class Timer

	attr_accessor :seconds

	def seconds
		@seconds = 0
	end

	def time_string

		@hours = @seconds / 3600
		@seconds = @seconds.remainder(3600)
		@minutes = @seconds / 60
		@seconds = @seconds.remainder(60)

		if @seconds < 10
			@seconds = "0#{@seconds}"
		end
		if @minutes < 10
			@minutes = "0#{@minutes}"
		end
		if @hours < 10
			@hours = "0#{@hours}"
		end
		@display = "#{@hours}:#{@minutes}:#{@seconds}"
	end
end