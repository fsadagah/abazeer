class AddCategoryToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :category0_id, index: true
    add_reference :products, :category1_id, index: true
    add_reference :products, :category2_id, index: true
    add_reference :products, :category3_id, index: true
    add_reference :products, :category4_id, index: true
  end
end
