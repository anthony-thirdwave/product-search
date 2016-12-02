class Company < ApplicationRecord
  has_and_belongs_to_many :products

  def full_address
    self.address << " " << self.city << " " << self.state
  end
end
