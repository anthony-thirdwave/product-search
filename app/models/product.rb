class Product < ApplicationRecord
  has_and_belongs_to_many :companies
  searchkick autocomplete: ['category2']
end
