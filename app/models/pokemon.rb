class Pokemon < ActiveRecord::Base
	########################################
	# Validations
	########################################
	validates :name, presence: true
	validates :type, presence: true
	########################################
	# Associations
	########################################
	belongs_to :type

	has_many :pokemon_moves
	has_many :moves, :through => :pokemon_moves
	accepts_nested_attributes_for :pokemon_moves, :reject_if => lambda { |m| m[:move_id].blank? }, :allow_destroy => true

	has_many :weaknesses
	########################################
	# Methods
	########################################
	def build_moves
	  if pokemon_moves.count == 0
	  	4.times { pokemon_moves.build }
	  elsif pokemon_moves.count < 4
	  	pokemon_moves.build
	  end
	end
end
