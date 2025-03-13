# frozen_string_literal: true

module Langfuse
  module Models
    module API
      # @abstract
      #
      # (Deprecated. Use usageDetails and costDetails instead.) Standard interface for
      #   usage and cost
      class IngestionUsage < Langfuse::Union
        # (Deprecated. Use usageDetails and costDetails instead.) Standard interface for usage and cost
        variant -> { Langfuse::Models::API::Public::Usage }

        # Usage interface of OpenAI for improved compatibility.
        variant -> { Langfuse::Models::API::IngestionUsage::OpenAIUsage }

        class OpenAIUsage < Langfuse::BaseModel
          # @!attribute completion_tokens
          #
          #   @return [Integer, nil]
          optional :completion_tokens, Integer, api_name: :completionTokens, nil?: true

          # @!attribute prompt_tokens
          #
          #   @return [Integer, nil]
          optional :prompt_tokens, Integer, api_name: :promptTokens, nil?: true

          # @!attribute total_tokens
          #
          #   @return [Integer, nil]
          optional :total_tokens, Integer, api_name: :totalTokens, nil?: true

          # @!parse
          #   # Usage interface of OpenAI for improved compatibility.
          #   #
          #   # @param completion_tokens [Integer, nil]
          #   # @param prompt_tokens [Integer, nil]
          #   # @param total_tokens [Integer, nil]
          #   #
          #   def initialize(completion_tokens: nil, prompt_tokens: nil, total_tokens: nil, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
