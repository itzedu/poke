class AddTrainerReferenceToPokemon < ActiveRecord::Migration
  def change
    add_reference :pokemons, :trainer, index: true
  end
end
