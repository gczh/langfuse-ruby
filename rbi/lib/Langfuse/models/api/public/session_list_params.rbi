# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class SessionListParams < Langfuse::BaseModel
          extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          sig { returns(T.nilable(T::Array[T.nilable(String)])) }
          def environment
          end

          sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
          def environment=(_)
          end

          sig { returns(T.nilable(Time)) }
          def from_timestamp
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def from_timestamp=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def limit
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def page
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def page=(_)
          end

          sig { returns(T.nilable(Time)) }
          def to_timestamp
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def to_timestamp=(_)
          end

          sig do
            params(
              environment: T::Array[T.nilable(String)],
              from_timestamp: T.nilable(Time),
              limit: T.nilable(Integer),
              page: T.nilable(Integer),
              to_timestamp: T.nilable(Time),
              request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(environment: nil, from_timestamp: nil, limit: nil, page: nil, to_timestamp: nil, request_options: {})
          end

          sig do
            override
              .returns(
                {
                  environment: T::Array[T.nilable(String)],
                  from_timestamp: T.nilable(Time),
                  limit: T.nilable(Integer),
                  page: T.nilable(Integer),
                  to_timestamp: T.nilable(Time),
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
