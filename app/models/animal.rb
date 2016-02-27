class Animal < ActiveRecord::Base
  belongs_to :zoo
  belongs_to :specie
end
