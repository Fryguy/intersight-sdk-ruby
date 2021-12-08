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
  # Definition of the list of properties defined in 'firmware.ComponentMeta', excluding properties defined in parent classes.
  class FirmwareComponentMetaAllOf
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # The name of the component in the compressed HSU bundle.
    attr_accessor :component_label

    # The type of component image within the distributable. * `ALL` - This represents all the components. * `ALL,HDD` - This represents all the components plus the HDDs. * `Drive-U.2` - This represents the U.2 drives that are SFF/LFF drives (mostly all the drives will fall under this category). * `Storage` - This represents the storage controller components. * `None` - This represents none of the components. * `NXOS` - This represents NXOS components. * `IOM` - This represents IOM components. * `PSU` - This represents PSU components. * `CIMC` - This represents CIMC components. * `BIOS` - This represents BIOS components. * `PCIE` - This represents PCIE components. * `Drive` - This represents Drive components. * `DIMM` - This represents DIMM components. * `BoardController` - This represents Board Controller components. * `StorageController` - This represents Storage Controller components. * `HBA` - This represents HBA components. * `GPU` - This represents GPU components. * `SasExpander` - This represents SasExpander components. * `MSwitch` - This represents mSwitch components. * `CMC` - This represents CMC components.
    attr_accessor :component_type

    # This shows the description of component image within the distributable.
    attr_accessor :description

    # The type of disruption on each component. For example, host reboot, automatic power cycle, and manual power cycle. * `None` - Indicates that the component did not receive a disruption request. * `HostReboot` - Indicates that the component received a host reboot request. * `EndpointReboot` - Indicates that the component received an end point reboot request. * `ManualPowerCycle` - Indicates that the component received a manual power cycle request. * `AutomaticPowerCycle` - Indicates that the component received an automatic power cycle request.
    attr_accessor :disruption

    # This shows the path of component image within the distributable.
    attr_accessor :image_path

    # If set, the component can be updated through out-of-band management, else, is updated through host service utility boot.
    attr_accessor :is_oob_supported

    # The model of the component image in the distributable.
    attr_accessor :model

    attr_accessor :oob_manageability

    # The image version of components packaged in the distributable.
    attr_accessor :packed_version

    # The redfish target for each component.
    attr_accessor :redfish_url

    # The version of component image in the distributable.
    attr_accessor :vendor

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
        :'component_label' => :'ComponentLabel',
        :'component_type' => :'ComponentType',
        :'description' => :'Description',
        :'disruption' => :'Disruption',
        :'image_path' => :'ImagePath',
        :'is_oob_supported' => :'IsOobSupported',
        :'model' => :'Model',
        :'oob_manageability' => :'OobManageability',
        :'packed_version' => :'PackedVersion',
        :'redfish_url' => :'RedfishUrl',
        :'vendor' => :'Vendor'
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
        :'component_label' => :'String',
        :'component_type' => :'String',
        :'description' => :'String',
        :'disruption' => :'String',
        :'image_path' => :'String',
        :'is_oob_supported' => :'Boolean',
        :'model' => :'String',
        :'oob_manageability' => :'Array<String>',
        :'packed_version' => :'String',
        :'redfish_url' => :'String',
        :'vendor' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'oob_manageability',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::FirmwareComponentMetaAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::FirmwareComponentMetaAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'firmware.ComponentMeta'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'firmware.ComponentMeta'
      end

      if attributes.key?(:'component_label')
        self.component_label = attributes[:'component_label']
      end

      if attributes.key?(:'component_type')
        self.component_type = attributes[:'component_type']
      else
        self.component_type = 'ALL'
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'disruption')
        self.disruption = attributes[:'disruption']
      else
        self.disruption = 'None'
      end

      if attributes.key?(:'image_path')
        self.image_path = attributes[:'image_path']
      end

      if attributes.key?(:'is_oob_supported')
        self.is_oob_supported = attributes[:'is_oob_supported']
      end

      if attributes.key?(:'model')
        self.model = attributes[:'model']
      end

      if attributes.key?(:'oob_manageability')
        if (value = attributes[:'oob_manageability']).is_a?(Array)
          self.oob_manageability = value
        end
      end

      if attributes.key?(:'packed_version')
        self.packed_version = attributes[:'packed_version']
      end

      if attributes.key?(:'redfish_url')
        self.redfish_url = attributes[:'redfish_url']
      end

      if attributes.key?(:'vendor')
        self.vendor = attributes[:'vendor']
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
      class_id_validator = EnumAttributeValidator.new('String', ["firmware.ComponentMeta"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["firmware.ComponentMeta"])
      return false unless object_type_validator.valid?(@object_type)
      component_type_validator = EnumAttributeValidator.new('String', ["ALL", "ALL,HDD", "Drive-U.2", "Storage", "None", "NXOS", "IOM", "PSU", "CIMC", "BIOS", "PCIE", "Drive", "DIMM", "BoardController", "StorageController", "HBA", "GPU", "SasExpander", "MSwitch", "CMC"])
      return false unless component_type_validator.valid?(@component_type)
      disruption_validator = EnumAttributeValidator.new('String', ["None", "HostReboot", "EndpointReboot", "ManualPowerCycle", "AutomaticPowerCycle"])
      return false unless disruption_validator.valid?(@disruption)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["firmware.ComponentMeta"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["firmware.ComponentMeta"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] component_type Object to be assigned
    def component_type=(component_type)
      validator = EnumAttributeValidator.new('String', ["ALL", "ALL,HDD", "Drive-U.2", "Storage", "None", "NXOS", "IOM", "PSU", "CIMC", "BIOS", "PCIE", "Drive", "DIMM", "BoardController", "StorageController", "HBA", "GPU", "SasExpander", "MSwitch", "CMC"])
      unless validator.valid?(component_type)
        fail ArgumentError, "invalid value for \"component_type\", must be one of #{validator.allowable_values}."
      end
      @component_type = component_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] disruption Object to be assigned
    def disruption=(disruption)
      validator = EnumAttributeValidator.new('String', ["None", "HostReboot", "EndpointReboot", "ManualPowerCycle", "AutomaticPowerCycle"])
      unless validator.valid?(disruption)
        fail ArgumentError, "invalid value for \"disruption\", must be one of #{validator.allowable_values}."
      end
      @disruption = disruption
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          component_label == o.component_label &&
          component_type == o.component_type &&
          description == o.description &&
          disruption == o.disruption &&
          image_path == o.image_path &&
          is_oob_supported == o.is_oob_supported &&
          model == o.model &&
          oob_manageability == o.oob_manageability &&
          packed_version == o.packed_version &&
          redfish_url == o.redfish_url &&
          vendor == o.vendor
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, component_label, component_type, description, disruption, image_path, is_oob_supported, model, oob_manageability, packed_version, redfish_url, vendor].hash
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
