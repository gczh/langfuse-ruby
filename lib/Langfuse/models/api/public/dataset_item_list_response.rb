# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class DatasetItemListResponse < Langfuse::BaseModel
          # @!attribute data
          #
          #   @return [Array<Langfuse::Models::API::Public::DatasetItem>]
          required :data, -> { Langfuse::ArrayOf[Langfuse::Models::API::Public::DatasetItem] }

          # @!attribute meta
          #
          #   @return [Langfuse::Models::API::Public::UtilsMetaResponse]
          required :meta, -> { Langfuse::Models::API::Public::UtilsMetaResponse }

          # @!parse
          #   # @param data [Array<Langfuse::Models::API::Public::DatasetItem>]
          #   # @param meta [Langfuse::Models::API::Public::UtilsMetaResponse]
          #   #
          #   def initialize(data:, meta:, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
