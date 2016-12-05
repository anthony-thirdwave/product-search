class SearchController < ApplicationController
  def search
    @params = params[:query]
    @products = Product.search (@params.present? ? @params : '*'), aggs: [:section, :category1, :category2, :category3]
    @companies = @products.map(&:companies).flatten.uniq
	end

  private

  def beautify_search
    redirect_to search_products_path(query: params[:q]) if params[:q].present?
  end
end
