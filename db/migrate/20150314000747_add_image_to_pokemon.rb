class AddImageToPokemon < ActiveRecord::Migration
  def up
    add_attachment :pokemons, :image
  end

  def down
    remove_attachment :pokemons, :image
  end
end
