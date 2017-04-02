class Contact < ApplicationRecord
  belongs_to :user, optional: true
  def japan_phone_number
    "+81 #{phone}"
  end
  def full_name
    "#{first_name} #{last_name}"
  end
end
