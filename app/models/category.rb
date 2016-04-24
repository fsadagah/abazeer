class Category < ActiveRecord::Base
	has_many :products
	belongs_to :products
	validates :name_en, presence: true, uniqueness: true, length: { in: 2..30 }, on: :create
    validates :name_ar, presence: true, uniqueness: true, length: { in: 2..30 }, on: :create
	validates :name_en, presence: true, length: { in: 2..30 }, on: :update
    validates :name_ar, presence: true, length: { in: 2..30 }, on: :update
  	validates :thumb_url, presence: false, length: { in: 3..250 }
  	validates :pano_url, presence: false, length: { in: 3..250 }
end
