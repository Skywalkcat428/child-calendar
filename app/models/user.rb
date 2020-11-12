class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates_format_of :email, { with: EMAIL_REGEX, uniqueness: { case_sensitive: false } }

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d{6,}]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX

  validates :name, presence: true
end
