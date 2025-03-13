# typed: strong

module Langfuse
  module Models
    module API
      class UsageDetails < Langfuse::Union
        abstract!

        IntegerMap = T.type_alias { T::Hash[Symbol, Integer] }

        class OpenAIUsageSchema < Langfuse::BaseModel
          sig { returns(Integer) }
          def completion_tokens
          end

          sig { params(_: Integer).returns(Integer) }
          def completion_tokens=(_)
          end

          sig { returns(Integer) }
          def prompt_tokens
          end

          sig { params(_: Integer).returns(Integer) }
          def prompt_tokens=(_)
          end

          sig { returns(Integer) }
          def total_tokens
          end

          sig { params(_: Integer).returns(Integer) }
          def total_tokens=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          def completion_tokens_details
          end

          sig { params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer])) }
          def completion_tokens_details=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          def prompt_tokens_details
          end

          sig { params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer])) }
          def prompt_tokens_details=(_)
          end

          sig do
            params(
              completion_tokens: Integer,
              prompt_tokens: Integer,
              total_tokens: Integer,
              completion_tokens_details: T.nilable(T::Hash[Symbol, Integer]),
              prompt_tokens_details: T.nilable(T::Hash[Symbol, Integer])
            )
              .returns(T.attached_class)
          end
          def self.new(
            completion_tokens:,
            prompt_tokens:,
            total_tokens:,
            completion_tokens_details: nil,
            prompt_tokens_details: nil
          )
          end

          sig do
            override
              .returns(
                {
                  completion_tokens: Integer,
                  prompt_tokens: Integer,
                  total_tokens: Integer,
                  completion_tokens_details: T.nilable(T::Hash[Symbol, Integer]),
                  prompt_tokens_details: T.nilable(T::Hash[Symbol, Integer])
                }
              )
          end
          def to_hash
          end
        end

        class << self
          sig do
            override
              .returns(
                [[NilClass, T::Hash[Symbol, Integer]], [NilClass, Langfuse::Models::API::UsageDetails::OpenAIUsageSchema]]
              )
          end
          private def variants
          end
        end
      end
    end
  end
end
