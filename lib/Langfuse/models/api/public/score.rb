# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        # @abstract
        #
        class Score < Langfuse::Union
          variant -> { Langfuse::Models::API::Public::Score::UnionMember0 }

          variant -> { Langfuse::Models::API::Public::Score::UnionMember1 }

          variant -> { Langfuse::Models::API::Public::Score::UnionMember2 }

          class UnionMember0 < Langfuse::Models::API::Public::NumericScore
            # @!attribute [r] data_type
            #
            #   @return [Symbol, Langfuse::Models::API::Public::Score::UnionMember0::DataType, nil]
            optional :data_type,
                     enum: -> { Langfuse::Models::API::Public::Score::UnionMember0::DataType },
                     api_name: :dataType

            # @!parse
            #   # @return [Symbol, Langfuse::Models::API::Public::Score::UnionMember0::DataType]
            #   attr_writer :data_type

            # @!parse
            #   # @param data_type [Symbol, Langfuse::Models::API::Public::Score::UnionMember0::DataType]
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
            #   @return [Symbol, Langfuse::Models::API::Public::Score::UnionMember1::DataType, nil]
            optional :data_type,
                     enum: -> { Langfuse::Models::API::Public::Score::UnionMember1::DataType },
                     api_name: :dataType

            # @!parse
            #   # @return [Symbol, Langfuse::Models::API::Public::Score::UnionMember1::DataType]
            #   attr_writer :data_type

            # @!parse
            #   # @param data_type [Symbol, Langfuse::Models::API::Public::Score::UnionMember1::DataType]
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
            #   @return [Symbol, Langfuse::Models::API::Public::Score::UnionMember2::DataType, nil]
            optional :data_type,
                     enum: -> { Langfuse::Models::API::Public::Score::UnionMember2::DataType },
                     api_name: :dataType

            # @!parse
            #   # @return [Symbol, Langfuse::Models::API::Public::Score::UnionMember2::DataType]
            #   attr_writer :data_type

            # @!parse
            #   # @param data_type [Symbol, Langfuse::Models::API::Public::Score::UnionMember2::DataType]
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
