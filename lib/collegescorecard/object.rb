require "ostruct"

module Collegescorecard
    class Object
        attr_reader :attributes, :raw_data
        
        def initialize(attributes)
            @raw_data = attributes
            @attributes = OpenStruct.new(attributes)
        end

        def method_missing(method, *args, &block) 
            attribute = @attributes.send(method, *args, &block)
            attribute.is_a?(Hash) ? Object.new(attribute) : attribute
        end

        def respond_to_missing?(method, include_private = false)
            false 
        end
    end
end 