class AddsSpecieIdIntoAnimal < ActiveRecord::Migration
  def change
    # this could be a reference
    add_column :animals, :specie_id, :integer

    # indexing is missing
  end
end
