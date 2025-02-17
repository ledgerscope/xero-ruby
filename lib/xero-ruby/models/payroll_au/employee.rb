=begin
#Xero Payroll AU API

#This is the Xero Payroll API for orgs in Australia region.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollAu
  require 'bigdecimal'

  class Employee
    # First name of employee
    attr_accessor :first_name
    
    # Last name of employee
    attr_accessor :last_name
    
    # Date of birth of the employee (YYYY-MM-DD)
    attr_accessor :date_of_birth
    

    attr_accessor :home_address
    
    # Start date for an employee (YYYY-MM-DD)
    attr_accessor :start_date
    
    # Title of the employee
    attr_accessor :title
    
    # Middle name(s) of the employee
    attr_accessor :middle_names
    
    # The email address for the employee
    attr_accessor :email
    
    # The employee’s gender. See Employee Gender
    attr_accessor :gender
    N = "N".freeze
    M = "M".freeze
    F = "F".freeze
    I = "I".freeze
    
    # Employee phone number
    attr_accessor :phone
    
    # Employee mobile number
    attr_accessor :mobile
    
    # Employee’s twitter name
    attr_accessor :twitter_user_name
    
    # Authorised to approve other employees' leave requests
    attr_accessor :is_authorised_to_approve_leave
    
    # Authorised to approve timesheets
    attr_accessor :is_authorised_to_approve_timesheets
    
    # JobTitle of the employee
    attr_accessor :job_title
    
    # Employees classification
    attr_accessor :classification
    
    # Xero unique identifier for earnings rate
    attr_accessor :ordinary_earnings_rate_id
    
    # Xero unique identifier for payroll calendar for the employee
    attr_accessor :payroll_calendar_id
    
    # The Employee Group allows you to report on payroll expenses and liabilities for each group of employees
    attr_accessor :employee_group_name
    
    # Xero unique identifier for an Employee
    attr_accessor :employee_id
    
    # Employee Termination Date (YYYY-MM-DD)
    attr_accessor :termination_date
    
    # * `V` Voluntary cessation - An employee resignation, retirement, domestic or pressing necessity or abandonment of employment * `I` Ill health - An employee resignation due to medical condition that prevents the continuation of employment, such as for illness, ill-health, medical unfitness or total permanent disability * `D` Deceased - The death of an employee * `R` Redundancy - An employer-initiated termination of employment due to a genuine redundancy or approved early retirement scheme * `F` Dismissal - An employer-initiated termination of employment due to dismissal, inability to perform the required work, misconduct or inefficiency * `C` Contract cessation - The natural conclusion of a limited employment relationship due to contract/engagement duration or task completion, seasonal work completion, or to cease casuals that are no longer required * `T` Transfer - The administrative arrangements performed to transfer employees across payroll systems, move them temporarily to another employer (machinery of government for public servants), transfer of business, move them to outsourcing arrangements or other such technical activities. 
    attr_accessor :termination_reason
    V = "V".freeze
    # I = "I".freeze
    D = "D".freeze
    R = "R".freeze
    # F = "F".freeze
    C = "C".freeze
    T = "T".freeze
    

    attr_accessor :bank_accounts
    

    attr_accessor :pay_template
    

    attr_accessor :opening_balances
    

    attr_accessor :tax_declaration
    

    attr_accessor :leave_balances
    

    attr_accessor :leave_lines
    

    attr_accessor :super_memberships
    

    attr_accessor :status
    
    # Last modified timestamp
    attr_accessor :updated_date_utc
    
    # Displays array of validation error messages from the API
    attr_accessor :validation_errors
    
    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'first_name' => :'FirstName',
        :'last_name' => :'LastName',
        :'date_of_birth' => :'DateOfBirth',
        :'home_address' => :'HomeAddress',
        :'start_date' => :'StartDate',
        :'title' => :'Title',
        :'middle_names' => :'MiddleNames',
        :'email' => :'Email',
        :'gender' => :'Gender',
        :'phone' => :'Phone',
        :'mobile' => :'Mobile',
        :'twitter_user_name' => :'TwitterUserName',
        :'is_authorised_to_approve_leave' => :'IsAuthorisedToApproveLeave',
        :'is_authorised_to_approve_timesheets' => :'IsAuthorisedToApproveTimesheets',
        :'job_title' => :'JobTitle',
        :'classification' => :'Classification',
        :'ordinary_earnings_rate_id' => :'OrdinaryEarningsRateID',
        :'payroll_calendar_id' => :'PayrollCalendarID',
        :'employee_group_name' => :'EmployeeGroupName',
        :'employee_id' => :'EmployeeID',
        :'termination_date' => :'TerminationDate',
        :'termination_reason' => :'TerminationReason',
        :'bank_accounts' => :'BankAccounts',
        :'pay_template' => :'PayTemplate',
        :'opening_balances' => :'OpeningBalances',
        :'tax_declaration' => :'TaxDeclaration',
        :'leave_balances' => :'LeaveBalances',
        :'leave_lines' => :'LeaveLines',
        :'super_memberships' => :'SuperMemberships',
        :'status' => :'Status',
        :'updated_date_utc' => :'UpdatedDateUTC',
        :'validation_errors' => :'ValidationErrors'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'date_of_birth' => :'Date',
        :'home_address' => :'HomeAddress',
        :'start_date' => :'Date',
        :'title' => :'String',
        :'middle_names' => :'String',
        :'email' => :'String',
        :'gender' => :'String',
        :'phone' => :'String',
        :'mobile' => :'String',
        :'twitter_user_name' => :'String',
        :'is_authorised_to_approve_leave' => :'Boolean',
        :'is_authorised_to_approve_timesheets' => :'Boolean',
        :'job_title' => :'String',
        :'classification' => :'String',
        :'ordinary_earnings_rate_id' => :'String',
        :'payroll_calendar_id' => :'String',
        :'employee_group_name' => :'String',
        :'employee_id' => :'String',
        :'termination_date' => :'Date',
        :'termination_reason' => :'String',
        :'bank_accounts' => :'Array<BankAccount>',
        :'pay_template' => :'PayTemplate',
        :'opening_balances' => :'OpeningBalances',
        :'tax_declaration' => :'TaxDeclaration',
        :'leave_balances' => :'Array<LeaveBalance>',
        :'leave_lines' => :'Array<LeaveLine>',
        :'super_memberships' => :'Array<SuperMembership>',
        :'status' => :'EmployeeStatus',
        :'updated_date_utc' => :'DateTime',
        :'validation_errors' => :'Array<ValidationError>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollAu::Employee` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollAu::Employee`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'date_of_birth')
        self.date_of_birth = attributes[:'date_of_birth']
      end

      if attributes.key?(:'home_address')
        self.home_address = attributes[:'home_address']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'middle_names')
        self.middle_names = attributes[:'middle_names']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'mobile')
        self.mobile = attributes[:'mobile']
      end

      if attributes.key?(:'twitter_user_name')
        self.twitter_user_name = attributes[:'twitter_user_name']
      end

      if attributes.key?(:'is_authorised_to_approve_leave')
        self.is_authorised_to_approve_leave = attributes[:'is_authorised_to_approve_leave']
      end

      if attributes.key?(:'is_authorised_to_approve_timesheets')
        self.is_authorised_to_approve_timesheets = attributes[:'is_authorised_to_approve_timesheets']
      end

      if attributes.key?(:'job_title')
        self.job_title = attributes[:'job_title']
      end

      if attributes.key?(:'classification')
        self.classification = attributes[:'classification']
      end

      if attributes.key?(:'ordinary_earnings_rate_id')
        self.ordinary_earnings_rate_id = attributes[:'ordinary_earnings_rate_id']
      end

      if attributes.key?(:'payroll_calendar_id')
        self.payroll_calendar_id = attributes[:'payroll_calendar_id']
      end

      if attributes.key?(:'employee_group_name')
        self.employee_group_name = attributes[:'employee_group_name']
      end

      if attributes.key?(:'employee_id')
        self.employee_id = attributes[:'employee_id']
      end

      if attributes.key?(:'termination_date')
        self.termination_date = attributes[:'termination_date']
      end

      if attributes.key?(:'termination_reason')
        self.termination_reason = attributes[:'termination_reason']
      end

      if attributes.key?(:'bank_accounts')
        if (value = attributes[:'bank_accounts']).is_a?(Array)
          self.bank_accounts = value
        end
      end

      if attributes.key?(:'pay_template')
        self.pay_template = attributes[:'pay_template']
      end

      if attributes.key?(:'opening_balances')
        self.opening_balances = attributes[:'opening_balances']
      end

      if attributes.key?(:'tax_declaration')
        self.tax_declaration = attributes[:'tax_declaration']
      end

      if attributes.key?(:'leave_balances')
        if (value = attributes[:'leave_balances']).is_a?(Array)
          self.leave_balances = value
        end
      end

      if attributes.key?(:'leave_lines')
        if (value = attributes[:'leave_lines']).is_a?(Array)
          self.leave_lines = value
        end
      end

      if attributes.key?(:'super_memberships')
        if (value = attributes[:'super_memberships']).is_a?(Array)
          self.super_memberships = value
        end
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'updated_date_utc')
        self.updated_date_utc = attributes[:'updated_date_utc']
      end

      if attributes.key?(:'validation_errors')
        if (value = attributes[:'validation_errors']).is_a?(Array)
          self.validation_errors = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @first_name.nil?
        invalid_properties.push('invalid value for "first_name", first_name cannot be nil.')
      end

      if @last_name.nil?
        invalid_properties.push('invalid value for "last_name", last_name cannot be nil.')
      end

      if @date_of_birth.nil?
        invalid_properties.push('invalid value for "date_of_birth", date_of_birth cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @first_name.nil?
      return false if @last_name.nil?
      return false if @date_of_birth.nil?
      gender_validator = EnumAttributeValidator.new('String', ["N", "M", "F", "I"])
      return false unless gender_validator.valid?(@gender)
      termination_reason_validator = EnumAttributeValidator.new('String', ["V", "I", "D", "R", "F", "C", "T"])
      return false unless termination_reason_validator.valid?(@termination_reason)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gender Object to be assigned
    def gender=(gender)
      validator = EnumAttributeValidator.new('String', ["N", "M", "F", "I"])
      unless validator.valid?(gender)
        fail ArgumentError, "invalid value for \"gender\", must be one of #{validator.allowable_values}."
      end
      @gender = gender
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] termination_reason Object to be assigned
    def termination_reason=(termination_reason)
      validator = EnumAttributeValidator.new('String', ["V", "I", "D", "R", "F", "C", "T"])
      unless validator.valid?(termination_reason)
        fail ArgumentError, "invalid value for \"termination_reason\", must be one of #{validator.allowable_values}."
      end
      @termination_reason = termination_reason
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          date_of_birth == o.date_of_birth &&
          home_address == o.home_address &&
          start_date == o.start_date &&
          title == o.title &&
          middle_names == o.middle_names &&
          email == o.email &&
          gender == o.gender &&
          phone == o.phone &&
          mobile == o.mobile &&
          twitter_user_name == o.twitter_user_name &&
          is_authorised_to_approve_leave == o.is_authorised_to_approve_leave &&
          is_authorised_to_approve_timesheets == o.is_authorised_to_approve_timesheets &&
          job_title == o.job_title &&
          classification == o.classification &&
          ordinary_earnings_rate_id == o.ordinary_earnings_rate_id &&
          payroll_calendar_id == o.payroll_calendar_id &&
          employee_group_name == o.employee_group_name &&
          employee_id == o.employee_id &&
          termination_date == o.termination_date &&
          termination_reason == o.termination_reason &&
          bank_accounts == o.bank_accounts &&
          pay_template == o.pay_template &&
          opening_balances == o.opening_balances &&
          tax_declaration == o.tax_declaration &&
          leave_balances == o.leave_balances &&
          leave_lines == o.leave_lines &&
          super_memberships == o.super_memberships &&
          status == o.status &&
          updated_date_utc == o.updated_date_utc &&
          validation_errors == o.validation_errors
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [first_name, last_name, date_of_birth, home_address, start_date, title, middle_names, email, gender, phone, mobile, twitter_user_name, is_authorised_to_approve_leave, is_authorised_to_approve_timesheets, job_title, classification, ordinary_earnings_rate_id, payroll_calendar_id, employee_group_name, employee_id, termination_date, termination_reason, bank_accounts, pay_template, opening_balances, tax_declaration, leave_balances, leave_lines, super_memberships, status, updated_date_utc, validation_errors].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BigDecimal
        BigDecimal(value.to_s)
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        XeroRuby::PayrollAu.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash(downcase: false)
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        key = downcase ? attr : param
        hash[key] = _to_hash(value, downcase: downcase)
      end
      hash
    end

    # Returns the object in the form of hash with snake_case
    def to_attributes
      to_hash(downcase: true)
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value, downcase: false)
      if value.is_a?(Array)
        value.map do |v|
          v.to_hash(downcase: downcase)
        end
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.map { |k, v| hash[k] = _to_hash(v, downcase: downcase) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash(downcase: downcase)
      else
        value
      end
    end

    def parse_date(datestring)
      if datestring.include?('Date')
        date_pattern = /\/Date\((-?\d+)(\+\d+)?\)\//
        original, date, timezone = *date_pattern.match(datestring)
        date = (date.to_i / 1000)
        Time.at(date).utc.strftime('%Y-%m-%dT%H:%M:%S%z').to_s
      elsif /(\d\d\d\d)-(\d\d)/.match(datestring) # handles dates w/out Days: YYYY-MM*-DD
        Time.parse(datestring + '-01').strftime('%Y-%m-%dT%H:%M:%S').to_s
      else # handle date 'types' for small subset of payroll API's
        Time.parse(datestring).strftime('%Y-%m-%dT%H:%M:%S').to_s
      end
    end
  end
end
