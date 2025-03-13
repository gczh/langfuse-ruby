# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module Datasets
          class RunRetrieveParams < Langfuse::BaseModel
            # @!parse
            #   extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            # @!attribute dataset_name
            #
            #   @return [String]
            required :dataset_name, String

            # @!parse
            #   # @param dataset_name [String]
            #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
            #   #
            #   def initialize(dataset_name:, request_options: {}, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void
          end
        end
      end
    end
  end
end
