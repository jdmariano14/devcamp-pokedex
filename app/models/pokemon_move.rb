class PokemonMove < ActiveRecord::Base
	########################################
	# Associations
	########################################
	belongs_to :pokemon
	belongs_to :move
end