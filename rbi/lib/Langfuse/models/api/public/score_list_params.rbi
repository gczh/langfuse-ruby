# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class ScoreListParams < Langfuse::BaseModel
          extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          sig { returns(T.nilable(String)) }
          def config_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def config_id=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def data_type
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def data_type=(_)
          end

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
          def operator
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def operator=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def page
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def page=(_)
          end

          sig { returns(T.nilable(String)) }
          def queue_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def queue_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def score_ids
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def score_ids=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def source
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def source=(_)
          end

          sig { returns(T.nilable(Time)) }
          def to_timestamp
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def to_timestamp=(_)
          end

          sig { returns(T.nilable(T::Array[T.nilable(String)])) }
          def trace_tags
          end

          sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
          def trace_tags=(_)
          end

          sig { returns(T.nilable(String)) }
          def user_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def user_id=(_)
          end

          sig { returns(T.nilable(Float)) }
          def value
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def value=(_)
          end

          sig do
            params(
              config_id: T.nilable(String),
              data_type: T.nilable(Symbol),
              environment: T::Array[T.nilable(String)],
              from_timestamp: T.nilable(Time),
              limit: T.nilable(Integer),
              name: T.nilable(String),
              operator: T.nilable(String),
              page: T.nilable(Integer),
              queue_id: T.nilable(String),
              score_ids: T.nilable(String),
              source: T.nilable(Symbol),
              to_timestamp: T.nilable(Time),
              trace_tags: T::Array[T.nilable(String)],
              user_id: T.nilable(String),
              value: T.nilable(Float),
              request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(
            config_id: nil,
            data_type: nil,
            environment: nil,
            from_timestamp: nil,
            limit: nil,
            name: nil,
            operator: nil,
            page: nil,
            queue_id: nil,
            score_ids: nil,
            source: nil,
            to_timestamp: nil,
            trace_tags: nil,
            user_id: nil,
            value: nil,
            request_options: {}
          )
          end

          sig do
            override
              .returns(
                {
                  config_id: T.nilable(String),
                  data_type: T.nilable(Symbol),
                  environment: T::Array[T.nilable(String)],
                  from_timestamp: T.nilable(Time),
                  limit: T.nilable(Integer),
                  name: T.nilable(String),
                  operator: T.nilable(String),
                  page: T.nilable(Integer),
                  queue_id: T.nilable(String),
                  score_ids: T.nilable(String),
                  source: T.nilable(Symbol),
                  to_timestamp: T.nilable(Time),
                  trace_tags: T::Array[T.nilable(String)],
                  user_id: T.nilable(String),
                  value: T.nilable(Float),
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
