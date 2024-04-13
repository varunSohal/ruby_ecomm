class Product < ApplicationRecord
  belongs_to :category
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "desc", "id", "id_value", "name", "updated_at"]
  end
end