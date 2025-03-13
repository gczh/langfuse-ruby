# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class ScoreListResponse < Langfuse::BaseModel
          sig do
            returns(
              T::Array[
              T.any(
                Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember0,
                Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember1,
                Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember2
              )
              ]
            )
          end
          def data
          end

          sig do
            params(
              _: T::Array[
              T.any(
                Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember0,
                Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember1,
                Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember2
              )
              ]
            )
              .returns(
                T::Array[
                T.any(
                  Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember0,
                  Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember1,
                  Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember2
                )
                ]
              )
          end
          def data=(_)
          end

          sig { returns(Langfuse::Models::API::Public::UtilsMetaResponse) }
          def meta
          end

          sig do
            params(_: Langfuse::Models::API::Public::UtilsMetaResponse)
              .returns(Langfuse::Models::API::Public::UtilsMetaResponse)
          end
          def meta=(_)
          end

          sig do
            params(
              data: T::Array[
              T.any(
                Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember0,
                Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember1,
                Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember2
              )
              ],
              meta: Langfuse::Models::API::Public::UtilsMetaResponse
            )
              .returns(T.attached_class)
          end
          def self.new(data:, meta:)
          end

          sig do
            override
              .returns(
                {
                  data: T::Array[
                  T.any(
                    Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember0,
                    Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember1,
                    Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember2
                  )
                  ],
                  meta: Langfuse::Models::API::Public::UtilsMetaResponse
                }
              )
          end
          def to_hash
          end

          class Data < Langfuse::Union
            abstract!

            class UnionMember0 < Langfuse::Models::API::Public::NumericScore
              sig { returns(T.nilable(Symbol)) }
              def data_type
              end

              sig { params(_: Symbol).returns(Symbol) }
              def data_type=(_)
              end

              sig { params(data_type: Symbol).returns(T.attached_class) }
              def self.new(data_type: nil)
              end

              sig { override.returns({data_type: Symbol}) }
              def to_hash
              end

              class DataType < Langfuse::Enum
                abstract!

                NUMERIC = :NUMERIC

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class UnionMember1 < Langfuse::Models::API::Public::CategoricalScore
              sig { returns(T.nilable(Symbol)) }
              def data_type
              end

              sig { params(_: Symbol).returns(Symbol) }
              def data_type=(_)
              end

              sig { params(data_type: Symbol).returns(T.attached_class) }
              def self.new(data_type: nil)
              end

              sig { override.returns({data_type: Symbol}) }
              def to_hash
              end

              class DataType < Langfuse::Enum
                abstract!

                CATEGORICAL = :CATEGORICAL

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class UnionMember2 < Langfuse::Models::API::Public::BooleanScore
              sig { returns(T.nilable(Symbol)) }
              def data_type
              end

              sig { params(_: Symbol).returns(Symbol) }
              def data_type=(_)
              end

              sig { params(data_type: Symbol).returns(T.attached_class) }
              def self.new(data_type: nil)
              end

              sig { override.returns({data_type: Symbol}) }
              def to_hash
              end

              class DataType < Langfuse::Enum
                abstract!

                BOOLEAN = :BOOLEAN

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class << self
              sig do
                override
                  .returns(
                    [[NilClass, Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember0], [NilClass, Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember1], [NilClass, Langfuse::Models::API::Public::ScoreListResponse::Data::UnionMember2]]
                  )
              end
              private def variants
              end
            end
          end
        end
      end
    end
  end
end
