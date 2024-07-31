class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :phone, presence: true, uniqueness: true

  before_save :format_phone_number

  private

  def format_phone_number
    self.phone = ApplicationHelper.validate_phone(phone)
  end
end
