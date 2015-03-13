class Type < ActiveRecord::Base
	has_many :moves
	has_many :pokemons

	has_many :weaknesses
end
