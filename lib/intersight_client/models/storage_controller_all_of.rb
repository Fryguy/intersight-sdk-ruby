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
  # Definition of the list of properties defined in 'storage.Controller', excluding properties defined in parent classes.
  class StorageControllerAllOf
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # The flags for the storage controller.
    attr_accessor :controller_flags

    # The Id of the storage controller.
    attr_accessor :controller_id

    # The current status of controller.
    attr_accessor :controller_status

    # Storage controller has detected disks in foreign config.
    attr_accessor :foreign_config_present

    # The hardware revision of controller.
    attr_accessor :hw_revision

    # Interface types are Sas, Sata, PCH.
    attr_accessor :interface_type

    # Maximum virtual drives that can be created on this Storage Controller.
    attr_accessor :max_volumes_supported

    # The CIMC support for out-of-band configuration of controller.
    attr_accessor :oob_interface_supported

    # The current operational state of controller.
    attr_accessor :oper_state

    # Operability state of the storage controller.
    attr_accessor :operability

    # The current pci address of controller.
    attr_accessor :pci_addr

    # The pci slot name for the controller.
    attr_accessor :pci_slot

    # The RAID levels supported by controller.
    attr_accessor :raid_support

    # Logical volume or RAID rebuild rate of Storage Controller.
    attr_accessor :rebuild_rate

    # Storage controller disk self encryption state.
    attr_accessor :self_encrypt_enabled

    # Controller types are Raid, FlexFlash.
    attr_accessor :type

    attr_accessor :compute_blade

    attr_accessor :compute_board

    attr_accessor :compute_rack_unit

    # An array of relationships to storageDiskGroup resources.
    attr_accessor :disk_group

    # An array of relationships to storageDiskSlot resources.
    attr_accessor :disk_slot

    attr_accessor :inventory_device_info

    # An array of relationships to storagePhysicalDiskExtension resources.
    attr_accessor :physical_disk_extensions

    # An array of relationships to storagePhysicalDisk resources.
    attr_accessor :physical_disks

    attr_accessor :registered_device

    # An array of relationships to firmwareRunningFirmware resources.
    attr_accessor :running_firmware

    # An array of relationships to storageVirtualDriveExtension resources.
    attr_accessor :virtual_drive_extensions

    # An array of relationships to storageVirtualDrive resources.
    attr_accessor :virtual_drives

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
        :'controller_flags' => :'ControllerFlags',
        :'controller_id' => :'ControllerId',
        :'controller_status' => :'ControllerStatus',
        :'foreign_config_present' => :'ForeignConfigPresent',
        :'hw_revision' => :'HwRevision',
        :'interface_type' => :'InterfaceType',
        :'max_volumes_supported' => :'MaxVolumesSupported',
        :'oob_interface_supported' => :'OobInterfaceSupported',
        :'oper_state' => :'OperState',
        :'operability' => :'Operability',
        :'pci_addr' => :'PciAddr',
        :'pci_slot' => :'PciSlot',
        :'raid_support' => :'RaidSupport',
        :'rebuild_rate' => :'RebuildRate',
        :'self_encrypt_enabled' => :'SelfEncryptEnabled',
        :'type' => :'Type',
        :'compute_blade' => :'ComputeBlade',
        :'compute_board' => :'ComputeBoard',
        :'compute_rack_unit' => :'ComputeRackUnit',
        :'disk_group' => :'DiskGroup',
        :'disk_slot' => :'DiskSlot',
        :'inventory_device_info' => :'InventoryDeviceInfo',
        :'physical_disk_extensions' => :'PhysicalDiskExtensions',
        :'physical_disks' => :'PhysicalDisks',
        :'registered_device' => :'RegisteredDevice',
        :'running_firmware' => :'RunningFirmware',
        :'virtual_drive_extensions' => :'VirtualDriveExtensions',
        :'virtual_drives' => :'VirtualDrives'
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
        :'controller_flags' => :'String',
        :'controller_id' => :'String',
        :'controller_status' => :'String',
        :'foreign_config_present' => :'Boolean',
        :'hw_revision' => :'String',
        :'interface_type' => :'String',
        :'max_volumes_supported' => :'Integer',
        :'oob_interface_supported' => :'String',
        :'oper_state' => :'String',
        :'operability' => :'String',
        :'pci_addr' => :'String',
        :'pci_slot' => :'String',
        :'raid_support' => :'String',
        :'rebuild_rate' => :'String',
        :'self_encrypt_enabled' => :'String',
        :'type' => :'String',
        :'compute_blade' => :'ComputeBladeRelationship',
        :'compute_board' => :'ComputeBoardRelationship',
        :'compute_rack_unit' => :'ComputeRackUnitRelationship',
        :'disk_group' => :'Array<StorageDiskGroupRelationship>',
        :'disk_slot' => :'Array<StorageDiskSlotRelationship>',
        :'inventory_device_info' => :'InventoryDeviceInfoRelationship',
        :'physical_disk_extensions' => :'Array<StoragePhysicalDiskExtensionRelationship>',
        :'physical_disks' => :'Array<StoragePhysicalDiskRelationship>',
        :'registered_device' => :'AssetDeviceRegistrationRelationship',
        :'running_firmware' => :'Array<FirmwareRunningFirmwareRelationship>',
        :'virtual_drive_extensions' => :'Array<StorageVirtualDriveExtensionRelationship>',
        :'virtual_drives' => :'Array<StorageVirtualDriveRelationship>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'disk_group',
        :'disk_slot',
        :'physical_disk_extensions',
        :'physical_disks',
        :'running_firmware',
        :'virtual_drive_extensions',
        :'virtual_drives'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::StorageControllerAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::StorageControllerAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'storage.Controller'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'storage.Controller'
      end

      if attributes.key?(:'controller_flags')
        self.controller_flags = attributes[:'controller_flags']
      end

      if attributes.key?(:'controller_id')
        self.controller_id = attributes[:'controller_id']
      end

      if attributes.key?(:'controller_status')
        self.controller_status = attributes[:'controller_status']
      end

      if attributes.key?(:'foreign_config_present')
        self.foreign_config_present = attributes[:'foreign_config_present']
      end

      if attributes.key?(:'hw_revision')
        self.hw_revision = attributes[:'hw_revision']
      end

      if attributes.key?(:'interface_type')
        self.interface_type = attributes[:'interface_type']
      end

      if attributes.key?(:'max_volumes_supported')
        self.max_volumes_supported = attributes[:'max_volumes_supported']
      end

      if attributes.key?(:'oob_interface_supported')
        self.oob_interface_supported = attributes[:'oob_interface_supported']
      end

      if attributes.key?(:'oper_state')
        self.oper_state = attributes[:'oper_state']
      end

      if attributes.key?(:'operability')
        self.operability = attributes[:'operability']
      end

      if attributes.key?(:'pci_addr')
        self.pci_addr = attributes[:'pci_addr']
      end

      if attributes.key?(:'pci_slot')
        self.pci_slot = attributes[:'pci_slot']
      end

      if attributes.key?(:'raid_support')
        self.raid_support = attributes[:'raid_support']
      end

      if attributes.key?(:'rebuild_rate')
        self.rebuild_rate = attributes[:'rebuild_rate']
      end

      if attributes.key?(:'self_encrypt_enabled')
        self.self_encrypt_enabled = attributes[:'self_encrypt_enabled']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'compute_blade')
        self.compute_blade = attributes[:'compute_blade']
      end

      if attributes.key?(:'compute_board')
        self.compute_board = attributes[:'compute_board']
      end

      if attributes.key?(:'compute_rack_unit')
        self.compute_rack_unit = attributes[:'compute_rack_unit']
      end

      if attributes.key?(:'disk_group')
        if (value = attributes[:'disk_group']).is_a?(Array)
          self.disk_group = value
        end
      end

      if attributes.key?(:'disk_slot')
        if (value = attributes[:'disk_slot']).is_a?(Array)
          self.disk_slot = value
        end
      end

      if attributes.key?(:'inventory_device_info')
        self.inventory_device_info = attributes[:'inventory_device_info']
      end

      if attributes.key?(:'physical_disk_extensions')
        if (value = attributes[:'physical_disk_extensions']).is_a?(Array)
          self.physical_disk_extensions = value
        end
      end

      if attributes.key?(:'physical_disks')
        if (value = attributes[:'physical_disks']).is_a?(Array)
          self.physical_disks = value
        end
      end

      if attributes.key?(:'registered_device')
        self.registered_device = attributes[:'registered_device']
      end

      if attributes.key?(:'running_firmware')
        if (value = attributes[:'running_firmware']).is_a?(Array)
          self.running_firmware = value
        end
      end

      if attributes.key?(:'virtual_drive_extensions')
        if (value = attributes[:'virtual_drive_extensions']).is_a?(Array)
          self.virtual_drive_extensions = value
        end
      end

      if attributes.key?(:'virtual_drives')
        if (value = attributes[:'virtual_drives']).is_a?(Array)
          self.virtual_drives = value
        end
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
      class_id_validator = EnumAttributeValidator.new('String', ["storage.Controller"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["storage.Controller"])
      return false unless object_type_validator.valid?(@object_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["storage.Controller"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["storage.Controller"])
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
          controller_flags == o.controller_flags &&
          controller_id == o.controller_id &&
          controller_status == o.controller_status &&
          foreign_config_present == o.foreign_config_present &&
          hw_revision == o.hw_revision &&
          interface_type == o.interface_type &&
          max_volumes_supported == o.max_volumes_supported &&
          oob_interface_supported == o.oob_interface_supported &&
          oper_state == o.oper_state &&
          operability == o.operability &&
          pci_addr == o.pci_addr &&
          pci_slot == o.pci_slot &&
          raid_support == o.raid_support &&
          rebuild_rate == o.rebuild_rate &&
          self_encrypt_enabled == o.self_encrypt_enabled &&
          type == o.type &&
          compute_blade == o.compute_blade &&
          compute_board == o.compute_board &&
          compute_rack_unit == o.compute_rack_unit &&
          disk_group == o.disk_group &&
          disk_slot == o.disk_slot &&
          inventory_device_info == o.inventory_device_info &&
          physical_disk_extensions == o.physical_disk_extensions &&
          physical_disks == o.physical_disks &&
          registered_device == o.registered_device &&
          running_firmware == o.running_firmware &&
          virtual_drive_extensions == o.virtual_drive_extensions &&
          virtual_drives == o.virtual_drives
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, controller_flags, controller_id, controller_status, foreign_config_present, hw_revision, interface_type, max_volumes_supported, oob_interface_supported, oper_state, operability, pci_addr, pci_slot, raid_support, rebuild_rate, self_encrypt_enabled, type, compute_blade, compute_board, compute_rack_unit, disk_group, disk_slot, inventory_device_info, physical_disk_extensions, physical_disks, registered_device, running_firmware, virtual_drive_extensions, virtual_drives].hash
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
