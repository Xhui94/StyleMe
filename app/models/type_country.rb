class TypeCountry < ActiveRecord::Base
  has_many :user_contacts
  has_many :type_regions
end
