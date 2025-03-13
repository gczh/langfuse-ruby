# typed: strong

module Langfuse
  module Models
    module API
      module Public
        module V2
          class DatasetCreateParams < Langfuse::BaseModel
            extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def description
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_)
            end

            sig { returns(T.nilable(T.anything)) }
            def metadata
            end

            sig { params(_: T.anything).returns(T.anything) }
            def metadata=(_)
            end

            sig do
              params(
                name: String,
                description: T.nilable(String),
                metadata: T.anything,
                request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
              )
                .returns(T.attached_class)
            end
            def self.new(name:, description: nil, metadata: nil, request_options: {})
            end

            sig do
              override
                .returns(
                  {
                    name: String,
                    description: T.nilable(String),
                    metadata: T.anything,
                    request_options: Langfuse::RequestOptions
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
