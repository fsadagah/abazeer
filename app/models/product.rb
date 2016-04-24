class Product < ActiveRecord::Base
  	belongs_to :categories
  	has_many :categories
	validates :name_en, presence: true, uniqueness: true, length: { in: 2..30 }, on: :create
	validates :name_en, presence: true, length: { in: 2..30 }, on: :update
  	validates :price_en, presence: true, numericality: true
  	validates :name_ar, presence: true, length: { in: 3..250 }
    validates :price_ar, presence: true, numericality: true
end
