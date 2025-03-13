# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class BaseScore < Langfuse::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(Symbol) }
          def source
          end

          sig { params(_: Symbol).returns(Symbol) }
          def source=(_)
          end

          sig { returns(Time) }
          def timestamp
          end

          sig { params(_: Time).returns(Time) }
          def timestamp=(_)
          end

          sig { returns(String) }
          def trace_id
          end

          sig { params(_: String).returns(String) }
          def trace_id=(_)
          end

          sig { returns(Time) }
          def updated_at
          end

          sig { params(_: Time).returns(Time) }
          def updated_at=(_)
          end

          sig { returns(T.nilable(String)) }
          def author_user_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def author_user_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def comment
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def comment=(_)
          end

          sig { returns(T.nilable(String)) }
          def config_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def config_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def environment
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def environment=(_)
          end

          sig { returns(T.nilable(String)) }
          def observation_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def observation_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def queue_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def queue_id=(_)
          end

          sig do
            params(
              id: String,
              created_at: Time,
              name: String,
              source: Symbol,
              timestamp: Time,
              trace_id: String,
              updated_at: Time,
              author_user_id: T.nilable(String),
              comment: T.nilable(String),
              config_id: T.nilable(String),
              environment: T.nilable(String),
              observation_id: T.nilable(String),
              queue_id: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            created_at:,
            name:,
            source:,
            timestamp:,
            trace_id:,
            updated_at:,
            author_user_id: nil,
            comment: nil,
            config_id: nil,
            environment: nil,
            observation_id: nil,
            queue_id: nil
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  created_at: Time,
                  name: String,
                  source: Symbol,
                  timestamp: Time,
                  trace_id: String,
                  updated_at: Time,
                  author_user_id: T.nilable(String),
                  comment: T.nilable(String),
                  config_id: T.nilable(String),
                  environment: T.nilable(String),
                  observation_id: T.nilable(String),
                  queue_id: T.nilable(String)
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
