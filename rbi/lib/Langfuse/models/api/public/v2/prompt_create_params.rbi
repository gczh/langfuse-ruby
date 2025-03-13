# typed: strong

module Langfuse
  module Models
    module API
      module Public
        module V2
          class PromptCreateParams < Langfuse::BaseModel
            extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(String) }
            def prompt
            end

            sig { params(_: String).returns(String) }
            def prompt=(_)
            end

            sig { returns(T.nilable(String)) }
            def commit_message
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def commit_message=(_)
            end

            sig { returns(T.nilable(T.anything)) }
            def config
            end

            sig { params(_: T.anything).returns(T.anything) }
            def config=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def labels
            end

            sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
            def labels=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def tags
            end

            sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
            def tags=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig do
              params(
                name: String,
                prompt: String,
                commit_message: T.nilable(String),
                config: T.anything,
                labels: T.nilable(T::Array[String]),
                tags: T.nilable(T::Array[String]),
                type: Symbol,
                request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
              )
                .returns(T.attached_class)
            end
            def self.new(name:, prompt:, commit_message: nil, config: nil, labels: nil, tags: nil, type: nil, request_options: {})
            end

            sig do
              override
                .returns(
                  {
                    name: String,
                    prompt: String,
                    commit_message: T.nilable(String),
                    config: T.anything,
                    labels: T.nilable(T::Array[String]),
                    tags: T.nilable(T::Array[String]),
                    type: Symbol,
                    request_options: Langfuse::RequestOptions
                  }
                )
            end
            def to_hash
            end

            class Type < Langfuse::Enum
              abstract!

              TEXT = :text

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end
      end
    end
  end
end
