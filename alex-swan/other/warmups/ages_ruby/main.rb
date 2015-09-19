class CalculateAge

	def initialize age
		report_age age
	end

	def orbital_periods
		{
			:earth => 1, :mercury => 0.240867,
			:venus => 0.61519726,
			:mars => 1.8808158,
			:jupiter => 11.862615,
			:saturn => 29.447498,
			:uranus => 84.016846,
			:neptune => 164.79132
		}
	end


	def calculate_age(earth_age_seconds)
		seconds_in_earth_year = 31557600
		earth_age_seconds.to_i
		age_in_earth_years = earth_age_seconds / seconds_in_earth_year

		planets = orbital_periods
		years = {}

		planets.each do |planet, conversion|
		planet_age_in_years = age_in_earth_years / conversion
		years[planet] = planet_age_in_years
		end
		years
	end

	def report_age age
		ages = calculate_age age
			puts "You are #{age} seconds old"
		ages.each do |planet, age|
			puts "If you'd been born on #{planet}, you would be #{age.round( 2 )}."
		end	
	end
end


CalculateAge.new 1000000000
CalculateAge.new 10000000000


class SpaceAge
	def initialize(seconds)
		@seconds = seconds
		@years_on_earth = seconds / 31557600

	end

	def orbital_periods
		{
			:mercury => 0.240867,
			:venus => 0.61519726,
			:earth => 1,
			:mars => 1.8808158,
			:jupiter => 11.862615,
			:saturn => 29.447498,
			:uranus => 84.016846,
			:neptune => 164.79132
		}
	end

	def years_on_planet( planet_name )
		ratio = orbital_periods[ planet_name ]
		years_on_other_planet = years_on_earth / ratio
		years_on_other_planet.round( 2 )
	end

	def years_on_all_planets
		all_orbital_periods = orbital_periods
		all_orbital_periods.each do |planet, ratio|
		all_orbital_periods[ planet ] = ( @years_on_earth / ratio ).round( 2 )
		end
	end
end


larry = SpaceAge.new(1_000_000_000)

