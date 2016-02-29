class Zoo < ActiveRecord::Base
  has_many :animals
  has_many :species, through: :animals, source: :specie

  validates :name, presence: true

  paginates_per 10

  def total_species
    species.total
  end

  def total_animals
    animals.count
  end
end
