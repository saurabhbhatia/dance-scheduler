class Product < ActiveRecord::Base
  enum status: [:active, :deleted]
  TYPES = %w(unlimited class)
end
