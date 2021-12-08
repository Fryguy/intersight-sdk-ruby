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
  class TelemetryDruidScanRequestAllOf
    attr_accessor :data_source

    # A JSON Object representing ISO-8601 Intervals. This defines the time ranges to run the query over.
    attr_accessor :intervals

    # How the results are represented, list, compactedList or valueVector. Currently only list is supported.
    attr_accessor :result_format

    attr_accessor :filter

    # A String array of dimensions and metrics to scan. If left empty, all dimensions and metrics are returned.
    attr_accessor :columns

    # The maximum number of rows buffered before being returned to the client.
    attr_accessor :batch_size

    # How many rows to return. If not specified, all rows will be returned.
    attr_accessor :limit

    # The ordering of returned rows based on timestamp. \"ascending\", \"descending\", and \"none\" (default) are supported. Currently, \"ascending\" and \"descending\" are only supported for queries where the __time column is included in the columns field and the requirements outlined in the time ordering section are met.
    attr_accessor :order

    # Return results consistent with the legacy \"scan-query\" contrib extension. Defaults to the value set by druid.query.scan.legacy, which in turn defaults to false.
    attr_accessor :legacy

    attr_accessor :context

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
        :'data_source' => :'dataSource',
        :'intervals' => :'intervals',
        :'result_format' => :'resultFormat',
        :'filter' => :'filter',
        :'columns' => :'columns',
        :'batch_size' => :'batchSize',
        :'limit' => :'limit',
        :'order' => :'order',
        :'legacy' => :'legacy',
        :'context' => :'context'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'data_source' => :'TelemetryDruidDataSource',
        :'intervals' => :'Array<String>',
        :'result_format' => :'String',
        :'filter' => :'TelemetryDruidFilter',
        :'columns' => :'Array<String>',
        :'batch_size' => :'Integer',
        :'limit' => :'Integer',
        :'order' => :'String',
        :'legacy' => :'Boolean',
        :'context' => :'TelemetryDruidQueryContext'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IntersightClient::TelemetryDruidScanRequestAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IntersightClient::TelemetryDruidScanRequestAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'data_source')
        self.data_source = attributes[:'data_source']
      end

      if attributes.key?(:'intervals')
        if (value = attributes[:'intervals']).is_a?(Array)
          self.intervals = value
        end
      end

      if attributes.key?(:'result_format')
        self.result_format = attributes[:'result_format']
      else
        self.result_format = 'list'
      end

      if attributes.key?(:'filter')
        self.filter = attributes[:'filter']
      end

      if attributes.key?(:'columns')
        if (value = attributes[:'columns']).is_a?(Array)
          self.columns = value
        end
      end

      if attributes.key?(:'batch_size')
        self.batch_size = attributes[:'batch_size']
      else
        self.batch_size = 20480
      end

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.key?(:'order')
        self.order = attributes[:'order']
      else
        self.order = 'none'
      end

      if attributes.key?(:'legacy')
        self.legacy = attributes[:'legacy']
      else
        self.legacy = false
      end

      if attributes.key?(:'context')
        self.context = attributes[:'context']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @data_source.nil?
        invalid_properties.push('invalid value for "data_source", data_source cannot be nil.')
      end

      if @intervals.nil?
        invalid_properties.push('invalid value for "intervals", intervals cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @data_source.nil?
      return false if @intervals.nil?
      result_format_validator = EnumAttributeValidator.new('String', ["list"])
      return false unless result_format_validator.valid?(@result_format)
      order_validator = EnumAttributeValidator.new('String', ["none", "ascending", "descending"])
      return false unless order_validator.valid?(@order)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] result_format Object to be assigned
    def result_format=(result_format)
      validator = EnumAttributeValidator.new('String', ["list"])
      unless validator.valid?(result_format)
        fail ArgumentError, "invalid value for \"result_format\", must be one of #{validator.allowable_values}."
      end
      @result_format = result_format
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] order Object to be assigned
    def order=(order)
      validator = EnumAttributeValidator.new('String', ["none", "ascending", "descending"])
      unless validator.valid?(order)
        fail ArgumentError, "invalid value for \"order\", must be one of #{validator.allowable_values}."
      end
      @order = order
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          data_source == o.data_source &&
          intervals == o.intervals &&
          result_format == o.result_format &&
          filter == o.filter &&
          columns == o.columns &&
          batch_size == o.batch_size &&
          limit == o.limit &&
          order == o.order &&
          legacy == o.legacy &&
          context == o.context
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [data_source, intervals, result_format, filter, columns, batch_size, limit, order, legacy, context].hash
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
