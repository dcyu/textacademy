class User < ActiveRecord::Base
  attr_accessible :phone_number
  has_one :current_level

  # validates_with PhoneHelper::PhoneValidator

  # before_validation do
  #   parsed = PhoneHelper::parse_phone(self.phone_number) if attribute_present?(:phone_number)
  #   if not parsed.nil?
  #     self.phone_number = parsed.to_s
  #   end
  # end
end
