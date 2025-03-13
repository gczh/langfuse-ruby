# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class ScoreListResponse < Langfuse::BaseModel
          # @!attribute data
          #
          #   @return [Array<Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember0, Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember1, Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember2>]
          required :data, -> { Langfuse::ArrayOf[union: Langfuse::Models::API::Public::ScoreListResponse::Data] }

          # @!attribute meta
          #
          #   @return [Langfuse::Models::API::Public::UtilsMetaResponse]
          required :meta, -> { Langfuse::Models::API::Public::UtilsMetaResponse }

          # @!parse
          #   # @param data [Array<Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember0, Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember1, Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember2>]
          #   # @param meta [Langfuse::Models::API::Public::UtilsMetaResponse]
          #   #
          #   def initialize(data:, meta:, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void

          # @abstract
          #
          class Data < Langfuse::Union
            variant -> { Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember0 }

            variant -> { Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember1 }

            variant -> { Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember2 }

            class UnionMember0 < Langfuse::Models::API::Public::NumericScore
              # @!attribute [r] data_type
              #
              #   @return [Symbol, Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember0::DataType, nil]
              optional :data_type,
                       enum: -> { Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember0::DataType },
                       api_name: :dataType

              # @!parse
              #   # @return [Symbol, Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember0::DataType]
              #   attr_writer :data_type

              # @!parse
              #   # @param data_type [Symbol, Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember0::DataType]
              #   #
              #   def initialize(data_type: nil, **) = super

              # def initialize: (Hash | Langfuse::BaseModel) -> void

              # @abstract
              #
              class DataType < Langfuse::Enum
                NUMERIC = :NUMERIC

                finalize!
              end
            end

            class UnionMember1 < Langfuse::Models::API::Public::CategoricalScore
              # @!attribute [r] data_type
              #
              #   @return [Symbol, Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember1::DataType, nil]
              optional :data_type,
                       enum: -> { Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember1::DataType },
                       api_name: :dataType

              # @!parse
              #   # @return [Symbol, Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember1::DataType]
              #   attr_writer :data_type

              # @!parse
              #   # @param data_type [Symbol, Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember1::DataType]
              #   #
              #   def initialize(data_type: nil, **) = super

              # def initialize: (Hash | Langfuse::BaseModel) -> void

              # @abstract
              #
              class DataType < Langfuse::Enum
                CATEGORICAL = :CATEGORICAL

                finalize!
              end
            end

            class UnionMember2 < Langfuse::Models::API::Public::BooleanScore
              # @!attribute [r] data_type
              #
              #   @return [Symbol, Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember2::DataType, nil]
              optional :data_type,
                       enum: -> { Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember2::DataType },
                       api_name: :dataType

              # @!parse
              #   # @return [Symbol, Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember2::DataType]
              #   attr_writer :data_type

              # @!parse
              #   # @param data_type [Symbol, Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember2::DataType]
              #   #
              #   def initialize(data_type: nil, **) = super

              # def initialize: (Hash | Langfuse::BaseModel) -> void

              # @abstract
              #
              class DataType < Langfuse::Enum
                BOOLEAN = :BOOLEAN

                finalize!
              end
            end
          end
        end
      end
    end
  end
end
