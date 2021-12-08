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
  # Definition of the list of properties defined in 'kubernetes.AddonConfiguration', excluding properties defined in parent classes.
  class KubernetesAddonConfigurationAllOf
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # Addon install strategy to determine whether an addon is installed if not present. * `None` - Unspecified install strategy. * `NoAction` - No install action performed. * `InstallOnly` - Only install in green field. No action in case of failure or removal. * `Always` - Attempt install if chart is not already installed.
    attr_accessor :install_strategy

    attr_accessor :override_sets

    # Properties that can be overridden for an addon.
    attr_accessor :overrides

    # Name for the helm release.
    attr_accessor :release_name

    # Namespace for the helm release.
    attr_accessor :release_namespace

    # Addon upgrade strategy to determine whether an addon configuration is overwritten on upgrade. * `None` - Unspecified upgrade strategy. * `NoAction` - This choice enables No upgrades to be performed. * `UpgradeOnly` - Attempt upgrade if chart or overrides options change, no action on upgrade failure. * `ReinstallOnFailure` - Attempt upgrade first. Remove and install on upgrade failure. * `AlwaysReinstall` - Always remove older release and reinstall.
    attr_accessor :upgrade_strategy

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
        :'install_strategy' => :'InstallStrategy',
        :'override_sets' => :'OverrideSets',
        :'overrides' => :'Overrides',
        :'release_name' => :'ReleaseName',
        :'release_namespace' => :'ReleaseNamespace',
        :'upgrade_strategy' => :'UpgradeStrategy'
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
        :'install_strategy' => :'String',
        :'override_sets' => :'Array<KubernetesKeyValue>',
        :'overrides' => :'String',
        :'release_name' => :'String',
        :'release_namespace' => :'String',
        :'upgrade_strategy' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'override_sets',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::KubernetesAddonConfigurationAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::KubernetesAddonConfigurationAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'kubernetes.AddonConfiguration'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'kubernetes.AddonConfiguration'
      end

      if attributes.key?(:'install_strategy')
        self.install_strategy = attributes[:'install_strategy']
      else
        self.install_strategy = 'None'
      end

      if attributes.key?(:'override_sets')
        if (value = attributes[:'override_sets']).is_a?(Array)
          self.override_sets = value
        end
      end

      if attributes.key?(:'overrides')
        self.overrides = attributes[:'overrides']
      end

      if attributes.key?(:'release_name')
        self.release_name = attributes[:'release_name']
      end

      if attributes.key?(:'release_namespace')
        self.release_namespace = attributes[:'release_namespace']
      end

      if attributes.key?(:'upgrade_strategy')
        self.upgrade_strategy = attributes[:'upgrade_strategy']
      else
        self.upgrade_strategy = 'None'
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
      class_id_validator = EnumAttributeValidator.new('String', ["kubernetes.AddonConfiguration"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["kubernetes.AddonConfiguration"])
      return false unless object_type_validator.valid?(@object_type)
      install_strategy_validator = EnumAttributeValidator.new('String', ["None", "NoAction", "InstallOnly", "Always"])
      return false unless install_strategy_validator.valid?(@install_strategy)
      upgrade_strategy_validator = EnumAttributeValidator.new('String', ["None", "NoAction", "UpgradeOnly", "ReinstallOnFailure", "AlwaysReinstall"])
      return false unless upgrade_strategy_validator.valid?(@upgrade_strategy)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["kubernetes.AddonConfiguration"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["kubernetes.AddonConfiguration"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] install_strategy Object to be assigned
    def install_strategy=(install_strategy)
      validator = EnumAttributeValidator.new('String', ["None", "NoAction", "InstallOnly", "Always"])
      unless validator.valid?(install_strategy)
        fail ArgumentError, "invalid value for \"install_strategy\", must be one of #{validator.allowable_values}."
      end
      @install_strategy = install_strategy
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] upgrade_strategy Object to be assigned
    def upgrade_strategy=(upgrade_strategy)
      validator = EnumAttributeValidator.new('String', ["None", "NoAction", "UpgradeOnly", "ReinstallOnFailure", "AlwaysReinstall"])
      unless validator.valid?(upgrade_strategy)
        fail ArgumentError, "invalid value for \"upgrade_strategy\", must be one of #{validator.allowable_values}."
      end
      @upgrade_strategy = upgrade_strategy
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          install_strategy == o.install_strategy &&
          override_sets == o.override_sets &&
          overrides == o.overrides &&
          release_name == o.release_name &&
          release_namespace == o.release_namespace &&
          upgrade_strategy == o.upgrade_strategy
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, install_strategy, override_sets, overrides, release_name, release_namespace, upgrade_strategy].hash
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