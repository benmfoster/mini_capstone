class Product < ApplicationRecord

	has_many :images
	belongs_to :supplier
	has_many :product_categories
	has_many :categories, through: :product_categories
	has_many :orders, through: :carted_products

	

	def is_discounted?
		price < 10
	end

	def tax
		price * 0.09
	end

	def total
		price + tax
	end

	validates :name, :price, :secret_power, :description, :image_url, presence: true
	validates :name, uniqueness: true
	validates :description, length: { in: 10..500 }
	validates :price, numericality: { greater_than: 0.0 }
	
end
