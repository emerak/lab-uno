class Zoo < ActiveRecord::Base
  has_many :animals

  def total_animals
    animals.count
  end
end
