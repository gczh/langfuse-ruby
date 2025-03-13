# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module V2
          class PromptRetrieveParams < Langfuse::BaseModel
            # @!parse
            #   extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            # @!attribute label
            #   Label of the prompt to be retrieved. Defaults to "production" if no label or
            #     version is set.
            #
            #   @return [String, nil]
            optional :label, String, nil?: true

            # @!attribute version
            #   Version of the prompt to be retrieved.
            #
            #   @return [Integer, nil]
            optional :version, Integer, nil?: true

            # @!parse
            #   # @param label [String, nil]
            #   # @param version [Integer, nil]
            #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
            #   #
            #   def initialize(label: nil, version: nil, request_options: {}, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void
          end
        end
      end
    end
  end
end
