module Barabut
	class DATE
		def self.now
			format_date(Time.now.utc)
		end

		def self.n_hour_from_now(duration)
			format_date(Time.now.utc + duration*60*60)
		end

		def self.format_date(date)
			date.strftime('%Y-%m-%dT%H:%M:%SZ')
		end
	end
end