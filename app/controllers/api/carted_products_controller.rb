class Api::CartedProductsController < ApplicationController

	def create
		@carted_product = CartedProduct.new(
			user_id: current_user.id,
			product_id: params[:product_id],
			quantity: params[:quantity],
			order_id: params[:order_id],
			status: "carted"
			)
		if @carted_product.save
			render 'show.json.jbuilder'
		else
			render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
		end
	end

	def index
		@carted_products = current_user.carted_products.where(status: "carted")
		render 'index.json.jbuilder'
	end

end
