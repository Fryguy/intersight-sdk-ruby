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
  # Cluster profile specifies the config profile for a Kubernetes cluster. It also depicts operations to control the life cycle of a Kubernetes cluster.
  class KubernetesClusterProfile < PolicyAbstractConfigProfile
    # The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data.
    attr_accessor :class_id

    # The fully-qualified name of the instantiated, concrete type. The value should be the same as the 'ClassId' property.
    attr_accessor :object_type

    attr_accessor :action_info

    attr_accessor :cert_config

    attr_accessor :essential_addons

    attr_accessor :kube_config

    # Management mode for the cluster. In some cases Intersight kubernetes service is not required to provision and manage the management entities and endpoints (for e.g. EKS). In most other cases it will be required to provision and manage these entities and endpoints. * `Provided` - Cluster management entities and endpoints are provided by the infrastructure platform. * `Managed` - Cluster management entities and endpoints are provisioned and managed by Intersight kubernetes service.
    attr_accessor :managed_mode

    attr_accessor :management_config

    # Status of the Kubernetes cluster and its nodes. * `Undeployed` - The cluster is undeployed. * `Configuring` - The cluster is being configured. * `Deploying` - The cluster is being deployed. * `Undeploying` - The cluster is being undeployed. * `DeployFailedTerminal` - The cluster deployment failed terminally and can not be recovered. * `DeployFailed` - The cluster deployment failed. * `Upgrading` - The cluster is being upgraded. * `Deleting` - The cluster is being deleted. * `DeleteFailed` - The cluster delete failed. * `Ready` - The cluster is ready for use. * `Active` - The cluster is being active. * `Shutdown` - All the nodes in the cluster are powered off. * `Terminated` - The cluster is terminated. * `Deployed` - The cluster is deployed. The cluster may not yet be ready for use. * `UndeployFailed` - The cluster undeploy action failed. * `NotReady` - The cluster is created and some nodes are not ready.
    attr_accessor :status

    attr_accessor :aci_cni_profile

    attr_accessor :associated_cluster

    # An array of relationships to ippoolPool resources.
    attr_accessor :cluster_ip_pools

    attr_accessor :container_runtime_config

    # An array of relationships to ippoolIpLease resources.
    attr_accessor :loadbalancer_ip_leases

    attr_accessor :master_vip_lease

    attr_accessor :net_config

    # An array of relationships to kubernetesNodeGroupProfile resources.
    attr_accessor :node_groups

    attr_accessor :organization

    attr_accessor :parent_solution_profile

    attr_accessor :sys_config

    attr_accessor :trusted_registries

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
        :'action_info' => :'ActionInfo',
        :'cert_config' => :'CertConfig',
        :'essential_addons' => :'EssentialAddons',
        :'kube_config' => :'KubeConfig',
        :'managed_mode' => :'ManagedMode',
        :'management_config' => :'ManagementConfig',
        :'status' => :'Status',
        :'aci_cni_profile' => :'AciCniProfile',
        :'associated_cluster' => :'AssociatedCluster',
        :'cluster_ip_pools' => :'ClusterIpPools',
        :'container_runtime_config' => :'ContainerRuntimeConfig',
        :'loadbalancer_ip_leases' => :'LoadbalancerIpLeases',
        :'master_vip_lease' => :'MasterVipLease',
        :'net_config' => :'NetConfig',
        :'node_groups' => :'NodeGroups',
        :'organization' => :'Organization',
        :'parent_solution_profile' => :'ParentSolutionProfile',
        :'sys_config' => :'SysConfig',
        :'trusted_registries' => :'TrustedRegistries',
        :'workflow_info' => :'WorkflowInfo'
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
        :'action_info' => :'KubernetesActionInfo',
        :'cert_config' => :'KubernetesClusterCertificateConfiguration',
        :'essential_addons' => :'Array<KubernetesEssentialAddon>',
        :'kube_config' => :'KubernetesConfiguration',
        :'managed_mode' => :'String',
        :'management_config' => :'KubernetesClusterManagementConfig',
        :'status' => :'String',
        :'aci_cni_profile' => :'KubernetesAciCniProfileRelationship',
        :'associated_cluster' => :'KubernetesClusterRelationship',
        :'cluster_ip_pools' => :'Array<IppoolPoolRelationship>',
        :'container_runtime_config' => :'KubernetesContainerRuntimePolicyRelationship',
        :'loadbalancer_ip_leases' => :'Array<IppoolIpLeaseRelationship>',
        :'master_vip_lease' => :'IppoolIpLeaseRelationship',
        :'net_config' => :'KubernetesNetworkPolicyRelationship',
        :'node_groups' => :'Array<KubernetesNodeGroupProfileRelationship>',
        :'organization' => :'OrganizationOrganizationRelationship',
        :'parent_solution_profile' => :'MoBaseMoRelationship',
        :'sys_config' => :'KubernetesSysConfigPolicyRelationship',
        :'trusted_registries' => :'KubernetesTrustedRegistriesPolicyRelationship',
        :'workflow_info' => :'WorkflowWorkflowInfoRelationship'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'action_info',
        :'cert_config',
        :'essential_addons',
        :'kube_config',
        :'management_config',
        :'cluster_ip_pools',
        :'loadbalancer_ip_leases',
        :'node_groups',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'KubernetesClusterProfileAllOf',
      :'PolicyAbstractConfigProfile'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::KubernetesClusterProfile` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::KubernetesClusterProfile`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'class_id')
        self.class_id = attributes[:'class_id']
      else
        self.class_id = 'kubernetes.ClusterProfile'
      end

      if attributes.key?(:'object_type')
        self.object_type = attributes[:'object_type']
      else
        self.object_type = 'kubernetes.ClusterProfile'
      end

      if attributes.key?(:'action_info')
        self.action_info = attributes[:'action_info']
      end

      if attributes.key?(:'cert_config')
        self.cert_config = attributes[:'cert_config']
      end

      if attributes.key?(:'essential_addons')
        if (value = attributes[:'essential_addons']).is_a?(Array)
          self.essential_addons = value
        end
      end

      if attributes.key?(:'kube_config')
        self.kube_config = attributes[:'kube_config']
      end

      if attributes.key?(:'managed_mode')
        self.managed_mode = attributes[:'managed_mode']
      else
        self.managed_mode = 'Provided'
      end

      if attributes.key?(:'management_config')
        self.management_config = attributes[:'management_config']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = 'Undeployed'
      end

      if attributes.key?(:'aci_cni_profile')
        self.aci_cni_profile = attributes[:'aci_cni_profile']
      end

      if attributes.key?(:'associated_cluster')
        self.associated_cluster = attributes[:'associated_cluster']
      end

      if attributes.key?(:'cluster_ip_pools')
        if (value = attributes[:'cluster_ip_pools']).is_a?(Array)
          self.cluster_ip_pools = value
        end
      end

      if attributes.key?(:'container_runtime_config')
        self.container_runtime_config = attributes[:'container_runtime_config']
      end

      if attributes.key?(:'loadbalancer_ip_leases')
        if (value = attributes[:'loadbalancer_ip_leases']).is_a?(Array)
          self.loadbalancer_ip_leases = value
        end
      end

      if attributes.key?(:'master_vip_lease')
        self.master_vip_lease = attributes[:'master_vip_lease']
      end

      if attributes.key?(:'net_config')
        self.net_config = attributes[:'net_config']
      end

      if attributes.key?(:'node_groups')
        if (value = attributes[:'node_groups']).is_a?(Array)
          self.node_groups = value
        end
      end

      if attributes.key?(:'organization')
        self.organization = attributes[:'organization']
      end

      if attributes.key?(:'parent_solution_profile')
        self.parent_solution_profile = attributes[:'parent_solution_profile']
      end

      if attributes.key?(:'sys_config')
        self.sys_config = attributes[:'sys_config']
      end

      if attributes.key?(:'trusted_registries')
        self.trusted_registries = attributes[:'trusted_registries']
      end

      if attributes.key?(:'workflow_info')
        self.workflow_info = attributes[:'workflow_info']
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
      class_id_validator = EnumAttributeValidator.new('String', ["kubernetes.ClusterProfile"])
      return false unless class_id_validator.valid?(@class_id)
      return false if @object_type.nil?
      object_type_validator = EnumAttributeValidator.new('String', ["kubernetes.ClusterProfile"])
      return false unless object_type_validator.valid?(@object_type)
      managed_mode_validator = EnumAttributeValidator.new('String', ["Provided", "Managed"])
      return false unless managed_mode_validator.valid?(@managed_mode)
      status_validator = EnumAttributeValidator.new('String', ["Undeployed", "Configuring", "Deploying", "Undeploying", "DeployFailedTerminal", "DeployFailed", "Upgrading", "Deleting", "DeleteFailed", "Ready", "Active", "Shutdown", "Terminated", "Deployed", "UndeployFailed", "NotReady"])
      return false unless status_validator.valid?(@status)
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_id Object to be assigned
    def class_id=(class_id)
      validator = EnumAttributeValidator.new('String', ["kubernetes.ClusterProfile"])
      unless validator.valid?(class_id)
        fail ArgumentError, "invalid value for \"class_id\", must be one of #{validator.allowable_values}."
      end
      @class_id = class_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object_type Object to be assigned
    def object_type=(object_type)
      validator = EnumAttributeValidator.new('String', ["kubernetes.ClusterProfile"])
      unless validator.valid?(object_type)
        fail ArgumentError, "invalid value for \"object_type\", must be one of #{validator.allowable_values}."
      end
      @object_type = object_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] managed_mode Object to be assigned
    def managed_mode=(managed_mode)
      validator = EnumAttributeValidator.new('String', ["Provided", "Managed"])
      unless validator.valid?(managed_mode)
        fail ArgumentError, "invalid value for \"managed_mode\", must be one of #{validator.allowable_values}."
      end
      @managed_mode = managed_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["Undeployed", "Configuring", "Deploying", "Undeploying", "DeployFailedTerminal", "DeployFailed", "Upgrading", "Deleting", "DeleteFailed", "Ready", "Active", "Shutdown", "Terminated", "Deployed", "UndeployFailed", "NotReady"])
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
          action_info == o.action_info &&
          cert_config == o.cert_config &&
          essential_addons == o.essential_addons &&
          kube_config == o.kube_config &&
          managed_mode == o.managed_mode &&
          management_config == o.management_config &&
          status == o.status &&
          aci_cni_profile == o.aci_cni_profile &&
          associated_cluster == o.associated_cluster &&
          cluster_ip_pools == o.cluster_ip_pools &&
          container_runtime_config == o.container_runtime_config &&
          loadbalancer_ip_leases == o.loadbalancer_ip_leases &&
          master_vip_lease == o.master_vip_lease &&
          net_config == o.net_config &&
          node_groups == o.node_groups &&
          organization == o.organization &&
          parent_solution_profile == o.parent_solution_profile &&
          sys_config == o.sys_config &&
          trusted_registries == o.trusted_registries &&
          workflow_info == o.workflow_info && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [class_id, object_type, action_info, cert_config, essential_addons, kube_config, managed_mode, management_config, status, aci_cni_profile, associated_cluster, cluster_ip_pools, container_runtime_config, loadbalancer_ip_leases, master_vip_lease, net_config, node_groups, organization, parent_solution_profile, sys_config, trusted_registries, workflow_info].hash
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
