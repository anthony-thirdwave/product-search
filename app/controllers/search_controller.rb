class SearchController < ApplicationController
  def search
    @params = params[:query]
    @companies = []
    if @params.nil?
      @products = []
    else
      @products = Product.search @params, aggs: [:section, :category1, :category2, :category3]
      @companies = @products.map(&:companies).flatten.uniq
    end
	end
end
