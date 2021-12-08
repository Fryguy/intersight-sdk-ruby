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
  # Definition of the list of properties defined in 'snmp.Policy', excluding properties defined in parent classes.
  class SnmpPolicyAllOf
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # The default SNMPv1, SNMPv2c community name or SNMPv3 username to include on any trap messages sent to the SNMP host. The name can be 18 characters long.
    attr_accessor :access_community_string

    # Controls access to the information in the inventory tables. Applicable only for SNMPv1 and SNMPv2c users. * `Disabled` - Blocks access to the information in the inventory tables. * `Limited` - Partial access to read the information in the inventory tables. * `Full` - Full access to read the information in the inventory tables.
    attr_accessor :community_access

    # State of the SNMP Policy on the endpoint. If enabled, the endpoint sends SNMP traps to the designated host.
    attr_accessor :enabled

    # User-defined unique identification of the static engine.
    attr_accessor :engine_id

    # Port on which Cisco IMC SNMP agent runs. Enter a value between 1-65535. Reserved ports not allowed (22, 23, 80, 123, 389, 443, 623, 636, 2068, 3268, 3269).
    attr_accessor :snmp_port

    attr_accessor :snmp_traps

    attr_accessor :snmp_users

    # Contact person responsible for the SNMP implementation. Enter a string up to 64 characters, such as an email address or a name and telephone number.
    attr_accessor :sys_contact

    # Location of host on which the SNMP agent (server) runs.
    attr_accessor :sys_location

    # SNMP community group used for sending SNMP trap to other devices. Valid only for SNMPv2c users.
    attr_accessor :trap_community

    # State of the SNMP v2c on the endpoint. If enabled, the endpoint sends SNMP v2c properties to the designated host.
    attr_accessor :v2_enabled

    # State of the SNMP v3 on the endpoint. If enabled, the endpoint sends SNMP v3 properties to the designated host.
    attr_accessor :v3_enabled

    attr_accessor :organization

    # An array of relationships to policyAbstractConfigProfile resources.
    attr_accessor :profiles

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
        :'access_community_string' => :'AccessCommunityString',
        :'community_access' => :'CommunityAccess',
        :'enabled' => :'Enabled',
        :'engine_id' => :'EngineId',
        :'snmp_port' => :'SnmpPort',
        :'snmp_traps' => :'SnmpTraps',
        :'snmp_users' => :'SnmpUsers',
        :'sys_contact' => :'SysContact',
        :'sys_location' => :'SysLocation',
        :'trap_community' => :'TrapCommunity',
        :'v2_enabled' => :'V2Enabled',
        :'v3_enabled' => :'V3Enabled',
        :'organization' => :'Organization',
        :'profiles' => :'Profiles'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'class_id' => :'String',
        :'object_type' => :'String',
        :'access_community_string' => :'String',
        :'community_access' => :'String',
        :'enabled' => :'Boolean',
        :'engine_id' => :'String',
        :'snmp_port' => :'Integer',
        :'snmp_traps' => :'Array<SnmpTrap>',
        :'snmp_users' => :'Array<SnmpUser>',
        :'sys_contact' => :'String',
        :'sys_location' => :'String',
        :'trap_community' => :'String',
        :'v2_enabled' => :'Boolean',
        :'v3_enabled' => :'Boolean',
        :'organization' => :'OrganizationOrganizationRelationship',
        :'profiles' => :'Array<PolicyAbstractConfigProfileRelationship>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'snmp_traps',
        :'snmp_users',
        :'profiles'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::SnmpPolicyAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::SnmpPolicyAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'snmp.Policy'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'snmp.Policy'
      end

      if attributes.key?(:'access_community_string')
        self.access_community_string = attributes[:'access_community_string']
      end

      if attributes.key?(:'community_access')
        self.community_access = attributes[:'community_access']
      else
        self.community_access = 'Disabled'
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      else
        self.enabled = true
      end

      if attributes.key?(:'engine_id')
        self.engine_id = attributes[:'engine_id']
      end

      if attributes.key?(:'snmp_port')
        self.snmp_port = attributes[:'snmp_port']
      else
        self.snmp_port = 161
      end

      if attributes.key?(:'snmp_traps')
        if (value = attributes[:'snmp_traps']).is_a?(Array)
          self.snmp_traps = value
        end
      end

      if attributes.key?(:'snmp_users')
        if (value = attributes[:'snmp_users']).is_a?(Array)
          self.snmp_users = value
        end
      end

      if attributes.key?(:'sys_contact')
        self.sys_contact = attributes[:'sys_contact']
      end

      if attributes.key?(:'sys_location')
        self.sys_location = attributes[:'sys_location']
      end

      if attributes.key?(:'trap_community')
        self.trap_community = attributes[:'trap_community']
      end

      if attributes.key?(:'v2_enabled')
        self.v2_enabled = attributes[:'v2_enabled']
      else
        self.v2_enabled = true
      end

      if attributes.key?(:'v3_enabled')
        self.v3_enabled = attributes[:'v3_enabled']
      else
        self.v3_enabled = true
      end

      if attributes.key?(:'organization')
        self.organization = attributes[:'organization']
      end

      if attributes.key?(:'profiles')
        if (value = attributes[:'profiles']).is_a?(Array)
          self.profiles = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @class_id.nil?
        invalid_properties.push('invalid value for "class_id", class_id cannot be nil.')
      end

      if @object_type.nil?
        invalid_properties.push('invalid value for "object_type", object_type cannot be nil.')
      end

      if !@access_community_string.nil? && @access_community_string.to_s.length > 18
        invalid_properties.push('invalid value for "access_community_string", the character length must be smaller than or equal to 18.')
      end

      if !@engine_id.nil? && @engine_id.to_s.length > 27
        invalid_properties.push('invalid value for "engine_id", the character length must be smaller than or equal to 27.')
      end

      pattern = Regexp.new(/^[^#!&]*$/)
      if !@engine_id.nil? && @engine_id !~ pattern
        invalid_properties.push("invalid value for \"engine_id\", must conform to the pattern #{pattern}.")
      end

      if !@snmp_port.nil? && @snmp_port > 65535
        invalid_properties.push('invalid value for "snmp_port", must be smaller than or equal to 65535.')
      end

      if !@snmp_port.nil? && @snmp_port < 1
        invalid_properties.push('invalid value for "snmp_port", must be greater than or equal to 1.')
      end

      if !@snmp_traps.nil? && @snmp_traps.length > 15
        invalid_properties.push('invalid value for "snmp_traps", number of items must be less than or equal to 15.')
      end

      if !@snmp_users.nil? && @snmp_users.length > 15
        invalid_properties.push('invalid value for "snmp_users", number of items must be less than or equal to 15.')
      end

      if !@sys_contact.nil? && @sys_contact.to_s.length > 64
        invalid_properties.push('invalid value for "sys_contact", the character length must be smaller than or equal to 64.')
      end

      if !@sys_location.nil? && @sys_location.to_s.length > 64
        invalid_properties.push('invalid value for "sys_location", the character length must be smaller than or equal to 64.')
      end

      if !@trap_community.nil? && @trap_community.to_s.length > 18
        invalid_properties.push('invalid value for "trap_community", the character length must be smaller than or equal to 18.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @class_id.nil?
      class_id_validator = EnumAttributeValidator.new('String', ["snmp.Policy"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["snmp.Policy"])
      return false unless object_type_validator.valid?(@object_type)
      return false if !@access_community_string.nil? && @access_community_string.to_s.length > 18
      community_access_validator = EnumAttributeValidator.new('String', ["Disabled", "Limited", "Full"])
      return false unless community_access_validator.valid?(@community_access)
      return false if !@engine_id.nil? && @engine_id.to_s.length > 27
      return false if !@engine_id.nil? && @engine_id !~ Regexp.new(/^[^#!&]*$/)
      return false if !@snmp_port.nil? && @snmp_port > 65535
      return false if !@snmp_port.nil? && @snmp_port < 1
      return false if !@snmp_traps.nil? && @snmp_traps.length > 15
      return false if !@snmp_users.nil? && @snmp_users.length > 15
      return false if !@sys_contact.nil? && @sys_contact.to_s.length > 64
      return false if !@sys_location.nil? && @sys_location.to_s.length > 64
      return false if !@trap_community.nil? && @trap_community.to_s.length > 18
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["snmp.Policy"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["snmp.Policy"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method with validation
    # @param [Object] access_community_string Value to be assigned
    def access_community_string=(access_community_string)
      if !access_community_string.nil? && access_community_string.to_s.length > 18
        fail ArgumentError, 'invalid value for "access_community_string", the character length must be smaller than or equal to 18.'
      end

      @access_community_string = access_community_string
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] community_access Object to be assigned
    def community_access=(community_access)
      validator = EnumAttributeValidator.new('String', ["Disabled", "Limited", "Full"])
      unless validator.valid?(community_access)
        fail ArgumentError, "invalid value for \"community_access\", must be one of #{validator.allowable_values}."
      end
      @community_access = community_access
    end

    # Custom attribute writer method with validation
    # @param [Object] engine_id Value to be assigned
    def engine_id=(engine_id)
      if !engine_id.nil? && engine_id.to_s.length > 27
        fail ArgumentError, 'invalid value for "engine_id", the character length must be smaller than or equal to 27.'
      end

      pattern = Regexp.new(/^[^#!&]*$/)
      if !engine_id.nil? && engine_id !~ pattern
        fail ArgumentError, "invalid value for \"engine_id\", must conform to the pattern #{pattern}."
      end

      @engine_id = engine_id
    end

    # Custom attribute writer method with validation
    # @param [Object] snmp_port Value to be assigned
    def snmp_port=(snmp_port)
      if !snmp_port.nil? && snmp_port > 65535
        fail ArgumentError, 'invalid value for "snmp_port", must be smaller than or equal to 65535.'
      end

      if !snmp_port.nil? && snmp_port < 1
        fail ArgumentError, 'invalid value for "snmp_port", must be greater than or equal to 1.'
      end

      @snmp_port = snmp_port
    end

    # Custom attribute writer method with validation
    # @param [Object] snmp_traps Value to be assigned
    def snmp_traps=(snmp_traps)
      if !snmp_traps.nil? && snmp_traps.length > 15
        fail ArgumentError, 'invalid value for "snmp_traps", number of items must be less than or equal to 15.'
      end

      @snmp_traps = snmp_traps
    end

    # Custom attribute writer method with validation
    # @param [Object] snmp_users Value to be assigned
    def snmp_users=(snmp_users)
      if !snmp_users.nil? && snmp_users.length > 15
        fail ArgumentError, 'invalid value for "snmp_users", number of items must be less than or equal to 15.'
      end

      @snmp_users = snmp_users
    end

    # Custom attribute writer method with validation
    # @param [Object] sys_contact Value to be assigned
    def sys_contact=(sys_contact)
      if !sys_contact.nil? && sys_contact.to_s.length > 64
        fail ArgumentError, 'invalid value for "sys_contact", the character length must be smaller than or equal to 64.'
      end

      @sys_contact = sys_contact
    end

    # Custom attribute writer method with validation
    # @param [Object] sys_location Value to be assigned
    def sys_location=(sys_location)
      if !sys_location.nil? && sys_location.to_s.length > 64
        fail ArgumentError, 'invalid value for "sys_location", the character length must be smaller than or equal to 64.'
      end

      @sys_location = sys_location
    end

    # Custom attribute writer method with validation
    # @param [Object] trap_community Value to be assigned
    def trap_community=(trap_community)
      if !trap_community.nil? && trap_community.to_s.length > 18
        fail ArgumentError, 'invalid value for "trap_community", the character length must be smaller than or equal to 18.'
      end

      @trap_community = trap_community
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          access_community_string == o.access_community_string &&
          community_access == o.community_access &&
          enabled == o.enabled &&
          engine_id == o.engine_id &&
          snmp_port == o.snmp_port &&
          snmp_traps == o.snmp_traps &&
          snmp_users == o.snmp_users &&
          sys_contact == o.sys_contact &&
          sys_location == o.sys_location &&
          trap_community == o.trap_community &&
          v2_enabled == o.v2_enabled &&
          v3_enabled == o.v3_enabled &&
          organization == o.organization &&
          profiles == o.profiles
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, access_community_string, community_access, enabled, engine_id, snmp_port, snmp_traps, snmp_users, sys_contact, sys_location, trap_community, v2_enabled, v3_enabled, organization, profiles].hash
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
      hash = {}
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
