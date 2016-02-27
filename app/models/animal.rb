class Animal < ActiveRecord::Base
  belongs_to :zoo
  belongs_to :specie

  validates :name, presence: true
  validates :specie, presence: true
end
