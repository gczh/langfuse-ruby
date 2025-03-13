# frozen_string_literal: true

module Langfuse
  module Models
    module API
      # @abstract
      #
      class UsageDetails < Langfuse::Union
        IntegerMap = Langfuse::HashOf[Integer]

        variant Langfuse::Models::API::UsageDetails::IntegerMap

        variant -> { Langfuse::Models::API::UsageDetails::OpenAIUsageSchema }

        class OpenAIUsageSchema < Langfuse::BaseModel
          # @!attribute completion_tokens
          #
          #   @return [Integer]
          required :completion_tokens, Integer

          # @!attribute prompt_tokens
          #
          #   @return [Integer]
          required :prompt_tokens, Integer

          # @!attribute total_tokens
          #
          #   @return [Integer]
          required :total_tokens, Integer

          # @!attribute completion_tokens_details
          #
          #   @return [Hash{Symbol=>Integer}, nil]
          optional :completion_tokens_details, Langfuse::HashOf[Integer], nil?: true

          # @!attribute prompt_tokens_details
          #
          #   @return [Hash{Symbol=>Integer}, nil]
          optional :prompt_tokens_details, Langfuse::HashOf[Integer], nil?: true

          # @!parse
          #   # @param completion_tokens [Integer]
          #   # @param prompt_tokens [Integer]
          #   # @param total_tokens [Integer]
          #   # @param completion_tokens_details [Hash{Symbol=>Integer}, nil]
          #   # @param prompt_tokens_details [Hash{Symbol=>Integer}, nil]
          #   #
          #   def initialize(
          #     completion_tokens:,
          #     prompt_tokens:,
          #     total_tokens:,
          #     completion_tokens_details: nil,
          #     prompt_tokens_details: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
