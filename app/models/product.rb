class Product < ActiveRecord::Base
  enum status: [:active, :deleted]
end
