class AddImageToPokemon < ActiveRecord::Migration
  def self.up
    add_attachment :pokemons, :image
  end

  def self.down
    remove_attachment :pokemons, :image
  end
end
