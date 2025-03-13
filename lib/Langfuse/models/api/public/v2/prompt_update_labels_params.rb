# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module V2
          class PromptUpdateLabelsParams < Langfuse::BaseModel
            # @!parse
            #   extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute new_labels
            #   New labels for the prompt version. Labels are unique across versions. The
            #     "latest" label is reserved and managed by Langfuse.
            #
            #   @return [Array<String>]
            required :new_labels, Langfuse::ArrayOf[String], api_name: :newLabels

            # @!parse
            #   # @param name [String]
            #   # @param new_labels [Array<String>]
            #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
            #   #
            #   def initialize(name:, new_labels:, request_options: {}, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void
          end
        end
      end
    end
  end
end
