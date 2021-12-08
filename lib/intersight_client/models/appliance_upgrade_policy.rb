=begin
#Cisco Intersight

#Cisco Intersight is a management platform delivered as a service with embedded analytics for your Cisco and 3rd party IT infrastructure. This platform offers an intelligent level of management that enables IT organizations to analyze, simplify, and automate their environments in more advanced ways than the prior generations of tools. Cisco Intersight provides an integrated and intuitive management experience for resources in the traditional data center as well as at the edge. With flexible deployment options to address complex security needs, getting started with Intersight is quick and easy. Cisco Intersight has deep integration with Cisco UCS and HyperFlex systems allowing for remote deployment, configuration, and ongoing maintenance. The model-based deployment works for a single system in a remote location or hundreds of systems in a data center and enables rapid, standardized configuration and deployment. It also streamlines maintaining those systems whether you are working with small or very large configurations. The Intersight OpenAPI document defines the complete set of properties that are returned in the HTTP response. From that perspective, a client can expect that no additional properties are returned, unless these properties are explicitly defined in the OpenAPI document. However, when a client uses an older version of the Intersight OpenAPI document, the server may send additional properties because the software is more recent than the client. In that case, the client may receive properties that it does not know about. Some generated SDKs perform a strict validation of the HTTP response body against the OpenAPI document. This document was created on 2021-10-20T11:22:53Z.

The version of the OpenAPI document: 1.0.9-4870
Contact: intersight@cisco.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1-SNAPSHOT

=end

require 'date'
require 'time'

module IntersightClient
  # UpgradePolicy stores the Intersight Appliance's software upgrade policy. UpgradePolicy is a sinlgeton managed object. A default upgrade policy is created during the Intersight Appliance setup, and it is configured with an automatic upgrade policy. Automatic upgrade policy lets the system start software upgrade after a pre-defined number of seconds set in the software manifest. Scheduled upgrade policy lets the user start software upgrade at a specified schedule. However, scheduled time cannot be beyond the time limit enforced by the upgrade grace period set in the software manifest.
  class ApplianceUpgradePolicy < MoBaseMo
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # Indicates if the upgrade service is set to automatically start the software upgrade or not. If autoUpgrade is true, then the value of the schedule field is ignored.
    attr_accessor :auto_upgrade

    # If enabled, allows the user to define a blackout period during which the appliance will not be upgraded.
    attr_accessor :blackout_dates_enabled

    # End date of the black out period.
    attr_accessor :blackout_end_date

    # Start date of the black out period. The appliance will not be upgraded during this period.
    attr_accessor :blackout_start_date

    # Indicates if the updated metadata files should be synced immediately or at the next upgrade.
    attr_accessor :enable_meta_data_sync

    # Flag to indicate software upgrade setting is synchronized with Intersight SaaS.
    attr_accessor :is_synced

    # Intersight Appliance manual upgrade start time.
    attr_accessor :manual_installation_start_time

    attr_accessor :schedule

    # SoftwareDownloadType is used to indicate the kind of software download. * `connected` - Indicates if the upgrade service is set to upload software to latest version automatically. * `manual` - Indicates if the upgrade service is set to upload software to user picked verison manually .
    attr_accessor :software_download_type

    attr_accessor :account

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
        :'class_id' => :'ClassId',
        :'object_type' => :'ObjectType',
        :'auto_upgrade' => :'AutoUpgrade',
        :'blackout_dates_enabled' => :'BlackoutDatesEnabled',
        :'blackout_end_date' => :'BlackoutEndDate',
        :'blackout_start_date' => :'BlackoutStartDate',
        :'enable_meta_data_sync' => :'EnableMetaDataSync',
        :'is_synced' => :'IsSynced',
        :'manual_installation_start_time' => :'ManualInstallationStartTime',
        :'schedule' => :'Schedule',
        :'software_download_type' => :'SoftwareDownloadType',
        :'account' => :'Account'
      }
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      attribute_map.values.concat(superclass.acceptable_attributes)
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'class_id' => :'String',
        :'object_type' => :'String',
        :'auto_upgrade' => :'Boolean',
        :'blackout_dates_enabled' => :'Boolean',
        :'blackout_end_date' => :'Time',
        :'blackout_start_date' => :'Time',
        :'enable_meta_data_sync' => :'Boolean',
        :'is_synced' => :'Boolean',
        :'manual_installation_start_time' => :'Time',
        :'schedule' => :'OnpremSchedule',
        :'software_download_type' => :'String',
        :'account' => :'IamAccountRelationship'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'schedule',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'ApplianceUpgradePolicyAllOf',
      :'MoBaseMo'
      ]
    end

    # discriminator's property name in OpenAPI v3
    def self.openapi_discriminator_name
      :'class_id'
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::ApplianceUpgradePolicy` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::ApplianceUpgradePolicy`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'appliance.UpgradePolicy'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'appliance.UpgradePolicy'
      end

      if attributes.key?(:'auto_upgrade')
        self.auto_upgrade = attributes[:'auto_upgrade']
      end

      if attributes.key?(:'blackout_dates_enabled')
        self.blackout_dates_enabled = attributes[:'blackout_dates_enabled']
      end

      if attributes.key?(:'blackout_end_date')
        self.blackout_end_date = attributes[:'blackout_end_date']
      end

      if attributes.key?(:'blackout_start_date')
        self.blackout_start_date = attributes[:'blackout_start_date']
      end

      if attributes.key?(:'enable_meta_data_sync')
        self.enable_meta_data_sync = attributes[:'enable_meta_data_sync']
      else
        self.enable_meta_data_sync = true
      end

      if attributes.key?(:'is_synced')
        self.is_synced = attributes[:'is_synced']
      end

      if attributes.key?(:'manual_installation_start_time')
        self.manual_installation_start_time = attributes[:'manual_installation_start_time']
      end

      if attributes.key?(:'schedule')
        self.schedule = attributes[:'schedule']
      end

      if attributes.key?(:'software_download_type')
        self.software_download_type = attributes[:'software_download_type']
      else
        self.software_download_type = 'connected'
      end

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @class_id.nil?
        invalid_properties.push('invalid value for "class_id", class_id cannot be nil.')
      end

      if @object_type.nil?
        invalid_properties.push('invalid value for "object_type", object_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @class_id.nil?
      class_id_validator = EnumAttributeValidator.new('String', ["appliance.UpgradePolicy"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["appliance.UpgradePolicy"])
      return false unless object_type_validator.valid?(@object_type)
      software_download_type_validator = EnumAttributeValidator.new('String', ["connected", "manual"])
      return false unless software_download_type_validator.valid?(@software_download_type)
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["appliance.UpgradePolicy"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["appliance.UpgradePolicy"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] software_download_type Object to be assigned
    def software_download_type=(software_download_type)
      validator = EnumAttributeValidator.new('String', ["connected", "manual"])
      unless validator.valid?(software_download_type)
        fail ArgumentError, "invalid value for \"software_download_type\", must be one of #{validator.allowable_values}."
      end
      @software_download_type = software_download_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          auto_upgrade == o.auto_upgrade &&
          blackout_dates_enabled == o.blackout_dates_enabled &&
          blackout_end_date == o.blackout_end_date &&
          blackout_start_date == o.blackout_start_date &&
          enable_meta_data_sync == o.enable_meta_data_sync &&
          is_synced == o.is_synced &&
          manual_installation_start_time == o.manual_installation_start_time &&
          schedule == o.schedule &&
          software_download_type == o.software_download_type &&
          account == o.account && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, auto_upgrade, blackout_dates_enabled, blackout_end_date, blackout_start_date, enable_meta_data_sync, is_synced, manual_installation_start_time, schedule, software_download_type, account].hash
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
      super(attributes)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
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
        # models (e.g. Pet) or oneOf
        klass = IntersightClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
    def to_hash
      hash = super
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end