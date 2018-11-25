class Emergency < ApplicationRecord
  belongs_to :profile
  has_one :notification
end
