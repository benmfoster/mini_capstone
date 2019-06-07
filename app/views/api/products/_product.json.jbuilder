json.id product.id
json.name product.name
json.secret_power product.secret_power
json.description product.description
json.supplier_id product.supplier_id
json.current_user current_user
json.categories product.categories

json.formatted do
	json.price number_to_currency(product.price)
	json.tax number_to_currency(product.tax)
	json.total number_to_currency(product.total)
end