class Zoo < ActiveRecord::Base
  has_many :animals

  validates :name, presence: true

  def total_animals
    animals.count
  end
end
