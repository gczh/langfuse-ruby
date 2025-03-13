# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class TraceListParams < Langfuse::BaseModel
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

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def order_by
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def order_by=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def page
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def page=(_)
          end

          sig { returns(T.nilable(String)) }
          def release
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def release=(_)
          end

          sig { returns(T.nilable(String)) }
          def session_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def session_id=(_)
          end

          sig { returns(T.nilable(T::Array[T.nilable(String)])) }
          def tags
          end

          sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
          def tags=(_)
          end

          sig { returns(T.nilable(Time)) }
          def to_timestamp
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def to_timestamp=(_)
          end

          sig { returns(T.nilable(String)) }
          def user_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def user_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def version
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def version=(_)
          end

          sig do
            params(
              environment: T::Array[T.nilable(String)],
              from_timestamp: T.nilable(Time),
              limit: T.nilable(Integer),
              name: T.nilable(String),
              order_by: T.nilable(String),
              page: T.nilable(Integer),
              release: T.nilable(String),
              session_id: T.nilable(String),
              tags: T::Array[T.nilable(String)],
              to_timestamp: T.nilable(Time),
              user_id: T.nilable(String),
              version: T.nilable(String),
              request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(
            environment: nil,
            from_timestamp: nil,
            limit: nil,
            name: nil,
            order_by: nil,
            page: nil,
            release: nil,
            session_id: nil,
            tags: nil,
            to_timestamp: nil,
            user_id: nil,
            version: nil,
            request_options: {}
          )
          end

          sig do
            override
              .returns(
                {
                  environment: T::Array[T.nilable(String)],
                  from_timestamp: T.nilable(Time),
                  limit: T.nilable(Integer),
                  name: T.nilable(String),
                  order_by: T.nilable(String),
                  page: T.nilable(Integer),
                  release: T.nilable(String),
                  session_id: T.nilable(String),
                  tags: T::Array[T.nilable(String)],
                  to_timestamp: T.nilable(Time),
                  user_id: T.nilable(String),
                  version: T.nilable(String),
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
