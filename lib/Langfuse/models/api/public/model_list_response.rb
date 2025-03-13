# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class ModelListResponse < Langfuse::BaseModel
          # @!attribute data
          #
          #   @return [Array<Langfuse::Models::API::Public::Model>]
          required :data, -> { Langfuse::ArrayOf[Langfuse::Models::API::Public::Model] }

          # @!attribute meta
          #
          #   @return [Langfuse::Models::API::Public::UtilsMetaResponse]
          required :meta, -> { Langfuse::Models::API::Public::UtilsMetaResponse }

          # @!parse
          #   # @param data [Array<Langfuse::Models::API::Public::Model>]
          #   # @param meta [Langfuse::Models::API::Public::UtilsMetaResponse]
          #   #
          #   def initialize(data:, meta:, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
