=begin
#SIRIUS Nightsky API

#REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.

OpenAPI spec version: v0.9 on SIRIUS 5.6.3-SNAPSHOT

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

require 'date'

module RubySirius
  # User/developer friendly parameter subset for the Formula/SIRIUS tool
  class Sirius
    # tags whether the tool is enabled
    attr_accessor :enabled

    # Instrument specific profile for internal algorithms  Just select what comes closest to the instrument that was used for measuring the data.
    attr_accessor :profile

    # Number of formula candidates to keep as result list (Formula Candidates).
    attr_accessor :number_of_candidates

    # Use this parameter if you want to force SIRIUS to report at least  NumberOfCandidatesPerIon results per ionization.  if <= 0, this parameter will have no effect and just the top  NumberOfCandidates results will be reported.
    attr_accessor :number_of_candidates_per_ion

    # Maximum allowed mass accuracy. Only molecular formulas within this mass window are considered.
    attr_accessor :mass_accuracy_ms2ppm

    # Specify how isotope patterns in MS/MS should be handled.  <p>  FILTER: When filtering is enabled, molecular formulas are excluded if their  theoretical isotope pattern does not match the theoretical one, even if their MS/MS pattern has high score.  <p>  SCORE: Use them for SCORING. To use this the instrument should produce clear MS/MS isotope patterns  <p>  IGNORE: Ignore that there might be isotope patterns in MS/MS
    attr_accessor :isotope_ms2_settings

    # List Structure database to extract molecular formulas from to reduce formula search space.  SIRIUS is quite good at de novo formula annotation, so only enable if you have a good reason.
    attr_accessor :formula_search_dbs

    # These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Enforced: Enforced elements are always considered
    attr_accessor :enforced_formula_constraints

    # These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Fallback: Fallback elements are used, if the auto-detection fails (e.g. no isotope pattern available)
    attr_accessor :fallback_formula_constraints

    # These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Detectable: Detectable elements are added to the chemical alphabet, if there are indications for them (e.g. in isotope pattern)
    attr_accessor :detectable_elements

    attr_accessor :ilp_timeout

    attr_accessor :use_heuristic

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
        :'enabled' => :'enabled',
        :'profile' => :'profile',
        :'number_of_candidates' => :'numberOfCandidates',
        :'number_of_candidates_per_ion' => :'numberOfCandidatesPerIon',
        :'mass_accuracy_ms2ppm' => :'massAccuracyMS2ppm',
        :'isotope_ms2_settings' => :'isotopeMs2Settings',
        :'formula_search_dbs' => :'formulaSearchDBs',
        :'enforced_formula_constraints' => :'enforcedFormulaConstraints',
        :'fallback_formula_constraints' => :'fallbackFormulaConstraints',
        :'detectable_elements' => :'detectableElements',
        :'ilp_timeout' => :'ilpTimeout',
        :'use_heuristic' => :'useHeuristic'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'enabled' => :'Object',
        :'profile' => :'Object',
        :'number_of_candidates' => :'Object',
        :'number_of_candidates_per_ion' => :'Object',
        :'mass_accuracy_ms2ppm' => :'Object',
        :'isotope_ms2_settings' => :'Object',
        :'formula_search_dbs' => :'Object',
        :'enforced_formula_constraints' => :'Object',
        :'fallback_formula_constraints' => :'Object',
        :'detectable_elements' => :'Object',
        :'ilp_timeout' => :'Object',
        :'use_heuristic' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `RubySirius::Sirius` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `RubySirius::Sirius`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'profile')
        self.profile = attributes[:'profile']
      end

      if attributes.key?(:'number_of_candidates')
        self.number_of_candidates = attributes[:'number_of_candidates']
      end

      if attributes.key?(:'number_of_candidates_per_ion')
        self.number_of_candidates_per_ion = attributes[:'number_of_candidates_per_ion']
      end

      if attributes.key?(:'mass_accuracy_ms2ppm')
        self.mass_accuracy_ms2ppm = attributes[:'mass_accuracy_ms2ppm']
      end

      if attributes.key?(:'isotope_ms2_settings')
        self.isotope_ms2_settings = attributes[:'isotope_ms2_settings']
      end

      if attributes.key?(:'formula_search_dbs')
        if (value = attributes[:'formula_search_dbs']).is_a?(Array)
          self.formula_search_dbs = value
        end
      end

      if attributes.key?(:'enforced_formula_constraints')
        self.enforced_formula_constraints = attributes[:'enforced_formula_constraints']
      end

      if attributes.key?(:'fallback_formula_constraints')
        self.fallback_formula_constraints = attributes[:'fallback_formula_constraints']
      end

      if attributes.key?(:'detectable_elements')
        if (value = attributes[:'detectable_elements']).is_a?(Array)
          self.detectable_elements = value
        end
      end

      if attributes.key?(:'ilp_timeout')
        self.ilp_timeout = attributes[:'ilp_timeout']
      end

      if attributes.key?(:'use_heuristic')
        self.use_heuristic = attributes[:'use_heuristic']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      profile_validator = EnumAttributeValidator.new('Object', ['QTOF', 'ORBI', 'FTICR'])
      return false unless profile_validator.valid?(@profile)
      isotope_ms2_settings_validator = EnumAttributeValidator.new('Object', ['IGNORE', 'FILTER', 'SCORE'])
      return false unless isotope_ms2_settings_validator.valid?(@isotope_ms2_settings)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] profile Object to be assigned
    def profile=(profile)
      validator = EnumAttributeValidator.new('Object', ['QTOF', 'ORBI', 'FTICR'])
      unless validator.valid?(profile)
        fail ArgumentError, "invalid value for \"profile\", must be one of #{validator.allowable_values}."
      end
      @profile = profile
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] isotope_ms2_settings Object to be assigned
    def isotope_ms2_settings=(isotope_ms2_settings)
      validator = EnumAttributeValidator.new('Object', ['IGNORE', 'FILTER', 'SCORE'])
      unless validator.valid?(isotope_ms2_settings)
        fail ArgumentError, "invalid value for \"isotope_ms2_settings\", must be one of #{validator.allowable_values}."
      end
      @isotope_ms2_settings = isotope_ms2_settings
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          enabled == o.enabled &&
          profile == o.profile &&
          number_of_candidates == o.number_of_candidates &&
          number_of_candidates_per_ion == o.number_of_candidates_per_ion &&
          mass_accuracy_ms2ppm == o.mass_accuracy_ms2ppm &&
          isotope_ms2_settings == o.isotope_ms2_settings &&
          formula_search_dbs == o.formula_search_dbs &&
          enforced_formula_constraints == o.enforced_formula_constraints &&
          fallback_formula_constraints == o.fallback_formula_constraints &&
          detectable_elements == o.detectable_elements &&
          ilp_timeout == o.ilp_timeout &&
          use_heuristic == o.use_heuristic
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [enabled, profile, number_of_candidates, number_of_candidates_per_ion, mass_accuracy_ms2ppm, isotope_ms2_settings, formula_search_dbs, enforced_formula_constraints, fallback_formula_constraints, detectable_elements, ilp_timeout, use_heuristic].hash
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
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
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
      when :DateTime
        DateTime.parse(value)
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
        RubySirius.const_get(type).build_from_hash(value)
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
    end  end
end
