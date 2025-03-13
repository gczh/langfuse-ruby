# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class Score < Langfuse::Union
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
                  [[NilClass, Langfuse::Models::API::Public::Score::UnionMember0], [NilClass, Langfuse::Models::API::Public::Score::UnionMember1], [NilClass, Langfuse::Models::API::Public::Score::UnionMember2]]
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
