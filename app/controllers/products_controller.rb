class ProductsController < ApplicationController
	before_action :find_product, only: [:edit, :update, :show, :delete]

	# Index action to render all products
	def index
		@products = Product.all
	end

	# New action for creating product
	def new
		@product = Product.new
	end

	# Create action saves the product into database
	def create
		@product = Product.new(product_params)
		if @product.save
			flash[:notice] = "Successfully created product!"
			redirect_to product_path(@product)
		else
			flash[:alert] = "Error creating new product!"
			render :new
		end
	end

	# Edit action retrives the product and renders the edit page
	def edit
	end

	# Update action updates the product with the new information
	def update
		if @product.update_attributes(product_params)
			flash[:notice] = "Successfully updated product!"
			redirect_to product_path(@product)
		else
			flash[:alert] = "Error updating product!"
			render :edit
		end
	end

	# The show action renders the individual product after retrieving the the id
	def show
	end

	# The destroy action removes the product permanently from the database
	def destroy
		if @product.destroy
			flash[:notice] = "Successfully deleted product!"
			redirect_to products_path
		else
			flash[:alert] = "Error updating product!"
		end
	end

	def autocomplete
		render json: Product.search(params[:query], autocomplete: false, limit: 10).map do |product|
			{ title: product.category2, value: product.id }
		end
	end

	private

	def product_params
		params.require(:product).permit(:section, :category1, :category2, :category3)
	end

	def find_product
		@product = Product.find(params[:id])
	end
end
