class Api::ProductsController < ApplicationController

	def index
		@products = Product.all
		render "index.json.jbuilder"
	end

	def show
		@product = Product.find(params[:id])
		render "show.json.jbuilder"
	end

	def create
		@product = Product.new(
			title: params[:title],
			price: params[:price],
			description: params[:description],
			image_url: params[:image_url],
			secret_power: params[:secret_power],
		)
		@product.save
		render 'create.json.jbuilder'
	end

	def update
		@product = Product.find(params[:id])

		@product.title = params[:title] || @product.title
		@product.price = params[:price] || @product.price
		@product.image_url = params[:image_url] || @product.image_url
		@product.secret_power = params[:secret_power] || @product.secret_power

		@product.save
		render 'show.json.jbuilder'
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		render json: {message: "Product successfully destroyed!"}
	end

end
