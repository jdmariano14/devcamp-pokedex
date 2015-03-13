class PokemonMove < ActiveRecord::Base
	########################################
	# Validations
	########################################
	validates_uniqueness_of :move_id, :scope => :pokemon_id
	########################################
	# Associations
	########################################
	belongs_to :pokemon
	belongs_to :move
end