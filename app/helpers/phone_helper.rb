# module PhoneHelper

#   def self.country_code
#     '1'
#   end

#   # returns Phoner::Phone object
#   # throws RuntimeError if doesn't parse
#   def self.parse_phone(phone_str)
#     Phoner::Phone.parse(phone_str, :country_code => country_code)
#   end

#   class PhoneValidator < ActiveModel::Validator
#     def validate(record)
#       if record.attribute_present?(:phone)
#         if PhoneHelper::parse_phone(record.phone).nil?
#           record.errors[:base] << "Invalid phone number"
#         end
#       end
#     end
#   end

# end