class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :name_en
      t.text :desc_en
      t.text :price_en
      t.text :name_ar
      t.text :desc_ar
      t.text :price_ar
      t.boolean :isactive

      t.timestamps
    end
  end
end
