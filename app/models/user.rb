class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :password,        length: { minimum: 6 }, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i }
  validates :nickname,        presence: true 
  validates :age_id,          numericality: { other_than: 1 }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :age

  has_many :products
  has_many :memories
end
