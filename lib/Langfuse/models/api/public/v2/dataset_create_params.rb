# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module V2
          class DatasetCreateParams < Langfuse::BaseModel
            # @!parse
            #   extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

            # @!attribute [r] metadata
            #
            #   @return [Object, nil]
            optional :metadata, Langfuse::Unknown

            # @!parse
            #   # @return [Object]
            #   attr_writer :metadata

            # @!parse
            #   # @param name [String]
            #   # @param description [String, nil]
            #   # @param metadata [Object]
            #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
            #   #
            #   def initialize(name:, description: nil, metadata: nil, request_options: {}, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void
          end
        end
      end
    end
  end
end
