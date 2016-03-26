class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
            has_many :pins
            has_many:tags
            has_many:books
            has_many:reviews, dependent: :destroy
            has_many:dogs
            has_many:cats, dependent: :destroy
            has_many:stores
            has_many:items, dependent: :destroy

end
