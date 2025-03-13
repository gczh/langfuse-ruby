# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class Model < Langfuse::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(T::Boolean) }
          def is_langfuse_managed
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_langfuse_managed=(_)
          end

          sig { returns(String) }
          def match_pattern
          end

          sig { params(_: String).returns(String) }
          def match_pattern=(_)
          end

          sig { returns(String) }
          def model_name
          end

          sig { params(_: String).returns(String) }
          def model_name=(_)
          end

          sig { returns(T.nilable(Float)) }
          def input_price
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def input_price=(_)
          end

          sig { returns(T.nilable(Float)) }
          def output_price
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def output_price=(_)
          end

          sig { returns(T.nilable(Time)) }
          def start_date
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def start_date=(_)
          end

          sig { returns(T.nilable(T.anything)) }
          def tokenizer_config
          end

          sig { params(_: T.anything).returns(T.anything) }
          def tokenizer_config=(_)
          end

          sig { returns(T.nilable(String)) }
          def tokenizer_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def tokenizer_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def total_price
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def total_price=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def unit
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def unit=(_)
          end

          sig do
            params(
              id: String,
              is_langfuse_managed: T::Boolean,
              match_pattern: String,
              model_name: String,
              input_price: T.nilable(Float),
              output_price: T.nilable(Float),
              start_date: T.nilable(Time),
              tokenizer_config: T.anything,
              tokenizer_id: T.nilable(String),
              total_price: T.nilable(Float),
              unit: T.nilable(Symbol)
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            is_langfuse_managed:,
            match_pattern:,
            model_name:,
            input_price: nil,
            output_price: nil,
            start_date: nil,
            tokenizer_config: nil,
            tokenizer_id: nil,
            total_price: nil,
            unit: nil
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  is_langfuse_managed: T::Boolean,
                  match_pattern: String,
                  model_name: String,
                  input_price: T.nilable(Float),
                  output_price: T.nilable(Float),
                  start_date: T.nilable(Time),
                  tokenizer_config: T.anything,
                  tokenizer_id: T.nilable(String),
                  total_price: T.nilable(Float),
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
