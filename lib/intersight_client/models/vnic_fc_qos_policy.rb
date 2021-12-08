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
  # A Fibre Channel Quality of Service (QoS) policy assigns a system class to the outgoing traffic for a vHBA. This system class determines the quality of service for the outgoing traffic. For certain adapters additional controls can also be specified like burst and rate on the outgoing traffic.
  class VnicFcQosPolicy < PolicyAbstractPolicy
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # The burst traffic, in bytes, allowed on the vHBA.
    attr_accessor :burst

    # Class of Service to be associated to the traffic on the virtual interface.
    attr_accessor :cos

    # The maximum size of the Fibre Channel frame payload bytes that the virtual interface supports.
    attr_accessor :max_data_field_size

    # The priortity matching the System QoS specified in the fabric profile. * `Best Effort` - QoS Priority for Best-effort traffic. * `FC` - QoS Priority for FC traffic. * `Platinum` - QoS Priority for Platinum traffic. * `Gold` - QoS Priority for Gold traffic. * `Silver` - QoS Priority for Silver traffic. * `Bronze` - QoS Priority for Bronze traffic.
    attr_accessor :priority

    # The value in Mbps to use for limiting the data rate on the virtual interface. Setting this to zero will turn rate limiting off.
    attr_accessor :rate_limit

    attr_accessor :organization

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
        :'burst' => :'Burst',
        :'cos' => :'Cos',
        :'max_data_field_size' => :'MaxDataFieldSize',
        :'priority' => :'Priority',
        :'rate_limit' => :'RateLimit',
        :'organization' => :'Organization'
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
        :'burst' => :'Integer',
        :'cos' => :'Integer',
        :'max_data_field_size' => :'Integer',
        :'priority' => :'String',
        :'rate_limit' => :'Integer',
        :'organization' => :'OrganizationOrganizationRelationship'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'PolicyAbstractPolicy',
      :'VnicFcQosPolicyAllOf'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::VnicFcQosPolicy` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::VnicFcQosPolicy`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'vnic.FcQosPolicy'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'vnic.FcQosPolicy'
      end

      if attributes.key?(:'burst')
        self.burst = attributes[:'burst']
      else
        self.burst = 10240
      end

      if attributes.key?(:'cos')
        self.cos = attributes[:'cos']
      else
        self.cos = 3
      end

      if attributes.key?(:'max_data_field_size')
        self.max_data_field_size = attributes[:'max_data_field_size']
      else
        self.max_data_field_size = 2112
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      else
        self.priority = 'Best Effort'
      end

      if attributes.key?(:'rate_limit')
        self.rate_limit = attributes[:'rate_limit']
      else
        self.rate_limit = 0
      end

      if attributes.key?(:'organization')
        self.organization = attributes[:'organization']
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

      if !@burst.nil? && @burst > 1000000
        invalid_properties.push('invalid value for "burst", must be smaller than or equal to 1000000.')
      end

      if !@burst.nil? && @burst < 1
        invalid_properties.push('invalid value for "burst", must be greater than or equal to 1.')
      end

      if !@cos.nil? && @cos > 6
        invalid_properties.push('invalid value for "cos", must be smaller than or equal to 6.')
      end

      if !@cos.nil? && @cos < 0
        invalid_properties.push('invalid value for "cos", must be greater than or equal to 0.')
      end

      if !@max_data_field_size.nil? && @max_data_field_size > 2112
        invalid_properties.push('invalid value for "max_data_field_size", must be smaller than or equal to 2112.')
      end

      if !@max_data_field_size.nil? && @max_data_field_size < 256
        invalid_properties.push('invalid value for "max_data_field_size", must be greater than or equal to 256.')
      end

      if !@rate_limit.nil? && @rate_limit > 100000
        invalid_properties.push('invalid value for "rate_limit", must be smaller than or equal to 100000.')
      end

      if !@rate_limit.nil? && @rate_limit < 0
        invalid_properties.push('invalid value for "rate_limit", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @class_id.nil?
      class_id_validator = EnumAttributeValidator.new('String', ["vnic.FcQosPolicy"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["vnic.FcQosPolicy"])
      return false unless object_type_validator.valid?(@object_type)
      return false if !@burst.nil? && @burst > 1000000
      return false if !@burst.nil? && @burst < 1
      return false if !@cos.nil? && @cos > 6
      return false if !@cos.nil? && @cos < 0
      return false if !@max_data_field_size.nil? && @max_data_field_size > 2112
      return false if !@max_data_field_size.nil? && @max_data_field_size < 256
      priority_validator = EnumAttributeValidator.new('String', ["Best Effort", "FC", "Platinum", "Gold", "Silver", "Bronze"])
      return false unless priority_validator.valid?(@priority)
      return false if !@rate_limit.nil? && @rate_limit > 100000
      return false if !@rate_limit.nil? && @rate_limit < 0
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["vnic.FcQosPolicy"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["vnic.FcQosPolicy"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method with validation
    # @param [Object] burst Value to be assigned
    def burst=(burst)
      if !burst.nil? && burst > 1000000
        fail ArgumentError, 'invalid value for "burst", must be smaller than or equal to 1000000.'
      end

      if !burst.nil? && burst < 1
        fail ArgumentError, 'invalid value for "burst", must be greater than or equal to 1.'
      end

      @burst = burst
    end

    # Custom attribute writer method with validation
    # @param [Object] cos Value to be assigned
    def cos=(cos)
      if !cos.nil? && cos > 6
        fail ArgumentError, 'invalid value for "cos", must be smaller than or equal to 6.'
      end

      if !cos.nil? && cos < 0
        fail ArgumentError, 'invalid value for "cos", must be greater than or equal to 0.'
      end

      @cos = cos
    end

    # Custom attribute writer method with validation
    # @param [Object] max_data_field_size Value to be assigned
    def max_data_field_size=(max_data_field_size)
      if !max_data_field_size.nil? && max_data_field_size > 2112
        fail ArgumentError, 'invalid value for "max_data_field_size", must be smaller than or equal to 2112.'
      end

      if !max_data_field_size.nil? && max_data_field_size < 256
        fail ArgumentError, 'invalid value for "max_data_field_size", must be greater than or equal to 256.'
      end

      @max_data_field_size = max_data_field_size
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] priority Object to be assigned
    def priority=(priority)
      validator = EnumAttributeValidator.new('String', ["Best Effort", "FC", "Platinum", "Gold", "Silver", "Bronze"])
      unless validator.valid?(priority)
        fail ArgumentError, "invalid value for \"priority\", must be one of #{validator.allowable_values}."
      end
      @priority = priority
    end

    # Custom attribute writer method with validation
    # @param [Object] rate_limit Value to be assigned
    def rate_limit=(rate_limit)
      if !rate_limit.nil? && rate_limit > 100000
        fail ArgumentError, 'invalid value for "rate_limit", must be smaller than or equal to 100000.'
      end

      if !rate_limit.nil? && rate_limit < 0
        fail ArgumentError, 'invalid value for "rate_limit", must be greater than or equal to 0.'
      end

      @rate_limit = rate_limit
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          burst == o.burst &&
          cos == o.cos &&
          max_data_field_size == o.max_data_field_size &&
          priority == o.priority &&
          rate_limit == o.rate_limit &&
          organization == o.organization && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, burst, cos, max_data_field_size, priority, rate_limit, organization].hash
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
