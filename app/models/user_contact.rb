class UserContact < ActiveRecord::Base
  belongs_to :user, foreign_key: "user_id"
  belongs_to :type_country, foreign_key: "type_country_id"
  belongs_to :type_region, foreign_key: "type_region_id"

  validates :type_country, presence: true
  validates :type_region, presence: true
  validates :address1, presence: true
  validates :city, presence: true
  validates :postal_code, presence: true
  validates :business_number, presence: true, numericality: true, length: {minimum: 10, maximum: 15}
	validates :cell_number, numericality: true, length: {minimum: 10, maximum: 15}, allow_blank: true
end
