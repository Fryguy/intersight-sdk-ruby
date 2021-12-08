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
  # A representation of the data health status and ability of the cluster to tolerate failures.
  class HyperflexHxResiliencyInfoDt < MoBaseComplexType
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # The number of copies of data replicated by the cluster. * `ONE_COPY` - The HyperFlex cluster does not replicate data. * `TWO_COPIES` - The HyperFlex cluster keeps 2 copies of data. * `THREE_COPIES` - The HyperFlex cluster keeps 3 copies of data. * `FOUR_COPIES` - The HyperFlex cluster keeps 4 copies of data. * `SIX_COPIES` - The HyperFlex cluster keeps 6 copies of data.
    attr_accessor :data_replication_factor

    # The number of persistent device disruptions the HyperFlex storage cluster can handle at this point in time.
    attr_accessor :hdd_failures_tolerable

    attr_accessor :messages

    # The number of node disruptions the HyperFlex storage cluster can handle at this point in time.
    attr_accessor :node_failures_tolerable

    # The state of the storage cluster's compliance with the cluster access policy. * `UNKNOWN` - The HyperFlex cluster's compliance with the data replication policy could not be determined. * `COMPLIANT` - The HyperFlex cluster is compliant with the data replication policy and data is replicated to the configured replication factor. * `NON_COMPLIANT` - The HyperFlex cluster is not compliant with the data replication policy because some data is not replicated.
    attr_accessor :policy_compliance

    # The resiliency state of the storage platform. The resiliency state is the storage cluster's current ability to maintain data. * `UNKNOWN` - The resiliency status of the HyperFlex cluster cannot be determined, or the cluster is transitioning into ONLINE state. * `HEALTHY` - The HyperFlex cluster is healthy. The cluster is able to perform IO operations and data is available. * `WARNING` - The HyperFlex cluster or data availability is adversely affected. This can happen if there are node or storage device failures beyond the tolerable failure threshold. * `OFFLINE` - The HyperFlex cluster is offline and not performing IO operations. * `CRITICAL` - The HyperFlex cluster has severe faults that affect cluster and data availability.
    attr_accessor :resiliency_state

    # The number of cache device disruptions the HyperFlex storage cluster can handle at this point in time.
    attr_accessor :ssd_failures_tolerable

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
        :'data_replication_factor' => :'DataReplicationFactor',
        :'hdd_failures_tolerable' => :'HddFailuresTolerable',
        :'messages' => :'Messages',
        :'node_failures_tolerable' => :'NodeFailuresTolerable',
        :'policy_compliance' => :'PolicyCompliance',
        :'resiliency_state' => :'ResiliencyState',
        :'ssd_failures_tolerable' => :'SsdFailuresTolerable'
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
        :'data_replication_factor' => :'String',
        :'hdd_failures_tolerable' => :'Integer',
        :'messages' => :'Array<String>',
        :'node_failures_tolerable' => :'Integer',
        :'policy_compliance' => :'String',
        :'resiliency_state' => :'String',
        :'ssd_failures_tolerable' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'messages',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'HyperflexHxResiliencyInfoDtAllOf',
      :'MoBaseComplexType'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::HyperflexHxResiliencyInfoDt` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::HyperflexHxResiliencyInfoDt`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'hyperflex.HxResiliencyInfoDt'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'hyperflex.HxResiliencyInfoDt'
      end

      if attributes.key?(:'data_replication_factor')
        self.data_replication_factor = attributes[:'data_replication_factor']
      else
        self.data_replication_factor = 'ONE_COPY'
      end

      if attributes.key?(:'hdd_failures_tolerable')
        self.hdd_failures_tolerable = attributes[:'hdd_failures_tolerable']
      end

      if attributes.key?(:'messages')
        if (value = attributes[:'messages']).is_a?(Array)
          self.messages = value
        end
      end

      if attributes.key?(:'node_failures_tolerable')
        self.node_failures_tolerable = attributes[:'node_failures_tolerable']
      end

      if attributes.key?(:'policy_compliance')
        self.policy_compliance = attributes[:'policy_compliance']
      else
        self.policy_compliance = 'UNKNOWN'
      end

      if attributes.key?(:'resiliency_state')
        self.resiliency_state = attributes[:'resiliency_state']
      else
        self.resiliency_state = 'UNKNOWN'
      end

      if attributes.key?(:'ssd_failures_tolerable')
        self.ssd_failures_tolerable = attributes[:'ssd_failures_tolerable']
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
      class_id_validator = EnumAttributeValidator.new('String', ["hyperflex.HxResiliencyInfoDt"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["hyperflex.HxResiliencyInfoDt"])
      return false unless object_type_validator.valid?(@object_type)
      data_replication_factor_validator = EnumAttributeValidator.new('String', ["ONE_COPY", "TWO_COPIES", "THREE_COPIES", "FOUR_COPIES", "SIX_COPIES"])
      return false unless data_replication_factor_validator.valid?(@data_replication_factor)
      policy_compliance_validator = EnumAttributeValidator.new('String', ["UNKNOWN", "COMPLIANT", "NON_COMPLIANT"])
      return false unless policy_compliance_validator.valid?(@policy_compliance)
      resiliency_state_validator = EnumAttributeValidator.new('String', ["UNKNOWN", "HEALTHY", "WARNING", "OFFLINE", "CRITICAL"])
      return false unless resiliency_state_validator.valid?(@resiliency_state)
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["hyperflex.HxResiliencyInfoDt"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["hyperflex.HxResiliencyInfoDt"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data_replication_factor Object to be assigned
    def data_replication_factor=(data_replication_factor)
      validator = EnumAttributeValidator.new('String', ["ONE_COPY", "TWO_COPIES", "THREE_COPIES", "FOUR_COPIES", "SIX_COPIES"])
      unless validator.valid?(data_replication_factor)
        fail ArgumentError, "invalid value for \"data_replication_factor\", must be one of #{validator.allowable_values}."
      end
      @data_replication_factor = data_replication_factor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] policy_compliance Object to be assigned
    def policy_compliance=(policy_compliance)
      validator = EnumAttributeValidator.new('String', ["UNKNOWN", "COMPLIANT", "NON_COMPLIANT"])
      unless validator.valid?(policy_compliance)
        fail ArgumentError, "invalid value for \"policy_compliance\", must be one of #{validator.allowable_values}."
      end
      @policy_compliance = policy_compliance
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resiliency_state Object to be assigned
    def resiliency_state=(resiliency_state)
      validator = EnumAttributeValidator.new('String', ["UNKNOWN", "HEALTHY", "WARNING", "OFFLINE", "CRITICAL"])
      unless validator.valid?(resiliency_state)
        fail ArgumentError, "invalid value for \"resiliency_state\", must be one of #{validator.allowable_values}."
      end
      @resiliency_state = resiliency_state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          data_replication_factor == o.data_replication_factor &&
          hdd_failures_tolerable == o.hdd_failures_tolerable &&
          messages == o.messages &&
          node_failures_tolerable == o.node_failures_tolerable &&
          policy_compliance == o.policy_compliance &&
          resiliency_state == o.resiliency_state &&
          ssd_failures_tolerable == o.ssd_failures_tolerable && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, data_replication_factor, hdd_failures_tolerable, messages, node_failures_tolerable, policy_compliance, resiliency_state, ssd_failures_tolerable].hash
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
