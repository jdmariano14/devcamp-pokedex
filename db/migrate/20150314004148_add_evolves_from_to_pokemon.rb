class AddEvolvesFromToPokemon < ActiveRecord::Migration
  def up
  	add_column :pokemons, :evolves_from_id, :integer
  end

  def down
    remove_column :pokemons, :evolves_from_id
  end
end
