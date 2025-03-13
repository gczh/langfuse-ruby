# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class Usage < Langfuse::BaseModel
          sig { returns(T.nilable(Integer)) }
          def input
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def input=(_)
          end

          sig { returns(T.nilable(Float)) }
          def input_cost
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def input_cost=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def output
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def output=(_)
          end

          sig { returns(T.nilable(Float)) }
          def output_cost
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def output_cost=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def total
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def total=(_)
          end

          sig { returns(T.nilable(Float)) }
          def total_cost
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def total_cost=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def unit
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def unit=(_)
          end

          sig do
            params(
              input: T.nilable(Integer),
              input_cost: T.nilable(Float),
              output: T.nilable(Integer),
              output_cost: T.nilable(Float),
              total: T.nilable(Integer),
              total_cost: T.nilable(Float),
              unit: T.nilable(Symbol)
            )
              .returns(T.attached_class)
          end
          def self.new(input: nil, input_cost: nil, output: nil, output_cost: nil, total: nil, total_cost: nil, unit: nil)
          end

          sig do
            override
              .returns(
                {
                  input: T.nilable(Integer),
                  input_cost: T.nilable(Float),
                  output: T.nilable(Integer),
                  output_cost: T.nilable(Float),
                  total: T.nilable(Integer),
                  total_cost: T.nilable(Float),
                  unit: T.nilable(Symbol)
                }
              )
          end
          def to_hash
          end
        end
      end
    end
  end
end
