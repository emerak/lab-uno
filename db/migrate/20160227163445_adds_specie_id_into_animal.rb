class AddsSpecieIdIntoAnimal < ActiveRecord::Migration
  def change
    add_column :animals, :specie_id, :integer
  end
end
