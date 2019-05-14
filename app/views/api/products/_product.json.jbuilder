json.id product.id
	json.title product.title
	json.price product.price
	json.secret_power product.secret_power
	json.image_url product.image_url

json.formatted do
	json.price number_to_currency(product.price)
	json.tax number_to_currency(product.tax)
	json.total number_to_currency(product.total)
end