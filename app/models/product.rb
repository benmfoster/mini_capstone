class Product < ApplicationRecord

	def is_discounted?
		false
		if price < 10
			true
		end
	end

	def tax
		price * .09
	end

	def total
		price + tax
	end
	
end
