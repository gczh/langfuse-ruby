# typed: strong

module Langfuse
  module Models
    module API
      module Public
        module V2
          class BasePrompt < Langfuse::BaseModel
            sig { returns(T.anything) }
            def config
            end

            sig { params(_: T.anything).returns(T.anything) }
            def config=(_)
            end

            sig { returns(T::Array[String]) }
            def labels
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def labels=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Array[String]) }
            def tags
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def tags=(_)
            end

            sig { returns(Integer) }
            def version
            end

            sig { params(_: Integer).returns(Integer) }
            def version=(_)
            end

            sig { returns(T.nilable(String)) }
            def commit_message
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def commit_message=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            def resolution_graph
            end

            sig do
              params(
                _: T.nilable(
                  T::Hash[Symbol,
                          T.anything]
                )
              ).returns(T.nilable(T::Hash[Symbol, T.anything]))
            end
            def resolution_graph=(_)
            end

            sig do
              params(
                config: T.anything,
                labels: T::Array[String],
                name: String,
                tags: T::Array[String],
                version: Integer,
                commit_message: T.nilable(String),
                resolution_graph: T.nilable(T::Hash[Symbol, T.anything])
              )
                .returns(T.attached_class)
            end
            def self.new(config:, labels:, name:, tags:, version:, commit_message: nil, resolution_graph: nil)
            end

            sig do
              override
                .returns(
                  {
                    config: T.anything,
                    labels: T::Array[String],
                    name: String,
                    tags: T::Array[String],
                    version: Integer,
                    commit_message: T.nilable(String),
                    resolution_graph: T.nilable(T::Hash[Symbol, T.anything])
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
end
