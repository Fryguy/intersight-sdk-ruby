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
  # The HCL status of a managed object after we have validated the managed object components' firmware and drivers against the HCL.
  class CondHclStatus < MoBaseMo
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # The overall status for the components found in the HCL. This will provide the HCL validation status for all the components. It can be one of the following. \"Validated\" - all the components hardware/software profiles are listed in the HCL. \"Not-Listed\" - one or more components hardware/software profiles are not listed in the HCL \"Incomplete\" - the components are not evaluated as the server's software/hardware profiles are not listed in the HCL. \"Not-Evaluated\" - The components are not evaluated against the HCL because it is exempted. * `Incomplete` - This means we do not have os information in Intersight for this server. Either install ucstools vib or use power shell scripts to tag proper OS information. * `Not-Found` - At HclStatus level, this means that one of the components has failed validation. At HclStatusDetail level, this means that his component's hardware or software profile was not found in the HCL. * `Not-Listed` - At the HclStatus level, this means that some part of the HCL validation has failed. This could be that either the server's hardware or software profile was not listed in the HCL or one of the components' hardware or software profile was not found in the HCL. * `Validated` - At the HclStatus level, this means that all of the components have passed validation. At HclStatusDetail level, this means that the component's hardware or software profile was found in the HCL. * `Not-Evaluated` - At the HclStatus level this means that this means that SW or Component status has not been evaluated as the previous evaluation step has not passed yet. At the HclStatusDetail level this means that either HW or SW status has not been evaluted because a previous evaluation step has not passed yet.
    attr_accessor :component_status

    # The server model, processor and firmware are considered as part of the hardware profile for the server. This will provide the HCL validation status for the hardware profile. For the failure reason see the serverReason property. The status can be one of the following \"Validated\" - The server model, processor and firmware combination is listed in the HCL \"Not-Listed\" - The server model, processor and firmware combination is not listed in the HCL. \"Not-Evaluated\" - The server is not evaluated against the HCL because it is exempted. * `Incomplete` - This means we do not have os information in Intersight for this server. Either install ucstools vib or use power shell scripts to tag proper OS information. * `Not-Found` - At HclStatus level, this means that one of the components has failed validation. At HclStatusDetail level, this means that his component's hardware or software profile was not found in the HCL. * `Not-Listed` - At the HclStatus level, this means that some part of the HCL validation has failed. This could be that either the server's hardware or software profile was not listed in the HCL or one of the components' hardware or software profile was not found in the HCL. * `Validated` - At the HclStatus level, this means that all of the components have passed validation. At HclStatusDetail level, this means that the component's hardware or software profile was found in the HCL. * `Not-Evaluated` - At the HclStatus level this means that this means that SW or Component status has not been evaluated as the previous evaluation step has not passed yet. At the HclStatusDetail level this means that either HW or SW status has not been evaluted because a previous evaluation step has not passed yet.
    attr_accessor :hardware_status

    # The current CIMC version for the server normalized for querying HCL data. It is empty if we are missing this information.
    attr_accessor :hcl_firmware_version

    # The managed object's model to validate normalized for querying HCL data. It is empty if we are missing this information.
    attr_accessor :hcl_model

    # The OS Vendor for the managed object to validate normalized for querying HCL data. It is empty if we are missing this information.
    attr_accessor :hcl_os_vendor

    # The OS Version for the managed object to validate normalized for querying HCL data. It is empty if we are missing this information.
    attr_accessor :hcl_os_version

    # The managed object's processor to validate if applicable normalized for querying HCL data. It is empty if we are missing this information.
    attr_accessor :hcl_processor

    # The current CIMC version for the server as received from inventory. It is empty if we are missing this information.
    attr_accessor :inv_firmware_version

    # The managed object's model to validate as received from the inventory. It is empty if we are missing this information.
    attr_accessor :inv_model

    # The OS Vendor for the managed object to validate as received from inventory. It is empty if we are missing this information.
    attr_accessor :inv_os_vendor

    # The OS Version for the managed object to validate as received from inventory. It is empty if we are missing this information.
    attr_accessor :inv_os_version

    # The managed object's processor to validate if applicable as received from inventory. It is empty if we are missing this information.
    attr_accessor :inv_processor

    # The reason for the HCL status. It will be one of the following \"Missing-Os-Info\" - we are missing os information in the inventory from the device connector \"Incompatible-Components\" - we have 1 or more components with \"Not-Validated\" status \"Compatible\" - all the components have \"Validated\" status. \"Not-Evaluated\" - The server is not evaluated against the HCL because it is exempted. * `Missing-Os-Info` - This means the HclStatus for the sever failed HCL validation because we have missing os information. Either install ucstools vib or use power shell scripts to tag proper OS information. * `Incompatible-Components` - This means the HclStatus for the sever failed HCL validation because one or more of its components failed validation. To see why components failed check the related HclStatusDetails. * `Compatible` - This means the HclStatus for the sever has passed HCL validation for all of its related components. * `Not-Evaluated` - This means the HclStatus for the sever has not been evaluated because it is exempted.
    attr_accessor :reason

    # The reason generated by the server's HCL validation. For HCL the evaluation can be seen in three logical stages 1. Evaluate the server's hardware status 2. Evaluate the server's software status 3. Evaluate the server's components (each component has its own hardware/software evaluation) The evaluation does not proceed to the next stage until the previous stage is evaluated. Therefore there can be only one validation reason. \"Incompatible-Server\" - the server model is not listed in the HCL. \"Incompatible-Processor\" - the server model and processor combination is not listed in HCL. \"Incompatible-Firmware\" - the server model, processor and server firmware is not listed in HCL. \"Missing-Os-Info\" - the os vendor and version is not listed in HCL with the HW profile. \"Incompatible-Os-Info\" - the os vendor and version is not listed in HCL with the HW profile. \"Incompatible-Components\" - there is one or more components with \"Not-Validated\" status \"Service-Unavailable\" - HCL data service is unavailable at the moment (try again later). \"Compatible\" - the server and all its components are validated. \"Not-Evaluated\" - The server is not evaluated against the HCL because it is exempted. * `Missing-Os-Driver-Info` - The validation failed becaue the given server has no OS driver information available in the inventory. Either install UCS Tools VIB on the host ESXi or use OS Discovery Tool scripts to provide proper OS information. * `Incompatible-Server` - The validation failed for this server because the server's model was not listed in the HCL. * `Incompatible-Processor` - The validation failed because the given processor was not listed for the given server model. * `Incompatible-Os-Info` - The validation failed because the given OS vendor or version was not listed in HCL for the server PID and processor combination. * `Incompatible-Firmware` - The validation failed because the given server firmware was not listed in the HCL for the given server PID, processor, OS vendor and version. * `Service-Unavailable` - The validation has failed because HCL data service is temporarily not available. The server will be re-evaluated once HCL data service is back online or finished importing new HCL data. * `Service-Error` - The validation has failed because the HCL data service has returned a service error or unrecognized result. * `Not-Evaluated` - This means the HclStatus for the sever has not been evaluated because it is exempted. * `Incompatible-Components` - The validation has failed for this server because one or more components have \"Not-Listed\" status. * `Compatible` - The validation has passed for this server's model, processor, OS vendor and version.
    attr_accessor :server_reason

    # The OS vendor and version are considered part of the software profile for the server. This will provide the HCL validation status for the software profile. For the failure reason see the serverReason property. The status can be be one of the following \"Validated\" - The os vendor/version is listed in the HCL for the server model, processor and firmware \"Not-Listed\" - The os vendor/version is not listed in the HCL for the server model, processor and firmware \"Incomplete\" - The inventory is missing os vendor/version and HCL validation was not performed. \"Not-Evaluated\" - The server is not evaluated against the HCL because it is exempted. * `Incomplete` - This means we do not have os information in Intersight for this server. Either install ucstools vib or use power shell scripts to tag proper OS information. * `Not-Found` - At HclStatus level, this means that one of the components has failed validation. At HclStatusDetail level, this means that his component's hardware or software profile was not found in the HCL. * `Not-Listed` - At the HclStatus level, this means that some part of the HCL validation has failed. This could be that either the server's hardware or software profile was not listed in the HCL or one of the components' hardware or software profile was not found in the HCL. * `Validated` - At the HclStatus level, this means that all of the components have passed validation. At HclStatusDetail level, this means that the component's hardware or software profile was found in the HCL. * `Not-Evaluated` - At the HclStatus level this means that this means that SW or Component status has not been evaluated as the previous evaluation step has not passed yet. At the HclStatusDetail level this means that either HW or SW status has not been evaluted because a previous evaluation step has not passed yet.
    attr_accessor :software_status

    # The HCL compatibility status of the managed object. The status can be one of the following \"Incomplete\" - there is no enough information to evaluate against the HCL data \"Validated\" - all components have been evaluated against the HCL and they all have \"Validated\" status \"Not-Listed\" - all components have been evaluated against the HCL and one or more have \"Not-Listed\" status. \"Not-Evaluated\" - server is not evaluated against the HCL because it is exempted. * `Incomplete` - This means we do not have os information in Intersight for this server. Either install ucstools vib or use power shell scripts to tag proper OS information. * `Not-Found` - At HclStatus level, this means that one of the components has failed validation. At HclStatusDetail level, this means that his component's hardware or software profile was not found in the HCL. * `Not-Listed` - At the HclStatus level, this means that some part of the HCL validation has failed. This could be that either the server's hardware or software profile was not listed in the HCL or one of the components' hardware or software profile was not found in the HCL. * `Validated` - At the HclStatus level, this means that all of the components have passed validation. At HclStatusDetail level, this means that the component's hardware or software profile was found in the HCL. * `Not-Evaluated` - At the HclStatus level this means that this means that SW or Component status has not been evaluated as the previous evaluation step has not passed yet. At the HclStatusDetail level this means that either HW or SW status has not been evaluted because a previous evaluation step has not passed yet.
    attr_accessor :status

    # An array of relationships to condHclStatusDetail resources.
    attr_accessor :details

    attr_accessor :managed_object

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
        :'component_status' => :'ComponentStatus',
        :'hardware_status' => :'HardwareStatus',
        :'hcl_firmware_version' => :'HclFirmwareVersion',
        :'hcl_model' => :'HclModel',
        :'hcl_os_vendor' => :'HclOsVendor',
        :'hcl_os_version' => :'HclOsVersion',
        :'hcl_processor' => :'HclProcessor',
        :'inv_firmware_version' => :'InvFirmwareVersion',
        :'inv_model' => :'InvModel',
        :'inv_os_vendor' => :'InvOsVendor',
        :'inv_os_version' => :'InvOsVersion',
        :'inv_processor' => :'InvProcessor',
        :'reason' => :'Reason',
        :'server_reason' => :'ServerReason',
        :'software_status' => :'SoftwareStatus',
        :'status' => :'Status',
        :'details' => :'Details',
        :'managed_object' => :'ManagedObject',
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
        :'component_status' => :'String',
        :'hardware_status' => :'String',
        :'hcl_firmware_version' => :'String',
        :'hcl_model' => :'String',
        :'hcl_os_vendor' => :'String',
        :'hcl_os_version' => :'String',
        :'hcl_processor' => :'String',
        :'inv_firmware_version' => :'String',
        :'inv_model' => :'String',
        :'inv_os_vendor' => :'String',
        :'inv_os_version' => :'String',
        :'inv_processor' => :'String',
        :'reason' => :'String',
        :'server_reason' => :'String',
        :'software_status' => :'String',
        :'status' => :'String',
        :'details' => :'Array<CondHclStatusDetailRelationship>',
        :'managed_object' => :'InventoryBaseRelationship',
        :'registered_device' => :'AssetDeviceRegistrationRelationship'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'details',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'CondHclStatusAllOf',
      :'MoBaseMo'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::CondHclStatus` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::CondHclStatus`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'cond.HclStatus'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'cond.HclStatus'
      end

      if attributes.key?(:'component_status')
        self.component_status = attributes[:'component_status']
      else
        self.component_status = 'Incomplete'
      end

      if attributes.key?(:'hardware_status')
        self.hardware_status = attributes[:'hardware_status']
      else
        self.hardware_status = 'Incomplete'
      end

      if attributes.key?(:'hcl_firmware_version')
        self.hcl_firmware_version = attributes[:'hcl_firmware_version']
      end

      if attributes.key?(:'hcl_model')
        self.hcl_model = attributes[:'hcl_model']
      end

      if attributes.key?(:'hcl_os_vendor')
        self.hcl_os_vendor = attributes[:'hcl_os_vendor']
      end

      if attributes.key?(:'hcl_os_version')
        self.hcl_os_version = attributes[:'hcl_os_version']
      end

      if attributes.key?(:'hcl_processor')
        self.hcl_processor = attributes[:'hcl_processor']
      end

      if attributes.key?(:'inv_firmware_version')
        self.inv_firmware_version = attributes[:'inv_firmware_version']
      end

      if attributes.key?(:'inv_model')
        self.inv_model = attributes[:'inv_model']
      end

      if attributes.key?(:'inv_os_vendor')
        self.inv_os_vendor = attributes[:'inv_os_vendor']
      end

      if attributes.key?(:'inv_os_version')
        self.inv_os_version = attributes[:'inv_os_version']
      end

      if attributes.key?(:'inv_processor')
        self.inv_processor = attributes[:'inv_processor']
      end

      if attributes.key?(:'reason')
        self.reason = attributes[:'reason']
      else
        self.reason = 'Missing-Os-Info'
      end

      if attributes.key?(:'server_reason')
        self.server_reason = attributes[:'server_reason']
      else
        self.server_reason = 'Missing-Os-Driver-Info'
      end

      if attributes.key?(:'software_status')
        self.software_status = attributes[:'software_status']
      else
        self.software_status = 'Incomplete'
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = 'Incomplete'
      end

      if attributes.key?(:'details')
        if (value = attributes[:'details']).is_a?(Array)
          self.details = value
        end
      end

      if attributes.key?(:'managed_object')
        self.managed_object = attributes[:'managed_object']
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
      class_id_validator = EnumAttributeValidator.new('String', ["cond.HclStatus"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["cond.HclStatus"])
      return false unless object_type_validator.valid?(@object_type)
      component_status_validator = EnumAttributeValidator.new('String', ["Incomplete", "Not-Found", "Not-Listed", "Validated", "Not-Evaluated"])
      return false unless component_status_validator.valid?(@component_status)
      hardware_status_validator = EnumAttributeValidator.new('String', ["Incomplete", "Not-Found", "Not-Listed", "Validated", "Not-Evaluated"])
      return false unless hardware_status_validator.valid?(@hardware_status)
      reason_validator = EnumAttributeValidator.new('String', ["Missing-Os-Info", "Incompatible-Components", "Compatible", "Not-Evaluated"])
      return false unless reason_validator.valid?(@reason)
      server_reason_validator = EnumAttributeValidator.new('String', ["Missing-Os-Driver-Info", "Incompatible-Server", "Incompatible-Processor", "Incompatible-Os-Info", "Incompatible-Firmware", "Service-Unavailable", "Service-Error", "Not-Evaluated", "Incompatible-Components", "Compatible"])
      return false unless server_reason_validator.valid?(@server_reason)
      software_status_validator = EnumAttributeValidator.new('String', ["Incomplete", "Not-Found", "Not-Listed", "Validated", "Not-Evaluated"])
      return false unless software_status_validator.valid?(@software_status)
      status_validator = EnumAttributeValidator.new('String', ["Incomplete", "Not-Found", "Not-Listed", "Validated", "Not-Evaluated"])
      return false unless status_validator.valid?(@status)
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["cond.HclStatus"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["cond.HclStatus"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] component_status Object to be assigned
    def component_status=(component_status)
      validator = EnumAttributeValidator.new('String', ["Incomplete", "Not-Found", "Not-Listed", "Validated", "Not-Evaluated"])
      unless validator.valid?(component_status)
        fail ArgumentError, "invalid value for \"component_status\", must be one of #{validator.allowable_values}."
      end
      @component_status = component_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] hardware_status Object to be assigned
    def hardware_status=(hardware_status)
      validator = EnumAttributeValidator.new('String', ["Incomplete", "Not-Found", "Not-Listed", "Validated", "Not-Evaluated"])
      unless validator.valid?(hardware_status)
        fail ArgumentError, "invalid value for \"hardware_status\", must be one of #{validator.allowable_values}."
      end
      @hardware_status = hardware_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(reason)
      validator = EnumAttributeValidator.new('String', ["Missing-Os-Info", "Incompatible-Components", "Compatible", "Not-Evaluated"])
      unless validator.valid?(reason)
        fail ArgumentError, "invalid value for \"reason\", must be one of #{validator.allowable_values}."
      end
      @reason = reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] server_reason Object to be assigned
    def server_reason=(server_reason)
      validator = EnumAttributeValidator.new('String', ["Missing-Os-Driver-Info", "Incompatible-Server", "Incompatible-Processor", "Incompatible-Os-Info", "Incompatible-Firmware", "Service-Unavailable", "Service-Error", "Not-Evaluated", "Incompatible-Components", "Compatible"])
      unless validator.valid?(server_reason)
        fail ArgumentError, "invalid value for \"server_reason\", must be one of #{validator.allowable_values}."
      end
      @server_reason = server_reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] software_status Object to be assigned
    def software_status=(software_status)
      validator = EnumAttributeValidator.new('String', ["Incomplete", "Not-Found", "Not-Listed", "Validated", "Not-Evaluated"])
      unless validator.valid?(software_status)
        fail ArgumentError, "invalid value for \"software_status\", must be one of #{validator.allowable_values}."
      end
      @software_status = software_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["Incomplete", "Not-Found", "Not-Listed", "Validated", "Not-Evaluated"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          component_status == o.component_status &&
          hardware_status == o.hardware_status &&
          hcl_firmware_version == o.hcl_firmware_version &&
          hcl_model == o.hcl_model &&
          hcl_os_vendor == o.hcl_os_vendor &&
          hcl_os_version == o.hcl_os_version &&
          hcl_processor == o.hcl_processor &&
          inv_firmware_version == o.inv_firmware_version &&
          inv_model == o.inv_model &&
          inv_os_vendor == o.inv_os_vendor &&
          inv_os_version == o.inv_os_version &&
          inv_processor == o.inv_processor &&
          reason == o.reason &&
          server_reason == o.server_reason &&
          software_status == o.software_status &&
          status == o.status &&
          details == o.details &&
          managed_object == o.managed_object &&
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
      [class_id, object_type, component_status, hardware_status, hcl_firmware_version, hcl_model, hcl_os_vendor, hcl_os_version, hcl_processor, inv_firmware_version, inv_model, inv_os_vendor, inv_os_version, inv_processor, reason, server_reason, software_status, status, details, managed_object, registered_device].hash
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
