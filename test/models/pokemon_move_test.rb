require 'test_helper'

class PokemonMoveTest < ActiveSupport::TestCase
	test "pokemon cannot have more than one of the same move" do
		m1 = PokemonMove.first
		m2 = PokemonMove.new
		m2.pokemon_id = m1.pokemon_id
		m2.move_id = m1.move_id + 1
		assert m2.valid?, "pokemon_move should be valid"
		m2.move_id = m1.pokemon_id
		assert_not m2.valid?, "pokemon_move should be invalid"
	end
end
