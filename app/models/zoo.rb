class Zoo < ActiveRecord::Base
  has_many :animals

  validates :name, presence: true

  accepts_nested_attributes_for :animals

  def total_animals
    animals.count
  end
end
