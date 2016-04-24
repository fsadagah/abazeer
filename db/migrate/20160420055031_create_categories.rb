class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name_en
      t.string :string
      t.string :name_ar
      t.string :string
      t.string :thumb_url
      t.string :pano_url
      t.boolean :isactive

      t.timestamps null: false
    end
  end
end
