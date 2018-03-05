class Transaction < ActiveRecord::Base
  belongs_to :user, foreign_key: "user_id"
  belongs_to :listing, foreign_key: "listing_id"
end
