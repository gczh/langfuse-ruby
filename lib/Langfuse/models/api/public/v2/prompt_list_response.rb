# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module V2
          class PromptListResponse < Langfuse::BaseModel
            # @!attribute data
            #
            #   @return [Array<Langfuse::Models::API::Public::V2::PromptListResponse::Data>]
            required :data, -> { Langfuse::ArrayOf[Langfuse::Models::API::Public::V2::PromptListResponse::Data] }

            # @!attribute meta
            #
            #   @return [Langfuse::Models::API::Public::UtilsMetaResponse]
            required :meta, -> { Langfuse::Models::API::Public::UtilsMetaResponse }

            # @!parse
            #   # @param data [Array<Langfuse::Models::API::Public::V2::PromptListResponse::Data>]
            #   # @param meta [Langfuse::Models::API::Public::UtilsMetaResponse]
            #   #
            #   def initialize(data:, meta:, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void

            class Data < Langfuse::BaseModel
              # @!attribute labels
              #
              #   @return [Array<String>]
              required :labels, Langfuse::ArrayOf[String]

              # @!attribute last_config
              #   Config object of the most recent prompt version that matches the filters (if any
              #     are provided)
              #
              #   @return [Object]
              required :last_config, Langfuse::Unknown, api_name: :lastConfig

              # @!attribute last_updated_at
              #
              #   @return [Time]
              required :last_updated_at, Time, api_name: :lastUpdatedAt

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!attribute tags
              #
              #   @return [Array<String>]
              required :tags, Langfuse::ArrayOf[String]

              # @!attribute versions
              #
              #   @return [Array<Integer>]
              required :versions, Langfuse::ArrayOf[Integer]

              # @!parse
              #   # @param labels [Array<String>]
              #   # @param last_config [Object]
              #   # @param last_updated_at [Time]
              #   # @param name [String]
              #   # @param tags [Array<String>]
              #   # @param versions [Array<Integer>]
              #   #
              #   def initialize(labels:, last_config:, last_updated_at:, name:, tags:, versions:, **) = super

              # def initialize: (Hash | Langfuse::BaseModel) -> void
            end
          end
        end
      end
    end
  end
end
