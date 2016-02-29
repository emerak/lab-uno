class AddsDescriptionIntoAnimal < ActiveRecord::Migration
  def up
    add_column :animals, :description, :string
    Animal.create_translation_table! description: :text
  end

  def down
    remove_column :animals, :description
    Animal.drop_translation_table!
  end
end
