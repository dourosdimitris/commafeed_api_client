=begin
#CommaFeed API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'date'
require 'time'

module OpenapiClient
  # User settings
  class Settings
    # user's preferred language, english if none
    attr_accessor :language

    # user reads all entries or unread entries only
    attr_accessor :reading_mode

    # user reads entries in ascending or descending order
    attr_accessor :reading_order

    # user wants category and feeds with no unread entries shown
    attr_accessor :show_read

    # In expanded view, scroll through entries mark them as read
    attr_accessor :scroll_marks

    # user's custom css for the website
    attr_accessor :custom_css

    # user's custom js for the website
    attr_accessor :custom_js

    # user's preferred scroll speed when navigating between entries
    attr_accessor :scroll_speed

    # whether to scroll to the selected entry
    attr_accessor :scroll_mode

    # number of entries to keep above the selected entry when scrolling
    attr_accessor :entries_to_keep_on_top_when_scrolling

    # whether to show the star icon in the header of entries
    attr_accessor :star_icon_display_mode

    # whether to show the external link icon in the header of entries
    attr_accessor :external_link_icon_display_mode

    # ask for confirmation when marking all entries as read
    attr_accessor :mark_all_as_read_confirmation

    # show commafeed's own context menu on right click
    attr_accessor :custom_context_menu

    # on mobile, show action buttons at the bottom of the screen
    attr_accessor :mobile_footer

    # show unread count in the title
    attr_accessor :unread_count_title

    # show unread count in the favicon
    attr_accessor :unread_count_favicon

    attr_accessor :sharing_settings

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
        :'language' => :'language',
        :'reading_mode' => :'readingMode',
        :'reading_order' => :'readingOrder',
        :'show_read' => :'showRead',
        :'scroll_marks' => :'scrollMarks',
        :'custom_css' => :'customCss',
        :'custom_js' => :'customJs',
        :'scroll_speed' => :'scrollSpeed',
        :'scroll_mode' => :'scrollMode',
        :'entries_to_keep_on_top_when_scrolling' => :'entriesToKeepOnTopWhenScrolling',
        :'star_icon_display_mode' => :'starIconDisplayMode',
        :'external_link_icon_display_mode' => :'externalLinkIconDisplayMode',
        :'mark_all_as_read_confirmation' => :'markAllAsReadConfirmation',
        :'custom_context_menu' => :'customContextMenu',
        :'mobile_footer' => :'mobileFooter',
        :'unread_count_title' => :'unreadCountTitle',
        :'unread_count_favicon' => :'unreadCountFavicon',
        :'sharing_settings' => :'sharingSettings'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'language' => :'String',
        :'reading_mode' => :'String',
        :'reading_order' => :'String',
        :'show_read' => :'Boolean',
        :'scroll_marks' => :'Boolean',
        :'custom_css' => :'String',
        :'custom_js' => :'String',
        :'scroll_speed' => :'Integer',
        :'scroll_mode' => :'String',
        :'entries_to_keep_on_top_when_scrolling' => :'Integer',
        :'star_icon_display_mode' => :'String',
        :'external_link_icon_display_mode' => :'String',
        :'mark_all_as_read_confirmation' => :'Boolean',
        :'custom_context_menu' => :'Boolean',
        :'mobile_footer' => :'Boolean',
        :'unread_count_title' => :'Boolean',
        :'unread_count_favicon' => :'Boolean',
        :'sharing_settings' => :'SharingSettings'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Settings` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Settings`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      else
        self.language = nil
      end

      if attributes.key?(:'reading_mode')
        self.reading_mode = attributes[:'reading_mode']
      else
        self.reading_mode = nil
      end

      if attributes.key?(:'reading_order')
        self.reading_order = attributes[:'reading_order']
      else
        self.reading_order = nil
      end

      if attributes.key?(:'show_read')
        self.show_read = attributes[:'show_read']
      else
        self.show_read = nil
      end

      if attributes.key?(:'scroll_marks')
        self.scroll_marks = attributes[:'scroll_marks']
      else
        self.scroll_marks = nil
      end

      if attributes.key?(:'custom_css')
        self.custom_css = attributes[:'custom_css']
      end

      if attributes.key?(:'custom_js')
        self.custom_js = attributes[:'custom_js']
      end

      if attributes.key?(:'scroll_speed')
        self.scroll_speed = attributes[:'scroll_speed']
      else
        self.scroll_speed = nil
      end

      if attributes.key?(:'scroll_mode')
        self.scroll_mode = attributes[:'scroll_mode']
      else
        self.scroll_mode = nil
      end

      if attributes.key?(:'entries_to_keep_on_top_when_scrolling')
        self.entries_to_keep_on_top_when_scrolling = attributes[:'entries_to_keep_on_top_when_scrolling']
      else
        self.entries_to_keep_on_top_when_scrolling = nil
      end

      if attributes.key?(:'star_icon_display_mode')
        self.star_icon_display_mode = attributes[:'star_icon_display_mode']
      else
        self.star_icon_display_mode = nil
      end

      if attributes.key?(:'external_link_icon_display_mode')
        self.external_link_icon_display_mode = attributes[:'external_link_icon_display_mode']
      else
        self.external_link_icon_display_mode = nil
      end

      if attributes.key?(:'mark_all_as_read_confirmation')
        self.mark_all_as_read_confirmation = attributes[:'mark_all_as_read_confirmation']
      else
        self.mark_all_as_read_confirmation = nil
      end

      if attributes.key?(:'custom_context_menu')
        self.custom_context_menu = attributes[:'custom_context_menu']
      else
        self.custom_context_menu = nil
      end

      if attributes.key?(:'mobile_footer')
        self.mobile_footer = attributes[:'mobile_footer']
      else
        self.mobile_footer = nil
      end

      if attributes.key?(:'unread_count_title')
        self.unread_count_title = attributes[:'unread_count_title']
      else
        self.unread_count_title = nil
      end

      if attributes.key?(:'unread_count_favicon')
        self.unread_count_favicon = attributes[:'unread_count_favicon']
      else
        self.unread_count_favicon = nil
      end

      if attributes.key?(:'sharing_settings')
        self.sharing_settings = attributes[:'sharing_settings']
      else
        self.sharing_settings = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @language.nil?
        invalid_properties.push('invalid value for "language", language cannot be nil.')
      end

      if @reading_mode.nil?
        invalid_properties.push('invalid value for "reading_mode", reading_mode cannot be nil.')
      end

      if @reading_order.nil?
        invalid_properties.push('invalid value for "reading_order", reading_order cannot be nil.')
      end

      if @show_read.nil?
        invalid_properties.push('invalid value for "show_read", show_read cannot be nil.')
      end

      if @scroll_marks.nil?
        invalid_properties.push('invalid value for "scroll_marks", scroll_marks cannot be nil.')
      end

      if @scroll_speed.nil?
        invalid_properties.push('invalid value for "scroll_speed", scroll_speed cannot be nil.')
      end

      if @scroll_mode.nil?
        invalid_properties.push('invalid value for "scroll_mode", scroll_mode cannot be nil.')
      end

      if @entries_to_keep_on_top_when_scrolling.nil?
        invalid_properties.push('invalid value for "entries_to_keep_on_top_when_scrolling", entries_to_keep_on_top_when_scrolling cannot be nil.')
      end

      if @star_icon_display_mode.nil?
        invalid_properties.push('invalid value for "star_icon_display_mode", star_icon_display_mode cannot be nil.')
      end

      if @external_link_icon_display_mode.nil?
        invalid_properties.push('invalid value for "external_link_icon_display_mode", external_link_icon_display_mode cannot be nil.')
      end

      if @mark_all_as_read_confirmation.nil?
        invalid_properties.push('invalid value for "mark_all_as_read_confirmation", mark_all_as_read_confirmation cannot be nil.')
      end

      if @custom_context_menu.nil?
        invalid_properties.push('invalid value for "custom_context_menu", custom_context_menu cannot be nil.')
      end

      if @mobile_footer.nil?
        invalid_properties.push('invalid value for "mobile_footer", mobile_footer cannot be nil.')
      end

      if @unread_count_title.nil?
        invalid_properties.push('invalid value for "unread_count_title", unread_count_title cannot be nil.')
      end

      if @unread_count_favicon.nil?
        invalid_properties.push('invalid value for "unread_count_favicon", unread_count_favicon cannot be nil.')
      end

      if @sharing_settings.nil?
        invalid_properties.push('invalid value for "sharing_settings", sharing_settings cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @language.nil?
      return false if @reading_mode.nil?
      reading_mode_validator = EnumAttributeValidator.new('String', ["all,unread"])
      return false unless reading_mode_validator.valid?(@reading_mode)
      return false if @reading_order.nil?
      reading_order_validator = EnumAttributeValidator.new('String', ["asc,desc"])
      return false unless reading_order_validator.valid?(@reading_order)
      return false if @show_read.nil?
      return false if @scroll_marks.nil?
      return false if @scroll_speed.nil?
      return false if @scroll_mode.nil?
      scroll_mode_validator = EnumAttributeValidator.new('String', ["always,never,if_needed"])
      return false unless scroll_mode_validator.valid?(@scroll_mode)
      return false if @entries_to_keep_on_top_when_scrolling.nil?
      return false if @star_icon_display_mode.nil?
      star_icon_display_mode_validator = EnumAttributeValidator.new('String', ["always,never,on_desktop,on_mobile"])
      return false unless star_icon_display_mode_validator.valid?(@star_icon_display_mode)
      return false if @external_link_icon_display_mode.nil?
      external_link_icon_display_mode_validator = EnumAttributeValidator.new('String', ["always,never,on_desktop,on_mobile"])
      return false unless external_link_icon_display_mode_validator.valid?(@external_link_icon_display_mode)
      return false if @mark_all_as_read_confirmation.nil?
      return false if @custom_context_menu.nil?
      return false if @mobile_footer.nil?
      return false if @unread_count_title.nil?
      return false if @unread_count_favicon.nil?
      return false if @sharing_settings.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reading_mode Object to be assigned
    def reading_mode=(reading_mode)
      validator = EnumAttributeValidator.new('String', ["all,unread"])
      unless validator.valid?(reading_mode)
        fail ArgumentError, "invalid value for \"reading_mode\", must be one of #{validator.allowable_values}."
      end
      @reading_mode = reading_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reading_order Object to be assigned
    def reading_order=(reading_order)
      validator = EnumAttributeValidator.new('String', ["asc,desc"])
      unless validator.valid?(reading_order)
        fail ArgumentError, "invalid value for \"reading_order\", must be one of #{validator.allowable_values}."
      end
      @reading_order = reading_order
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] scroll_mode Object to be assigned
    def scroll_mode=(scroll_mode)
      validator = EnumAttributeValidator.new('String', ["always,never,if_needed"])
      unless validator.valid?(scroll_mode)
        fail ArgumentError, "invalid value for \"scroll_mode\", must be one of #{validator.allowable_values}."
      end
      @scroll_mode = scroll_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] star_icon_display_mode Object to be assigned
    def star_icon_display_mode=(star_icon_display_mode)
      validator = EnumAttributeValidator.new('String', ["always,never,on_desktop,on_mobile"])
      unless validator.valid?(star_icon_display_mode)
        fail ArgumentError, "invalid value for \"star_icon_display_mode\", must be one of #{validator.allowable_values}."
      end
      @star_icon_display_mode = star_icon_display_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] external_link_icon_display_mode Object to be assigned
    def external_link_icon_display_mode=(external_link_icon_display_mode)
      validator = EnumAttributeValidator.new('String', ["always,never,on_desktop,on_mobile"])
      unless validator.valid?(external_link_icon_display_mode)
        fail ArgumentError, "invalid value for \"external_link_icon_display_mode\", must be one of #{validator.allowable_values}."
      end
      @external_link_icon_display_mode = external_link_icon_display_mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          language == o.language &&
          reading_mode == o.reading_mode &&
          reading_order == o.reading_order &&
          show_read == o.show_read &&
          scroll_marks == o.scroll_marks &&
          custom_css == o.custom_css &&
          custom_js == o.custom_js &&
          scroll_speed == o.scroll_speed &&
          scroll_mode == o.scroll_mode &&
          entries_to_keep_on_top_when_scrolling == o.entries_to_keep_on_top_when_scrolling &&
          star_icon_display_mode == o.star_icon_display_mode &&
          external_link_icon_display_mode == o.external_link_icon_display_mode &&
          mark_all_as_read_confirmation == o.mark_all_as_read_confirmation &&
          custom_context_menu == o.custom_context_menu &&
          mobile_footer == o.mobile_footer &&
          unread_count_title == o.unread_count_title &&
          unread_count_favicon == o.unread_count_favicon &&
          sharing_settings == o.sharing_settings
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [language, reading_mode, reading_order, show_read, scroll_marks, custom_css, custom_js, scroll_speed, scroll_mode, entries_to_keep_on_top_when_scrolling, star_icon_display_mode, external_link_icon_display_mode, mark_all_as_read_confirmation, custom_context_menu, mobile_footer, unread_count_title, unread_count_favicon, sharing_settings].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
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
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
