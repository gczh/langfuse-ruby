# frozen_string_literal: true

module Langfuse
  module Models
    module API
      class PublicBatchIngestionResponse < Langfuse::BaseModel
        # @!attribute errors
        #
        #   @return [Array<Langfuse::Models::API::PublicBatchIngestionResponse::Error>]
        required :errors, -> { Langfuse::ArrayOf[Langfuse::Models::API::PublicBatchIngestionResponse::Error] }

        # @!attribute successes
        #
        #   @return [Array<Langfuse::Models::API::PublicBatchIngestionResponse::Success>]
        required :successes,
                 -> { Langfuse::ArrayOf[Langfuse::Models::API::PublicBatchIngestionResponse::Success] }

        # @!parse
        #   # @param errors [Array<Langfuse::Models::API::PublicBatchIngestionResponse::Error>]
        #   # @param successes [Array<Langfuse::Models::API::PublicBatchIngestionResponse::Success>]
        #   #
        #   def initialize(errors:, successes:, **) = super

        # def initialize: (Hash | Langfuse::BaseModel) -> void

        class Error < Langfuse::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute status
          #
          #   @return [Integer]
          required :status, Integer

          # @!attribute [r] error
          #
          #   @return [Object, nil]
          optional :error, Langfuse::Unknown

          # @!parse
          #   # @return [Object]
          #   attr_writer :error

          # @!attribute message
          #
          #   @return [String, nil]
          optional :message, String, nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param status [Integer]
          #   # @param error [Object]
          #   # @param message [String, nil]
          #   #
          #   def initialize(id:, status:, error: nil, message: nil, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end

        class Success < Langfuse::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute status
          #
          #   @return [Integer]
          required :status, Integer

          # @!parse
          #   # @param id [String]
          #   # @param status [Integer]
          #   #
          #   def initialize(id:, status:, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
