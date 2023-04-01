class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :cook_time
      t.string :prep_time
      t.string :ratings
      t.string :cuisine
      t.string :category
      t.string :author

      t.timestamps
    end
  end
end
