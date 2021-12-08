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
  # Response to Backup Policy requests and queries.
  class HyperflexClusterBackupPolicyInventory < MoBaseMo
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    # Validate, Deploy, Prepare, Commit, or Abort the Backup Policy. Allowed values are \"VALIDATE\", \"DEPLOY\", \"PREPARE\", \"COMMIT\", \"ABORT\". * `VALIDATE` - Check for problems in policy request without deploying. * `DEPLOY` - Remove the policy.  Only allowed when cleanup field is true. * `PREPARE` - Prepare the policy for subsequent \"COMMIT\" or \"ABORT\".  Only allowed when cleanup field is false. * `COMMIT` - Commit the prepared policy.  Only allowed when cleanup field is false. * `ABORT` - Abort the prepared policy.  Only allowed when cleanup field is false.
    attr_accessor :action

    # If true, remove the policy. Otherwise proceed with the specified policy action.
    attr_accessor :cleanup

    # Indicates if the HyperFlex Cluster is the source cluster or the target cluster. When set to true, the HyperFlex Cluster is the source for VM backups. When set to false, the HyperFlex Cluster is the target cluster where VM backups are saved.
    attr_accessor :is_source

    # Details from associated HyperFlex job execution.
    attr_accessor :job_details

    # Job Exception message from associated HyperFlex job execution.
    attr_accessor :job_exception_message

    # Job ID of associated HyperFlex job.
    attr_accessor :job_id

    # State of the associated HyperFlex job. When present possible values are \"RUNNING\", \"COMPLETED\" or \"EXCEPTION\". * `RUNNING` - HyperFlex policy job is currently \"RUNNING\". * `COMPLETED` - HyperFlex policy job completed successfully. * `EXCEPTION` - HyperFlex policy job failed.
    attr_accessor :job_state

    # Intersight HyperFlex Cluster Backup Policy MOID.
    attr_accessor :policy_moid

    # Unique request ID allowing retry of the same logical request following a transient communication failure.
    attr_accessor :request_id

    attr_accessor :settings

    # UUID of the source HyperFlex Cluster.
    attr_accessor :source_uuid

    # UUID of the target HyperFlex Cluster.
    attr_accessor :target_uuid

    # Version of the Backup Policy.
    attr_accessor :version

    attr_accessor :src_cluster

    attr_accessor :tgt_cluster

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
        :'action' => :'Action',
        :'cleanup' => :'Cleanup',
        :'is_source' => :'IsSource',
        :'job_details' => :'JobDetails',
        :'job_exception_message' => :'JobExceptionMessage',
        :'job_id' => :'JobId',
        :'job_state' => :'JobState',
        :'policy_moid' => :'PolicyMoid',
        :'request_id' => :'RequestId',
        :'settings' => :'Settings',
        :'source_uuid' => :'SourceUuid',
        :'target_uuid' => :'TargetUuid',
        :'version' => :'Version',
        :'src_cluster' => :'SrcCluster',
        :'tgt_cluster' => :'TgtCluster'
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
        :'action' => :'String',
        :'cleanup' => :'Boolean',
        :'is_source' => :'Boolean',
        :'job_details' => :'String',
        :'job_exception_message' => :'String',
        :'job_id' => :'String',
        :'job_state' => :'String',
        :'policy_moid' => :'String',
        :'request_id' => :'String',
        :'settings' => :'HyperflexBackupPolicySettings',
        :'source_uuid' => :'String',
        :'target_uuid' => :'String',
        :'version' => :'Integer',
        :'src_cluster' => :'HyperflexClusterRelationship',
        :'tgt_cluster' => :'HyperflexClusterRelationship'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'settings',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'HyperflexClusterBackupPolicyInventoryAllOf',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::HyperflexClusterBackupPolicyInventory` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::HyperflexClusterBackupPolicyInventory`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'hyperflex.ClusterBackupPolicyInventory'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'hyperflex.ClusterBackupPolicyInventory'
      end

      if attributes.key?(:'action')
        self.action = attributes[:'action']
      else
        self.action = 'VALIDATE'
      end

      if attributes.key?(:'cleanup')
        self.cleanup = attributes[:'cleanup']
      end

      if attributes.key?(:'is_source')
        self.is_source = attributes[:'is_source']
      end

      if attributes.key?(:'job_details')
        self.job_details = attributes[:'job_details']
      end

      if attributes.key?(:'job_exception_message')
        self.job_exception_message = attributes[:'job_exception_message']
      end

      if attributes.key?(:'job_id')
        self.job_id = attributes[:'job_id']
      end

      if attributes.key?(:'job_state')
        self.job_state = attributes[:'job_state']
      else
        self.job_state = 'RUNNING'
      end

      if attributes.key?(:'policy_moid')
        self.policy_moid = attributes[:'policy_moid']
      end

      if attributes.key?(:'request_id')
        self.request_id = attributes[:'request_id']
      end

      if attributes.key?(:'settings')
        self.settings = attributes[:'settings']
      end

      if attributes.key?(:'source_uuid')
        self.source_uuid = attributes[:'source_uuid']
      end

      if attributes.key?(:'target_uuid')
        self.target_uuid = attributes[:'target_uuid']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'src_cluster')
        self.src_cluster = attributes[:'src_cluster']
      end

      if attributes.key?(:'tgt_cluster')
        self.tgt_cluster = attributes[:'tgt_cluster']
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
      class_id_validator = EnumAttributeValidator.new('String', ["hyperflex.ClusterBackupPolicyInventory"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["hyperflex.ClusterBackupPolicyInventory"])
      return false unless object_type_validator.valid?(@object_type)
      action_validator = EnumAttributeValidator.new('String', ["VALIDATE", "DEPLOY", "PREPARE", "COMMIT", "ABORT"])
      return false unless action_validator.valid?(@action)
      job_state_validator = EnumAttributeValidator.new('String', ["RUNNING", "COMPLETED", "EXCEPTION"])
      return false unless job_state_validator.valid?(@job_state)
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["hyperflex.ClusterBackupPolicyInventory"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["hyperflex.ClusterBackupPolicyInventory"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action)
      validator = EnumAttributeValidator.new('String', ["VALIDATE", "DEPLOY", "PREPARE", "COMMIT", "ABORT"])
      unless validator.valid?(action)
        fail ArgumentError, "invalid value for \"action\", must be one of #{validator.allowable_values}."
      end
      @action = action
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] job_state Object to be assigned
    def job_state=(job_state)
      validator = EnumAttributeValidator.new('String', ["RUNNING", "COMPLETED", "EXCEPTION"])
      unless validator.valid?(job_state)
        fail ArgumentError, "invalid value for \"job_state\", must be one of #{validator.allowable_values}."
      end
      @job_state = job_state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          class_id == o.class_id &&
          object_type == o.object_type &&
          action == o.action &&
          cleanup == o.cleanup &&
          is_source == o.is_source &&
          job_details == o.job_details &&
          job_exception_message == o.job_exception_message &&
          job_id == o.job_id &&
          job_state == o.job_state &&
          policy_moid == o.policy_moid &&
          request_id == o.request_id &&
          settings == o.settings &&
          source_uuid == o.source_uuid &&
          target_uuid == o.target_uuid &&
          version == o.version &&
          src_cluster == o.src_cluster &&
          tgt_cluster == o.tgt_cluster && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, action, cleanup, is_source, job_details, job_exception_message, job_id, job_state, policy_moid, request_id, settings, source_uuid, target_uuid, version, src_cluster, tgt_cluster].hash
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
