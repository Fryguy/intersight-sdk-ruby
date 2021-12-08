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
  # Definition of the list of properties defined in 'storage.NetAppIpInterface', excluding properties defined in parent classes.
  class StorageNetAppIpInterfaceAllOf
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # IP interface is enabled or not.
    attr_accessor :enabled

    # Name of home node of IP interface.
    attr_accessor :home_node

    # Name of home port of IP interface.
    attr_accessor :home_port

    # The IP address of interface.
    attr_accessor :ip_address

    # IP address family of interface. * `IPv4` - IP address family type is IPv4. * `IPv6` - IP address family type is IP6.
    attr_accessor :ip_family

    # The name of the IP interface.
    attr_accessor :name

    # The netmask of the interface.
    attr_accessor :netmask

    # Service policy name of IP interface.
    attr_accessor :service_policy_name

    # Service policy UUID of IP interface.
    attr_accessor :service_policy_uuid

    attr_accessor :services

    # The state of the IP interface. * `down` - An inactive port is listed as Down. * `up` - An active port is listed as Up. * `present` - An active port is listed as present.
    attr_accessor :state

    # Uuid of  NetApp IP Interface.
    attr_accessor :uuid

    attr_accessor :array_controller

    attr_accessor :net_app_ethernet_port

    attr_accessor :tenant

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
        :'enabled' => :'Enabled',
        :'home_node' => :'HomeNode',
        :'home_port' => :'HomePort',
        :'ip_address' => :'IpAddress',
        :'ip_family' => :'IpFamily',
        :'name' => :'Name',
        :'netmask' => :'Netmask',
        :'service_policy_name' => :'ServicePolicyName',
        :'service_policy_uuid' => :'ServicePolicyUuid',
        :'services' => :'Services',
        :'state' => :'State',
        :'uuid' => :'Uuid',
        :'array_controller' => :'ArrayController',
        :'net_app_ethernet_port' => :'NetAppEthernetPort',
        :'tenant' => :'Tenant'
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
        :'enabled' => :'String',
        :'home_node' => :'String',
        :'home_port' => :'String',
        :'ip_address' => :'String',
        :'ip_family' => :'String',
        :'name' => :'String',
        :'netmask' => :'String',
        :'service_policy_name' => :'String',
        :'service_policy_uuid' => :'String',
        :'services' => :'Array<String>',
        :'state' => :'String',
        :'uuid' => :'String',
        :'array_controller' => :'StorageNetAppNodeRelationship',
        :'net_app_ethernet_port' => :'StorageNetAppEthernetPortRelationship',
        :'tenant' => :'StorageNetAppStorageVmRelationship'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'services',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::StorageNetAppIpInterfaceAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::StorageNetAppIpInterfaceAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'storage.NetAppIpInterface'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'storage.NetAppIpInterface'
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'home_node')
        self.home_node = attributes[:'home_node']
      end

      if attributes.key?(:'home_port')
        self.home_port = attributes[:'home_port']
      end

      if attributes.key?(:'ip_address')
        self.ip_address = attributes[:'ip_address']
      end

      if attributes.key?(:'ip_family')
        self.ip_family = attributes[:'ip_family']
      else
        self.ip_family = 'IPv4'
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'netmask')
        self.netmask = attributes[:'netmask']
      end

      if attributes.key?(:'service_policy_name')
        self.service_policy_name = attributes[:'service_policy_name']
      end

      if attributes.key?(:'service_policy_uuid')
        self.service_policy_uuid = attributes[:'service_policy_uuid']
      end

      if attributes.key?(:'services')
        if (value = attributes[:'services']).is_a?(Array)
          self.services = value
        end
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      else
        self.state = 'down'
      end

      if attributes.key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end

      if attributes.key?(:'array_controller')
        self.array_controller = attributes[:'array_controller']
      end

      if attributes.key?(:'net_app_ethernet_port')
        self.net_app_ethernet_port = attributes[:'net_app_ethernet_port']
      end

      if attributes.key?(:'tenant')
        self.tenant = attributes[:'tenant']
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

      pattern = Regexp.new(/^$|^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/)
      if !@service_policy_uuid.nil? && @service_policy_uuid !~ pattern
        invalid_properties.push("invalid value for \"service_policy_uuid\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^$|^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/)
      if !@uuid.nil? && @uuid !~ pattern
        invalid_properties.push("invalid value for \"uuid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @class_id.nil?
      class_id_validator = EnumAttributeValidator.new('String', ["storage.NetAppIpInterface"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["storage.NetAppIpInterface"])
      return false unless object_type_validator.valid?(@object_type)
      ip_family_validator = EnumAttributeValidator.new('String', ["IPv4", "IPv6"])
      return false unless ip_family_validator.valid?(@ip_family)
      return false if !@service_policy_uuid.nil? && @service_policy_uuid !~ Regexp.new(/^$|^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/)
      state_validator = EnumAttributeValidator.new('String', ["down", "up", "present"])
      return false unless state_validator.valid?(@state)
      return false if !@uuid.nil? && @uuid !~ Regexp.new(/^$|^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["storage.NetAppIpInterface"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["storage.NetAppIpInterface"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip_family Object to be assigned
    def ip_family=(ip_family)
      validator = EnumAttributeValidator.new('String', ["IPv4", "IPv6"])
      unless validator.valid?(ip_family)
        fail ArgumentError, "invalid value for \"ip_family\", must be one of #{validator.allowable_values}."
      end
      @ip_family = ip_family
    end

    # Custom attribute writer method with validation
    # @param [Object] service_policy_uuid Value to be assigned
    def service_policy_uuid=(service_policy_uuid)
      pattern = Regexp.new(/^$|^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/)
      if !service_policy_uuid.nil? && service_policy_uuid !~ pattern
        fail ArgumentError, "invalid value for \"service_policy_uuid\", must conform to the pattern #{pattern}."
      end

      @service_policy_uuid = service_policy_uuid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["down", "up", "present"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for \"state\", must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Custom attribute writer method with validation
    # @param [Object] uuid Value to be assigned
    def uuid=(uuid)
      pattern = Regexp.new(/^$|^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/)
      if !uuid.nil? && uuid !~ pattern
        fail ArgumentError, "invalid value for \"uuid\", must conform to the pattern #{pattern}."
      end

      @uuid = uuid
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          enabled == o.enabled &&
          home_node == o.home_node &&
          home_port == o.home_port &&
          ip_address == o.ip_address &&
          ip_family == o.ip_family &&
          name == o.name &&
          netmask == o.netmask &&
          service_policy_name == o.service_policy_name &&
          service_policy_uuid == o.service_policy_uuid &&
          services == o.services &&
          state == o.state &&
          uuid == o.uuid &&
          array_controller == o.array_controller &&
          net_app_ethernet_port == o.net_app_ethernet_port &&
          tenant == o.tenant
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, enabled, home_node, home_port, ip_address, ip_family, name, netmask, service_policy_name, service_policy_uuid, services, state, uuid, array_controller, net_app_ethernet_port, tenant].hash
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
