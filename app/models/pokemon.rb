class Pokemon < ActiveRecord::Base
  belongs_to :trainer
  validates :name, :element, :presence => true

  def self.with_trainers
    self.joins(:trainer).select("trainers.name as trainer_name", "pokemons.name as pokemon_name", :element)
  end
end
