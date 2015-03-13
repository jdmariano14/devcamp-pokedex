require 'test_helper'

class PokemonTest < ActiveSupport::TestCase
	test "pokemon must have a name" do
		p = Pokemon.first
		assert p.valid?, "pokemon should be valid"
		p.name = nil
		assert_not p.valid?, "pokemon should be invalid"
	end
end
