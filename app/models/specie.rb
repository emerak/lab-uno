class Specie < ActiveRecord::Base
  has_many :animals
  has_many :zoos, through: :animals

  validates :name, presence: true

  def self.total
    distinct.count
  end
end
