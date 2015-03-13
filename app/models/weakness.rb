class Weakness < ActiveRecord::Base
	belongs_to :pokemon
	belongs_to :type
end
