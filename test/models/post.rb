class Post < ActiveRecord::Base
  belongs_to :blog # Removed `optional: true` to enable compatibility and make the tests run

  positioned on: :blog
  positioned column: :order

  default_scope { order(:order) }
end
