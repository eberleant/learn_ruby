class Timer
	def initialize
		@seconds = 0
	end

	def seconds
		return @seconds
	end

	def seconds= s
		@seconds = s
		@time_string = convert_to_time s
	end

	def time_string
		return @time_string 
	end

	def convert_to_time secs
		hrs = ((secs / 60) / 60).to_s
		mins = ((secs / 60) % 60).to_s
		secs = (secs % 60).to_s
		hrs = append_zero(hrs)
		mins = append_zero(mins)
		secs = append_zero(secs)
		return hrs + ":" + mins + ":" + secs
	end

	def append_zero num 
		while num.length < 2
			num = "0" + num
		end
		return num
	end
end
