class Type < ActiveRecord::Base
	has_many :moves
	has_many :pokemons
end
