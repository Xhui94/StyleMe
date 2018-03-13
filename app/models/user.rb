class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :lookbooks
  has_many :stylecarts
  has_many :listings
  has_one :user_filter
  has_many :transactions
  has_and_belongs_to_many :styleboards
  has_one :user_contact
  accepts_nested_attributes_for :user_contact

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
end
