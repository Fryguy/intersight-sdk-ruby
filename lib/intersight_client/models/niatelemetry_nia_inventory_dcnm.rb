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
  # Inventory Object available for DCNM-scoped attributes.
  class NiatelemetryNiaInventoryDcnm < MoBaseMo
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # Returns the value of the dev Field.
    attr_accessor :dev

    # Number of EPLD images uploaded to DCNM.
    attr_accessor :epld_image_count

    # Returns the value of the haEnabled field.
    attr_accessor :ha_enabled

    # Returns the value of the haReplicationStatus field.
    attr_accessor :ha_replication_status

    # Returns the value of the install field.
    attr_accessor :install

    # Returns true if ISN is configured.
    attr_accessor :is_isn_configured

    # Returns the value of the isMediaController field.
    attr_accessor :is_media_controller

    # Returns true if the Smart license is enabled and is in use.
    attr_accessor :is_smart_license_enabled

    # Returns total number of fabrics in DCNM set-up.
    attr_accessor :num_fabrics

    # Returns the number of fabrics in msd.
    attr_accessor :num_fabrics_in_msd

    # Returns the number of fabrics that have ingress replication type.
    attr_accessor :num_ingress_replication_fabrics

    # Returns the number of local users other than admin user.
    attr_accessor :num_local_users

    # Returns the number of MSD fabrics.
    attr_accessor :num_msd

    # Returns the number of svi interfaces configured for VRF vlans.
    attr_accessor :num_svi_vrf_count

    # Returns the number of links where TRM is enabled.
    attr_accessor :num_trm_enabled_count

    # Number of users who have upgrade privileges excluding the admin.
    attr_accessor :num_upg_users

    # Number of NXOS images uploaded to DCNM.
    attr_accessor :nxos_image_count

    # Serial number of device being inventoried. The serial number is unique per device.
    attr_accessor :serial

    # Name of fabric domain of the controller.
    attr_accessor :site_name

    # Returns the number of underlay peering active links.
    attr_accessor :underlay_peering_active_links_count

    # Number of upgrade jobs configured on DCNM.
    attr_accessor :upg_job_count

    # Upgrade status of jobs created on DCNM.
    attr_accessor :upg_status

    # Returns the value of the version field.
    attr_accessor :version

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
        :'dev' => :'Dev',
        :'epld_image_count' => :'EpldImageCount',
        :'ha_enabled' => :'HaEnabled',
        :'ha_replication_status' => :'HaReplicationStatus',
        :'install' => :'Install',
        :'is_isn_configured' => :'IsIsnConfigured',
        :'is_media_controller' => :'IsMediaController',
        :'is_smart_license_enabled' => :'IsSmartLicenseEnabled',
        :'num_fabrics' => :'NumFabrics',
        :'num_fabrics_in_msd' => :'NumFabricsInMsd',
        :'num_ingress_replication_fabrics' => :'NumIngressReplicationFabrics',
        :'num_local_users' => :'NumLocalUsers',
        :'num_msd' => :'NumMsd',
        :'num_svi_vrf_count' => :'NumSviVrfCount',
        :'num_trm_enabled_count' => :'NumTrmEnabledCount',
        :'num_upg_users' => :'NumUpgUsers',
        :'nxos_image_count' => :'NxosImageCount',
        :'serial' => :'Serial',
        :'site_name' => :'SiteName',
        :'underlay_peering_active_links_count' => :'UnderlayPeeringActiveLinksCount',
        :'upg_job_count' => :'UpgJobCount',
        :'upg_status' => :'UpgStatus',
        :'version' => :'Version',
        :'registered_device' => :'RegisteredDevice'
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
        :'dev' => :'Boolean',
        :'epld_image_count' => :'Integer',
        :'ha_enabled' => :'Boolean',
        :'ha_replication_status' => :'String',
        :'install' => :'String',
        :'is_isn_configured' => :'Boolean',
        :'is_media_controller' => :'Boolean',
        :'is_smart_license_enabled' => :'Boolean',
        :'num_fabrics' => :'Integer',
        :'num_fabrics_in_msd' => :'Integer',
        :'num_ingress_replication_fabrics' => :'Integer',
        :'num_local_users' => :'Integer',
        :'num_msd' => :'Integer',
        :'num_svi_vrf_count' => :'Integer',
        :'num_trm_enabled_count' => :'Integer',
        :'num_upg_users' => :'Integer',
        :'nxos_image_count' => :'Integer',
        :'serial' => :'String',
        :'site_name' => :'String',
        :'underlay_peering_active_links_count' => :'Integer',
        :'upg_job_count' => :'Integer',
        :'upg_status' => :'String',
        :'version' => :'String',
        :'registered_device' => :'AssetDeviceRegistrationRelationship'
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
      :'MoBaseMo',
      :'NiatelemetryNiaInventoryDcnmAllOf'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::NiatelemetryNiaInventoryDcnm` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::NiatelemetryNiaInventoryDcnm`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'niatelemetry.NiaInventoryDcnm'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'niatelemetry.NiaInventoryDcnm'
      end

      if attributes.key?(:'dev')
        self.dev = attributes[:'dev']
      end

      if attributes.key?(:'epld_image_count')
        self.epld_image_count = attributes[:'epld_image_count']
      end

      if attributes.key?(:'ha_enabled')
        self.ha_enabled = attributes[:'ha_enabled']
      end

      if attributes.key?(:'ha_replication_status')
        self.ha_replication_status = attributes[:'ha_replication_status']
      end

      if attributes.key?(:'install')
        self.install = attributes[:'install']
      end

      if attributes.key?(:'is_isn_configured')
        self.is_isn_configured = attributes[:'is_isn_configured']
      end

      if attributes.key?(:'is_media_controller')
        self.is_media_controller = attributes[:'is_media_controller']
      end

      if attributes.key?(:'is_smart_license_enabled')
        self.is_smart_license_enabled = attributes[:'is_smart_license_enabled']
      end

      if attributes.key?(:'num_fabrics')
        self.num_fabrics = attributes[:'num_fabrics']
      end

      if attributes.key?(:'num_fabrics_in_msd')
        self.num_fabrics_in_msd = attributes[:'num_fabrics_in_msd']
      end

      if attributes.key?(:'num_ingress_replication_fabrics')
        self.num_ingress_replication_fabrics = attributes[:'num_ingress_replication_fabrics']
      end

      if attributes.key?(:'num_local_users')
        self.num_local_users = attributes[:'num_local_users']
      end

      if attributes.key?(:'num_msd')
        self.num_msd = attributes[:'num_msd']
      end

      if attributes.key?(:'num_svi_vrf_count')
        self.num_svi_vrf_count = attributes[:'num_svi_vrf_count']
      end

      if attributes.key?(:'num_trm_enabled_count')
        self.num_trm_enabled_count = attributes[:'num_trm_enabled_count']
      end

      if attributes.key?(:'num_upg_users')
        self.num_upg_users = attributes[:'num_upg_users']
      end

      if attributes.key?(:'nxos_image_count')
        self.nxos_image_count = attributes[:'nxos_image_count']
      end

      if attributes.key?(:'serial')
        self.serial = attributes[:'serial']
      end

      if attributes.key?(:'site_name')
        self.site_name = attributes[:'site_name']
      end

      if attributes.key?(:'underlay_peering_active_links_count')
        self.underlay_peering_active_links_count = attributes[:'underlay_peering_active_links_count']
      end

      if attributes.key?(:'upg_job_count')
        self.upg_job_count = attributes[:'upg_job_count']
      end

      if attributes.key?(:'upg_status')
        self.upg_status = attributes[:'upg_status']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'registered_device')
        self.registered_device = attributes[:'registered_device']
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
      class_id_validator = EnumAttributeValidator.new('String', ["niatelemetry.NiaInventoryDcnm"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["niatelemetry.NiaInventoryDcnm"])
      return false unless object_type_validator.valid?(@object_type)
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["niatelemetry.NiaInventoryDcnm"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["niatelemetry.NiaInventoryDcnm"])
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
          dev == o.dev &&
          epld_image_count == o.epld_image_count &&
          ha_enabled == o.ha_enabled &&
          ha_replication_status == o.ha_replication_status &&
          install == o.install &&
          is_isn_configured == o.is_isn_configured &&
          is_media_controller == o.is_media_controller &&
          is_smart_license_enabled == o.is_smart_license_enabled &&
          num_fabrics == o.num_fabrics &&
          num_fabrics_in_msd == o.num_fabrics_in_msd &&
          num_ingress_replication_fabrics == o.num_ingress_replication_fabrics &&
          num_local_users == o.num_local_users &&
          num_msd == o.num_msd &&
          num_svi_vrf_count == o.num_svi_vrf_count &&
          num_trm_enabled_count == o.num_trm_enabled_count &&
          num_upg_users == o.num_upg_users &&
          nxos_image_count == o.nxos_image_count &&
          serial == o.serial &&
          site_name == o.site_name &&
          underlay_peering_active_links_count == o.underlay_peering_active_links_count &&
          upg_job_count == o.upg_job_count &&
          upg_status == o.upg_status &&
          version == o.version &&
          registered_device == o.registered_device && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, dev, epld_image_count, ha_enabled, ha_replication_status, install, is_isn_configured, is_media_controller, is_smart_license_enabled, num_fabrics, num_fabrics_in_msd, num_ingress_replication_fabrics, num_local_users, num_msd, num_svi_vrf_count, num_trm_enabled_count, num_upg_users, nxos_image_count, serial, site_name, underlay_peering_active_links_count, upg_job_count, upg_status, version, registered_device].hash
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
