class PokemonMove < ActiveRecord::Base
	########################################
	# Associations
	########################################
	belongs_to :pokemon
	belongs_to :move
	########################################
	# Validations
	########################################
	validates_uniqueness_of :move_id, :scope => :pokemon_id
end