class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 validates :secret_code, presence: true, uniqueness: true
 validate :check_code

 private

 def check_code
   code = Code.find_by_generator(secret_code)
   errors[:secret_code] << "does not exist" unless code
 end
end
