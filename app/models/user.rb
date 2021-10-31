class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  has_many :prices
  has_one_attached :image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  with_options presence: true do 
    validates :fullname, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: '全角文字を使用してください' }
    validates :nickname, format: { with: /\A[a-z0-9]+\z/,message: '半角英数字を使用してください' }
    validates :postal_code, format: { with: /\A\d{3}[-]\d{4}\z/ }
    validates :city, :street
    validates :prefecture_code_id, numericality: { other_than: 1 , message: "can't be blank"} 
  end
end