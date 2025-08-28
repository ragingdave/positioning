class Category < ActiveRecord::Base
  belongs_to :parent, class_name: "Category" # Removed `optional: true` to enable compatibility

  positioned on: :parent
end
