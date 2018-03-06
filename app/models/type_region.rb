class TypeRegion < ActiveRecord::Base
  belongs_to :type_country, foreign_key: "type_country_id"
  has_many :user_contacts
end
