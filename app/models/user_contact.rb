class UserContact < ActiveRecord::Base
  belongs_to :user, foreign_key: "user_id"
  belongs_to :type_country, foreign_key: "type_country_id"
  belongs_to :type_region, foreign_key: "type_region_id"
end
