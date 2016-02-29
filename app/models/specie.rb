class Specie < ActiveRecord::Base
  has_many :animals

  validates :name, presence: true

  paginates_per 10

  def self.total
    distinct.count
  end
end
