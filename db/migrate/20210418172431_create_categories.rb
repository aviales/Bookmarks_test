class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title
      t.boolean :is_public
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
