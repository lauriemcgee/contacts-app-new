class Contact < ApplicationRecord
  belonds_to_user
  def japan_phone_number
    "+81 #{phone}"
  end
  def full_name
    "#{first_name} #{last_name}"
  end
end
