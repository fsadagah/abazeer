class AddCategoryToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :category0, index: true
    add_reference :products, :category1, index: true
    add_reference :products, :category2, index: true
    add_reference :products, :category3, index: true
    add_reference :products, :category4, index: true
  end
end
