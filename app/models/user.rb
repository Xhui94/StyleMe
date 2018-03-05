class User < ActiveRecord::Base
  has_many :lookbooks
  has_many :stylecarts
  has_many :listings
  has_one :user_filter
  has_many :transactions
  has_and_belongs_to_many :styleboards
end
