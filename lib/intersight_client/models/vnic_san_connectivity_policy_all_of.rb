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
  # Definition of the list of properties defined in 'vnic.SanConnectivityPolicy', excluding properties defined in parent classes.
  class VnicSanConnectivityPolicyAllOf
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # The mode used for placement of vNICs on network adapters. It can either be Auto or Custom. * `custom` - The placement of the vNICs / vHBAs on network adapters is manually chosen by the user. * `auto` - The placement of the vNICs / vHBAs on network adapters is automatically determined by the system.
    attr_accessor :placement_mode

    # The WWNN address for the server node must be in hexadecimal format xx:xx:xx:xx:xx:xx:xx:xx. Allowed ranges are 20:00:00:00:00:00:00:00 to 20:FF:FF:FF:FF:FF:FF:FF or from 50:00:00:00:00:00:00:00 to 5F:FF:FF:FF:FF:FF:FF:FF. To ensure uniqueness of WWN's in the SAN fabric, you are strongly encouraged to use the WWN prefix - 20:00:00:25:B5:xx:xx:xx.
    attr_accessor :static_wwnn_address

    # The platform for which the server profile is applicable. It can either be a server that is operating in standalone mode or which is attached to a Fabric Interconnect managed by Intersight. * `Standalone` - Servers which are operating in standalone mode i.e. not connected to a Fabric Interconnected. * `FIAttached` - Servers which are connected to a Fabric Interconnect that is managed by Intersight.
    attr_accessor :target_platform

    # Type of allocation selected to assign a WWNN address for the server node. * `POOL` - The user selects a pool from which the mac/wwn address will be leased for the Virtual Interface. * `STATIC` - The user assigns a static mac/wwn address for the Virtual Interface.
    attr_accessor :wwnn_address_type

    # An array of relationships to vnicFcIf resources.
    attr_accessor :fc_ifs

    attr_accessor :organization

    # An array of relationships to policyAbstractConfigProfile resources.
    attr_accessor :profiles

    attr_accessor :wwnn_pool

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
        :'placement_mode' => :'PlacementMode',
        :'static_wwnn_address' => :'StaticWwnnAddress',
        :'target_platform' => :'TargetPlatform',
        :'wwnn_address_type' => :'WwnnAddressType',
        :'fc_ifs' => :'FcIfs',
        :'organization' => :'Organization',
        :'profiles' => :'Profiles',
        :'wwnn_pool' => :'WwnnPool'
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
        :'placement_mode' => :'String',
        :'static_wwnn_address' => :'String',
        :'target_platform' => :'String',
        :'wwnn_address_type' => :'String',
        :'fc_ifs' => :'Array<VnicFcIfRelationship>',
        :'organization' => :'OrganizationOrganizationRelationship',
        :'profiles' => :'Array<PolicyAbstractConfigProfileRelationship>',
        :'wwnn_pool' => :'FcpoolPoolRelationship'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'fc_ifs',
        :'profiles',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::VnicSanConnectivityPolicyAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::VnicSanConnectivityPolicyAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'vnic.SanConnectivityPolicy'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'vnic.SanConnectivityPolicy'
      end

      if attributes.key?(:'placement_mode')
        self.placement_mode = attributes[:'placement_mode']
      else
        self.placement_mode = 'custom'
      end

      if attributes.key?(:'static_wwnn_address')
        self.static_wwnn_address = attributes[:'static_wwnn_address']
      end

      if attributes.key?(:'target_platform')
        self.target_platform = attributes[:'target_platform']
      else
        self.target_platform = 'Standalone'
      end

      if attributes.key?(:'wwnn_address_type')
        self.wwnn_address_type = attributes[:'wwnn_address_type']
      else
        self.wwnn_address_type = 'POOL'
      end

      if attributes.key?(:'fc_ifs')
        if (value = attributes[:'fc_ifs']).is_a?(Array)
          self.fc_ifs = value
        end
      end

      if attributes.key?(:'organization')
        self.organization = attributes[:'organization']
      end

      if attributes.key?(:'profiles')
        if (value = attributes[:'profiles']).is_a?(Array)
          self.profiles = value
        end
      end

      if attributes.key?(:'wwnn_pool')
        self.wwnn_pool = attributes[:'wwnn_pool']
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

      pattern = Regexp.new(/^$|((^20|5[0-9a-fA-F]{1}):([0-9a-fA-F]{2}:){6}([0-9a-fA-F]{2}))/)
      if !@static_wwnn_address.nil? && @static_wwnn_address !~ pattern
        invalid_properties.push("invalid value for \"static_wwnn_address\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @class_id.nil?
      class_id_validator = EnumAttributeValidator.new('String', ["vnic.SanConnectivityPolicy"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["vnic.SanConnectivityPolicy"])
      return false unless object_type_validator.valid?(@object_type)
      placement_mode_validator = EnumAttributeValidator.new('String', ["custom", "auto"])
      return false unless placement_mode_validator.valid?(@placement_mode)
      return false if !@static_wwnn_address.nil? && @static_wwnn_address !~ Regexp.new(/^$|((^20|5[0-9a-fA-F]{1}):([0-9a-fA-F]{2}:){6}([0-9a-fA-F]{2}))/)
      target_platform_validator = EnumAttributeValidator.new('String', ["Standalone", "FIAttached"])
      return false unless target_platform_validator.valid?(@target_platform)
      wwnn_address_type_validator = EnumAttributeValidator.new('String', ["POOL", "STATIC"])
      return false unless wwnn_address_type_validator.valid?(@wwnn_address_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["vnic.SanConnectivityPolicy"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["vnic.SanConnectivityPolicy"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] placement_mode Object to be assigned
    def placement_mode=(placement_mode)
      validator = EnumAttributeValidator.new('String', ["custom", "auto"])
      unless validator.valid?(placement_mode)
        fail ArgumentError, "invalid value for \"placement_mode\", must be one of #{validator.allowable_values}."
      end
      @placement_mode = placement_mode
    end

    # Custom attribute writer method with validation
    # @param [Object] static_wwnn_address Value to be assigned
    def static_wwnn_address=(static_wwnn_address)
      pattern = Regexp.new(/^$|((^20|5[0-9a-fA-F]{1}):([0-9a-fA-F]{2}:){6}([0-9a-fA-F]{2}))/)
      if !static_wwnn_address.nil? && static_wwnn_address !~ pattern
        fail ArgumentError, "invalid value for \"static_wwnn_address\", must conform to the pattern #{pattern}."
      end

      @static_wwnn_address = static_wwnn_address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] target_platform Object to be assigned
    def target_platform=(target_platform)
      validator = EnumAttributeValidator.new('String', ["Standalone", "FIAttached"])
      unless validator.valid?(target_platform)
        fail ArgumentError, "invalid value for \"target_platform\", must be one of #{validator.allowable_values}."
      end
      @target_platform = target_platform
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wwnn_address_type Object to be assigned
    def wwnn_address_type=(wwnn_address_type)
      validator = EnumAttributeValidator.new('String', ["POOL", "STATIC"])
      unless validator.valid?(wwnn_address_type)
        fail ArgumentError, "invalid value for \"wwnn_address_type\", must be one of #{validator.allowable_values}."
      end
      @wwnn_address_type = wwnn_address_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          placement_mode == o.placement_mode &&
          static_wwnn_address == o.static_wwnn_address &&
          target_platform == o.target_platform &&
          wwnn_address_type == o.wwnn_address_type &&
          fc_ifs == o.fc_ifs &&
          organization == o.organization &&
          profiles == o.profiles &&
          wwnn_pool == o.wwnn_pool
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, placement_mode, static_wwnn_address, target_platform, wwnn_address_type, fc_ifs, organization, profiles, wwnn_pool].hash
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
