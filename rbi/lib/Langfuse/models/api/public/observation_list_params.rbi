# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class ObservationListParams < Langfuse::BaseModel
          extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          sig { returns(T.nilable(T::Array[T.nilable(String)])) }
          def environment
          end

          sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
          def environment=(_)
          end

          sig { returns(T.nilable(Time)) }
          def from_start_time
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def from_start_time=(_)
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

          sig { returns(T.nilable(Integer)) }
          def page
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def page=(_)
          end

          sig { returns(T.nilable(String)) }
          def parent_observation_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def parent_observation_id=(_)
          end

          sig { returns(T.nilable(Time)) }
          def to_start_time
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def to_start_time=(_)
          end

          sig { returns(T.nilable(String)) }
          def trace_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def trace_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def type
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_)
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
              from_start_time: T.nilable(Time),
              limit: T.nilable(Integer),
              name: T.nilable(String),
              page: T.nilable(Integer),
              parent_observation_id: T.nilable(String),
              to_start_time: T.nilable(Time),
              trace_id: T.nilable(String),
              type: T.nilable(String),
              user_id: T.nilable(String),
              version: T.nilable(String),
              request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(
            environment: nil,
            from_start_time: nil,
            limit: nil,
            name: nil,
            page: nil,
            parent_observation_id: nil,
            to_start_time: nil,
            trace_id: nil,
            type: nil,
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
                  from_start_time: T.nilable(Time),
                  limit: T.nilable(Integer),
                  name: T.nilable(String),
                  page: T.nilable(Integer),
                  parent_observation_id: T.nilable(String),
                  to_start_time: T.nilable(Time),
                  trace_id: T.nilable(String),
                  type: T.nilable(String),
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
