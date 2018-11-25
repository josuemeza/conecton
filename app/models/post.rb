class Post < ApplicationRecord
  belongs_to :post_type
  belongs_to :profile
end
