class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, :fullname, :postal_code, :city, :street, presence: true
  validates :prefecture_code_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"} 
end
