=begin
#Xero Projects API

#This is the Xero Projects API

The version of the OpenAPI document: 2.3.0
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Projects
  class ChargeType
    TIME = "TIME".freeze
    FIXED = "FIXED".freeze
    NON_CHARGEABLE = "NON_CHARGEABLE".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ChargeType.constants.select { |c| ChargeType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ChargeType" if constantValues.empty?
      value
    end
  end
end
