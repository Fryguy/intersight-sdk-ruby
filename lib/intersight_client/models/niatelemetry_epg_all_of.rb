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
  # Definition of the list of properties defined in 'niatelemetry.Epg', excluding properties defined in parent classes.
  class NiatelemetryEpgAllOf
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # Azure Pack NAT with ASA feature usage.
    attr_accessor :azure_pack_count

    # Dn value for the End Point Groups present.
    attr_accessor :dn

    # Number of  objects with delimiter value present in EPG Delimiter attribute.
    attr_accessor :epg_delimiter_count

    # Number of ports with FC path attribute of type FC.
    attr_accessor :fc_npv_count

    # Number of FCoE per End Point Group.
    attr_accessor :fcoe_count

    # Number of FvRsDomAtt objects per End Point Group with VMware configuration.
    attr_accessor :fv_rs_dom_att_count

    # Intra End Point Group Contract for Distributed Virtual Switch and BM feature usage.
    attr_accessor :intra_epg_dvs_bm_count

    # Intra EPG Isolation for Hyper-V, enabled if pcEnfPref attribute is set to enforced.
    attr_accessor :intra_epg_hyperv

    # Gets the state of End Point Groups with isAttrBasedEPg value as configured.
    attr_accessor :is_attr_based

    # Gets the state of End Point Groups where microsegmentation is present.
    attr_accessor :microsegmentation

    # Number of FvRsDomAtt objects per End Point Group with Microsoft configuration.
    attr_accessor :microsoft_useg_count

    # Name value for the End Point Groups present.
    attr_accessor :name

    # Number of objects with Simplified Service Graph Integration with Windows Azure Pack.
    attr_accessor :orchsl_dev_vip_cfg_count

    # Type of record DCNM / APIC / SE. This determines the type of platform where inventory was collected.
    attr_accessor :record_type

    # Version of record being pushed. This determines what was the API version for data available from the device.
    attr_accessor :record_version

    # The Site name represents an APIC cluster. Service Engine can onboard multiple APIC clusters / sites.
    attr_accessor :site_name

    # Logical Operators for attribute based microsegmentation in a hypervisor.
    attr_accessor :useg_hyperv_count

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
        :'azure_pack_count' => :'AzurePackCount',
        :'dn' => :'Dn',
        :'epg_delimiter_count' => :'EpgDelimiterCount',
        :'fc_npv_count' => :'FcNpvCount',
        :'fcoe_count' => :'FcoeCount',
        :'fv_rs_dom_att_count' => :'FvRsDomAttCount',
        :'intra_epg_dvs_bm_count' => :'IntraEpgDvsBmCount',
        :'intra_epg_hyperv' => :'IntraEpgHyperv',
        :'is_attr_based' => :'IsAttrBased',
        :'microsegmentation' => :'Microsegmentation',
        :'microsoft_useg_count' => :'MicrosoftUsegCount',
        :'name' => :'Name',
        :'orchsl_dev_vip_cfg_count' => :'OrchslDevVipCfgCount',
        :'record_type' => :'RecordType',
        :'record_version' => :'RecordVersion',
        :'site_name' => :'SiteName',
        :'useg_hyperv_count' => :'UsegHypervCount',
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
        :'azure_pack_count' => :'Integer',
        :'dn' => :'String',
        :'epg_delimiter_count' => :'Integer',
        :'fc_npv_count' => :'Integer',
        :'fcoe_count' => :'Integer',
        :'fv_rs_dom_att_count' => :'Integer',
        :'intra_epg_dvs_bm_count' => :'Integer',
        :'intra_epg_hyperv' => :'String',
        :'is_attr_based' => :'String',
        :'microsegmentation' => :'String',
        :'microsoft_useg_count' => :'Integer',
        :'name' => :'String',
        :'orchsl_dev_vip_cfg_count' => :'Integer',
        :'record_type' => :'String',
        :'record_version' => :'String',
        :'site_name' => :'String',
        :'useg_hyperv_count' => :'Integer',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::NiatelemetryEpgAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::NiatelemetryEpgAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'niatelemetry.Epg'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'niatelemetry.Epg'
      end

      if attributes.key?(:'azure_pack_count')
        self.azure_pack_count = attributes[:'azure_pack_count']
      end

      if attributes.key?(:'dn')
        self.dn = attributes[:'dn']
      end

      if attributes.key?(:'epg_delimiter_count')
        self.epg_delimiter_count = attributes[:'epg_delimiter_count']
      end

      if attributes.key?(:'fc_npv_count')
        self.fc_npv_count = attributes[:'fc_npv_count']
      end

      if attributes.key?(:'fcoe_count')
        self.fcoe_count = attributes[:'fcoe_count']
      end

      if attributes.key?(:'fv_rs_dom_att_count')
        self.fv_rs_dom_att_count = attributes[:'fv_rs_dom_att_count']
      end

      if attributes.key?(:'intra_epg_dvs_bm_count')
        self.intra_epg_dvs_bm_count = attributes[:'intra_epg_dvs_bm_count']
      end

      if attributes.key?(:'intra_epg_hyperv')
        self.intra_epg_hyperv = attributes[:'intra_epg_hyperv']
      end

      if attributes.key?(:'is_attr_based')
        self.is_attr_based = attributes[:'is_attr_based']
      end

      if attributes.key?(:'microsegmentation')
        self.microsegmentation = attributes[:'microsegmentation']
      end

      if attributes.key?(:'microsoft_useg_count')
        self.microsoft_useg_count = attributes[:'microsoft_useg_count']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'orchsl_dev_vip_cfg_count')
        self.orchsl_dev_vip_cfg_count = attributes[:'orchsl_dev_vip_cfg_count']
      end

      if attributes.key?(:'record_type')
        self.record_type = attributes[:'record_type']
      end

      if attributes.key?(:'record_version')
        self.record_version = attributes[:'record_version']
      end

      if attributes.key?(:'site_name')
        self.site_name = attributes[:'site_name']
      end

      if attributes.key?(:'useg_hyperv_count')
        self.useg_hyperv_count = attributes[:'useg_hyperv_count']
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
      class_id_validator = EnumAttributeValidator.new('String', ["niatelemetry.Epg"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["niatelemetry.Epg"])
      return false unless object_type_validator.valid?(@object_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["niatelemetry.Epg"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["niatelemetry.Epg"])
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
          azure_pack_count == o.azure_pack_count &&
          dn == o.dn &&
          epg_delimiter_count == o.epg_delimiter_count &&
          fc_npv_count == o.fc_npv_count &&
          fcoe_count == o.fcoe_count &&
          fv_rs_dom_att_count == o.fv_rs_dom_att_count &&
          intra_epg_dvs_bm_count == o.intra_epg_dvs_bm_count &&
          intra_epg_hyperv == o.intra_epg_hyperv &&
          is_attr_based == o.is_attr_based &&
          microsegmentation == o.microsegmentation &&
          microsoft_useg_count == o.microsoft_useg_count &&
          name == o.name &&
          orchsl_dev_vip_cfg_count == o.orchsl_dev_vip_cfg_count &&
          record_type == o.record_type &&
          record_version == o.record_version &&
          site_name == o.site_name &&
          useg_hyperv_count == o.useg_hyperv_count &&
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
      [class_id, object_type, azure_pack_count, dn, epg_delimiter_count, fc_npv_count, fcoe_count, fv_rs_dom_att_count, intra_epg_dvs_bm_count, intra_epg_hyperv, is_attr_based, microsegmentation, microsoft_useg_count, name, orchsl_dev_vip_cfg_count, record_type, record_version, site_name, useg_hyperv_count, registered_device].hash
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
