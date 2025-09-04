class Category < ActiveRecord::Base
  belongs_to :parent, class_name: "Category" # Removed `optional: true` to enable compatibility and make the tests run

  positioned on: :parent
end
