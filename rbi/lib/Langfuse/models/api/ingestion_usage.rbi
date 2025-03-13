# typed: strong

module Langfuse
  module Models
    module API
      class IngestionUsage < Langfuse::Union
        abstract!

        class OpenAIUsage < Langfuse::BaseModel
          sig { returns(T.nilable(Integer)) }
          def completion_tokens
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def completion_tokens=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def prompt_tokens
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def prompt_tokens=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def total_tokens
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def total_tokens=(_)
          end

          sig do
            params(
              completion_tokens: T.nilable(Integer),
              prompt_tokens: T.nilable(Integer),
              total_tokens: T.nilable(Integer)
            )
              .returns(T.attached_class)
          end
          def self.new(completion_tokens: nil, prompt_tokens: nil, total_tokens: nil)
          end

          sig do
            override
              .returns(
                {
                  completion_tokens: T.nilable(Integer),
                  prompt_tokens: T.nilable(Integer),
                  total_tokens: T.nilable(Integer)
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
                [[NilClass, Langfuse::Models::API::Public::Usage], [NilClass, Langfuse::Models::API::IngestionUsage::OpenAIUsage]]
              )
          end
          private def variants
          end
        end
      end
    end
  end
end
