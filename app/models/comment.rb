class Comment < ApplicationRecord
  belongs_to :profile
  belongs_to :post
  has_one :notification
end
