class Listing < ActiveRecord::Base
  belongs_to :user, foreign_key: "user_id"
  belongs_to :category, foreign_key: "category_id"
  belongs_to :styleboard, foreign_key: "styleboard_id"
  belongs_to :stylecart, foreign_key: "stylecart_id"
  has_many :transactions

end
