class Contact < ApplicationRecord
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true

  belongs_to :user, optional: true

  def japan_phone_number
    "+81 #{phone}"
  end
  def full_name
    "#{first_name} #{last_name}"
  end
end
