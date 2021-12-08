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
  # The teams can then either share the load of traffic between physical and virtual networks among some or all of its members, or provide passive failover in the event of a hardware failure or a network outage.
  class VirtualizationVmwareTeamingAndFailover < MoBaseComplexType
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    attr_accessor :active_adapters

    # By default, a failback policy is enabled on a NIC team. If a failed physical NIC returns online, the network component sets the NIC back to active by replacing the standby NIC that took over its slot.
    attr_accessor :failback

    # Determines how network traffic is distributed between the network adapters in a NIC team. * `loadbalanceIP` - Load balance based on IP hash. * `loadbalanceSrcmac` - Route based on source MAC hash. * `loadbalanceSrcid` - Route based on originating virtual port. * `failoverExplicit` - Use explicit failover order. * `loadbalanceSrcnic` - Route based on physical NIC load.
    attr_accessor :load_balancing

    # Name of the network component, example dvswitch, dvnetwork, vswitch or standard network.
    attr_accessor :name

    # Methods used by network component for failover detection. * `linkStatus` - This option detects failures such as removed cables and physical switch power failures. * `beaconProbing` - Sends out and listens for beacon probes on all NICs in the team, and uses this information, in addition to link status, to determine link failure. ESXi sends beacon packets every second.
    attr_accessor :network_failure_detection

    # Determines how network traffic is distributed between the network adapters in a NIC team.
    attr_accessor :notify_switches

    attr_accessor :standby_adapters

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
        :'active_adapters' => :'ActiveAdapters',
        :'failback' => :'Failback',
        :'load_balancing' => :'LoadBalancing',
        :'name' => :'Name',
        :'network_failure_detection' => :'NetworkFailureDetection',
        :'notify_switches' => :'NotifySwitches',
        :'standby_adapters' => :'StandbyAdapters'
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
        :'active_adapters' => :'Array<String>',
        :'failback' => :'Boolean',
        :'load_balancing' => :'String',
        :'name' => :'String',
        :'network_failure_detection' => :'String',
        :'notify_switches' => :'Boolean',
        :'standby_adapters' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'active_adapters',
        :'standby_adapters'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'MoBaseComplexType',
      :'VirtualizationVmwareTeamingAndFailoverAllOf'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::VirtualizationVmwareTeamingAndFailover` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::VirtualizationVmwareTeamingAndFailover`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'virtualization.VmwareTeamingAndFailover'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'virtualization.VmwareTeamingAndFailover'
      end

      if attributes.key?(:'active_adapters')
        if (value = attributes[:'active_adapters']).is_a?(Array)
          self.active_adapters = value
        end
      end

      if attributes.key?(:'failback')
        self.failback = attributes[:'failback']
      end

      if attributes.key?(:'load_balancing')
        self.load_balancing = attributes[:'load_balancing']
      else
        self.load_balancing = 'loadbalanceIP'
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'network_failure_detection')
        self.network_failure_detection = attributes[:'network_failure_detection']
      else
        self.network_failure_detection = 'linkStatus'
      end

      if attributes.key?(:'notify_switches')
        self.notify_switches = attributes[:'notify_switches']
      end

      if attributes.key?(:'standby_adapters')
        if (value = attributes[:'standby_adapters']).is_a?(Array)
          self.standby_adapters = value
        end
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
      class_id_validator = EnumAttributeValidator.new('String', ["virtualization.VmwareTeamingAndFailover"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["virtualization.VmwareTeamingAndFailover"])
      return false unless object_type_validator.valid?(@object_type)
      load_balancing_validator = EnumAttributeValidator.new('String', ["loadbalanceIP", "loadbalanceSrcmac", "loadbalanceSrcid", "failoverExplicit", "loadbalanceSrcnic"])
      return false unless load_balancing_validator.valid?(@load_balancing)
      network_failure_detection_validator = EnumAttributeValidator.new('String', ["linkStatus", "beaconProbing"])
      return false unless network_failure_detection_validator.valid?(@network_failure_detection)
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["virtualization.VmwareTeamingAndFailover"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["virtualization.VmwareTeamingAndFailover"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] load_balancing Object to be assigned
    def load_balancing=(load_balancing)
      validator = EnumAttributeValidator.new('String', ["loadbalanceIP", "loadbalanceSrcmac", "loadbalanceSrcid", "failoverExplicit", "loadbalanceSrcnic"])
      unless validator.valid?(load_balancing)
        fail ArgumentError, "invalid value for \"load_balancing\", must be one of #{validator.allowable_values}."
      end
      @load_balancing = load_balancing
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network_failure_detection Object to be assigned
    def network_failure_detection=(network_failure_detection)
      validator = EnumAttributeValidator.new('String', ["linkStatus", "beaconProbing"])
      unless validator.valid?(network_failure_detection)
        fail ArgumentError, "invalid value for \"network_failure_detection\", must be one of #{validator.allowable_values}."
      end
      @network_failure_detection = network_failure_detection
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          active_adapters == o.active_adapters &&
          failback == o.failback &&
          load_balancing == o.load_balancing &&
          name == o.name &&
          network_failure_detection == o.network_failure_detection &&
          notify_switches == o.notify_switches &&
          standby_adapters == o.standby_adapters && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, active_adapters, failback, load_balancing, name, network_failure_detection, notify_switches, standby_adapters].hash
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
