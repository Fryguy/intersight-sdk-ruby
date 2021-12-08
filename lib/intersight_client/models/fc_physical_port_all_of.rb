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
  # Definition of the list of properties defined in 'fc.PhysicalPort', excluding properties defined in parent classes.
  class FcPhysicalPortAllOf
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # Administrator configured Speed applied on the port.
    attr_accessor :admin_speed

    # Administratively configured state (enabled/disabled) for this port.
    attr_accessor :admin_state

    # Buffer to Buffer credits of FC port.
    attr_accessor :b2b_credit

    # Maximum Speed with which the port operates.
    attr_accessor :max_speed

    # Mode information N_proxy, F or E associated to the Fibre Channel port.
    attr_accessor :mode

    # Operational Speed with which the port operates.
    attr_accessor :oper_speed

    # PeerDn for fibre channel physical port.
    attr_accessor :peer_dn

    # Port channel id of FC port channel created on FI switch.
    attr_accessor :port_channel_id

    # Transceiver type of a Fibre Channel port.
    attr_accessor :transceiver_type

    # Virtual San that is associated to the port.
    attr_accessor :vsan

    # World Wide Name of a Fibre Channel port.
    attr_accessor :wwn

    attr_accessor :inventory_device_info

    attr_accessor :port_group

    attr_accessor :port_sub_group

    attr_accessor :registered_device

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
        :'admin_speed' => :'AdminSpeed',
        :'admin_state' => :'AdminState',
        :'b2b_credit' => :'B2bCredit',
        :'max_speed' => :'MaxSpeed',
        :'mode' => :'Mode',
        :'oper_speed' => :'OperSpeed',
        :'peer_dn' => :'PeerDn',
        :'port_channel_id' => :'PortChannelId',
        :'transceiver_type' => :'TransceiverType',
        :'vsan' => :'Vsan',
        :'wwn' => :'Wwn',
        :'inventory_device_info' => :'InventoryDeviceInfo',
        :'port_group' => :'PortGroup',
        :'port_sub_group' => :'PortSubGroup',
        :'registered_device' => :'RegisteredDevice'
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
        :'admin_speed' => :'String',
        :'admin_state' => :'String',
        :'b2b_credit' => :'Integer',
        :'max_speed' => :'String',
        :'mode' => :'String',
        :'oper_speed' => :'String',
        :'peer_dn' => :'String',
        :'port_channel_id' => :'Integer',
        :'transceiver_type' => :'String',
        :'vsan' => :'Integer',
        :'wwn' => :'String',
        :'inventory_device_info' => :'InventoryDeviceInfoRelationship',
        :'port_group' => :'PortGroupRelationship',
        :'port_sub_group' => :'PortSubGroupRelationship',
        :'registered_device' => :'AssetDeviceRegistrationRelationship'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::FcPhysicalPortAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::FcPhysicalPortAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'fc.PhysicalPort'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'fc.PhysicalPort'
      end

      if attributes.key?(:'admin_speed')
        self.admin_speed = attributes[:'admin_speed']
      end

      if attributes.key?(:'admin_state')
        self.admin_state = attributes[:'admin_state']
      end

      if attributes.key?(:'b2b_credit')
        self.b2b_credit = attributes[:'b2b_credit']
      end

      if attributes.key?(:'max_speed')
        self.max_speed = attributes[:'max_speed']
      end

      if attributes.key?(:'mode')
        self.mode = attributes[:'mode']
      end

      if attributes.key?(:'oper_speed')
        self.oper_speed = attributes[:'oper_speed']
      end

      if attributes.key?(:'peer_dn')
        self.peer_dn = attributes[:'peer_dn']
      end

      if attributes.key?(:'port_channel_id')
        self.port_channel_id = attributes[:'port_channel_id']
      end

      if attributes.key?(:'transceiver_type')
        self.transceiver_type = attributes[:'transceiver_type']
      end

      if attributes.key?(:'vsan')
        self.vsan = attributes[:'vsan']
      end

      if attributes.key?(:'wwn')
        self.wwn = attributes[:'wwn']
      end

      if attributes.key?(:'inventory_device_info')
        self.inventory_device_info = attributes[:'inventory_device_info']
      end

      if attributes.key?(:'port_group')
        self.port_group = attributes[:'port_group']
      end

      if attributes.key?(:'port_sub_group')
        self.port_sub_group = attributes[:'port_sub_group']
      end

      if attributes.key?(:'registered_device')
        self.registered_device = attributes[:'registered_device']
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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @class_id.nil?
      class_id_validator = EnumAttributeValidator.new('String', ["fc.PhysicalPort"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["fc.PhysicalPort"])
      return false unless object_type_validator.valid?(@object_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["fc.PhysicalPort"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["fc.PhysicalPort"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          admin_speed == o.admin_speed &&
          admin_state == o.admin_state &&
          b2b_credit == o.b2b_credit &&
          max_speed == o.max_speed &&
          mode == o.mode &&
          oper_speed == o.oper_speed &&
          peer_dn == o.peer_dn &&
          port_channel_id == o.port_channel_id &&
          transceiver_type == o.transceiver_type &&
          vsan == o.vsan &&
          wwn == o.wwn &&
          inventory_device_info == o.inventory_device_info &&
          port_group == o.port_group &&
          port_sub_group == o.port_sub_group &&
          registered_device == o.registered_device
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, admin_speed, admin_state, b2b_credit, max_speed, mode, oper_speed, peer_dn, port_channel_id, transceiver_type, vsan, wwn, inventory_device_info, port_group, port_sub_group, registered_device].hash
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
