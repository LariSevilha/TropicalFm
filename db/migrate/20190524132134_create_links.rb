class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :name
      t.string :url
      t.string :image
      t.references :link_category, foreign_key: true, index: true

      t.timestamps
    end
  end
end