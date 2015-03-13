require 'test_helper'

class PokemonTest < ActiveSupport::TestCase
	test "pokemon must have a name" do
		p = Pokemon.first
		assert p.valid?, "pokemon should be valid"
		p.name = nil
		assert_not p.valid?, "pokemon should be invalid"
	end

	test "pokemon must have a type" do
		p = Pokemon.first
		assert p.valid?, "pokemon should be valid"
		p.type = nil
		assert_not p.valid?, "pokemon should be invalid"
	end

	test "pokemon must have a unique name" do
		p1 = Pokemon.first
		p2 = Pokemon.first.dup
		p2.name = "Udo"
		assert p2.valid?, "pokemon should be valid"
		p2.name = p1.name
		assert_not p2.valid?, "pokemon should be invalid"
	end
end
