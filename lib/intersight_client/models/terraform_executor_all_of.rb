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
  # Definition of the list of properties defined in 'terraform.Executor', excluding properties defined in parent classes.
  class TerraformExecutorAllOf
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    attr_accessor :cloud_resource

    # Enum indicates what operation is being done. * `Create` - Creating a Terraform resource. * `Update` - Updating a Terraform resource. * `Delete` - Deleting a Terraform resource.
    attr_accessor :operation

    # Terraform output of the entire execution.
    attr_accessor :output

    # The Platform type used in conjunction with 'sourceFolderPath' and 'sourceFolderName' determines unique path for a Terraform workflow.
    attr_accessor :platform_type

    attr_accessor :run_state

    # Folder Name where Terraform workflows are stored.
    attr_accessor :source_folder_name

    # Relative folder Path where 'sourceFolderName' is located.
    attr_accessor :source_folder_path

    # Flag indicates whether workflow is internal/external.
    attr_accessor :source_location

    # Status of the terraform execution.
    attr_accessor :status

    # Stderr of the terraform execution will be captured here.
    attr_accessor :stderr

    # Stdout of the terraform execution will be captured here.
    attr_accessor :stdout

    # TaskId of a pontem workflow is same as the MO.
    attr_accessor :task_id

    # Variables needed by the terraform configuration as a JSON object.
    attr_accessor :variables

    attr_accessor :account

    attr_accessor :registered_device

    attr_accessor :workflow_info

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
        :'cloud_resource' => :'CloudResource',
        :'operation' => :'Operation',
        :'output' => :'Output',
        :'platform_type' => :'PlatformType',
        :'run_state' => :'RunState',
        :'source_folder_name' => :'SourceFolderName',
        :'source_folder_path' => :'SourceFolderPath',
        :'source_location' => :'SourceLocation',
        :'status' => :'Status',
        :'stderr' => :'Stderr',
        :'stdout' => :'Stdout',
        :'task_id' => :'TaskId',
        :'variables' => :'Variables',
        :'account' => :'Account',
        :'registered_device' => :'RegisteredDevice',
        :'workflow_info' => :'WorkflowInfo'
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
        :'cloud_resource' => :'Array<TerraformCloudResource>',
        :'operation' => :'String',
        :'output' => :'Object',
        :'platform_type' => :'String',
        :'run_state' => :'Array<TerraformRunstate>',
        :'source_folder_name' => :'String',
        :'source_folder_path' => :'String',
        :'source_location' => :'String',
        :'status' => :'String',
        :'stderr' => :'Object',
        :'stdout' => :'Object',
        :'task_id' => :'String',
        :'variables' => :'Object',
        :'account' => :'IamAccountRelationship',
        :'registered_device' => :'AssetDeviceRegistrationRelationship',
        :'workflow_info' => :'WorkflowWorkflowInfoRelationship'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'cloud_resource',
        :'output',
        :'run_state',
        :'stderr',
        :'stdout',
        :'variables',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::TerraformExecutorAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::TerraformExecutorAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'terraform.Executor'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'terraform.Executor'
      end

      if attributes.key?(:'cloud_resource')
        if (value = attributes[:'cloud_resource']).is_a?(Array)
          self.cloud_resource = value
        end
      end

      if attributes.key?(:'operation')
        self.operation = attributes[:'operation']
      else
        self.operation = 'Create'
      end

      if attributes.key?(:'output')
        self.output = attributes[:'output']
      end

      if attributes.key?(:'platform_type')
        self.platform_type = attributes[:'platform_type']
      end

      if attributes.key?(:'run_state')
        if (value = attributes[:'run_state']).is_a?(Array)
          self.run_state = value
        end
      end

      if attributes.key?(:'source_folder_name')
        self.source_folder_name = attributes[:'source_folder_name']
      end

      if attributes.key?(:'source_folder_path')
        self.source_folder_path = attributes[:'source_folder_path']
      end

      if attributes.key?(:'source_location')
        self.source_location = attributes[:'source_location']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'stderr')
        self.stderr = attributes[:'stderr']
      end

      if attributes.key?(:'stdout')
        self.stdout = attributes[:'stdout']
      end

      if attributes.key?(:'task_id')
        self.task_id = attributes[:'task_id']
      end

      if attributes.key?(:'variables')
        self.variables = attributes[:'variables']
      end

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.key?(:'registered_device')
        self.registered_device = attributes[:'registered_device']
      end

      if attributes.key?(:'workflow_info')
        self.workflow_info = attributes[:'workflow_info']
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
      class_id_validator = EnumAttributeValidator.new('String', ["terraform.Executor"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["terraform.Executor"])
      return false unless object_type_validator.valid?(@object_type)
      operation_validator = EnumAttributeValidator.new('String', ["Create", "Update", "Delete"])
      return false unless operation_validator.valid?(@operation)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["terraform.Executor"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["terraform.Executor"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] operation Object to be assigned
    def operation=(operation)
      validator = EnumAttributeValidator.new('String', ["Create", "Update", "Delete"])
      unless validator.valid?(operation)
        fail ArgumentError, "invalid value for \"operation\", must be one of #{validator.allowable_values}."
      end
      @operation = operation
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          cloud_resource == o.cloud_resource &&
          operation == o.operation &&
          output == o.output &&
          platform_type == o.platform_type &&
          run_state == o.run_state &&
          source_folder_name == o.source_folder_name &&
          source_folder_path == o.source_folder_path &&
          source_location == o.source_location &&
          status == o.status &&
          stderr == o.stderr &&
          stdout == o.stdout &&
          task_id == o.task_id &&
          variables == o.variables &&
          account == o.account &&
          registered_device == o.registered_device &&
          workflow_info == o.workflow_info
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, cloud_resource, operation, output, platform_type, run_state, source_folder_name, source_folder_path, source_location, status, stderr, stdout, task_id, variables, account, registered_device, workflow_info].hash
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
