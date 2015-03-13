class Pokemon < ActiveRecord::Base
	########################################
	# Validations
	########################################
	validates :name, presence: true
	validates :type_id, presence: true
	########################################
	# Associations
	########################################
	belongs_to :type

	has_many :pokemon_moves
	has_many :moves, :through => :pokemon_moves

	has_many :weaknesses
end
