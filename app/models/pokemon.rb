class Pokemon < ActiveRecord::Base
	########################################
	# Associations
	########################################
	belongs_to :type
    
    has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "32x32>" }, :default_url => "/images/:style/missing.png"

	has_many :pokemon_moves, :dependent => :destroy
	has_many :moves, :through => :pokemon_moves
	accepts_nested_attributes_for :pokemon_moves, :reject_if => lambda { |m| m[:move_id].blank?}, :allow_destroy => true

	has_many :weaknesses, :dependent => :destroy
	accepts_nested_attributes_for :weaknesses, :reject_if => lambda { |w| w[:type_id].blank?}, :allow_destroy => true
	########################################
	# Validations
	########################################
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :type, presence: true
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	########################################
	# Methods
	########################################
	def build_associations
		build_moves
		build_weaknesses
	end

	def build_moves
	  if pokemon_moves.count == 0
	  	4.times { pokemon_moves.build }
	  elsif pokemon_moves.count < 4
	  	pokemon_moves.build
	  end
	end

	def build_weaknesses
	  weaknesses.build
	end
end
