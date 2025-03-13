# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class ScoreCreateParams < Langfuse::BaseModel
          extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(String) }
          def trace_id
          end

          sig { params(_: String).returns(String) }
          def trace_id=(_)
          end

          sig { returns(T.any(Float, String)) }
          def value
          end

          sig { params(_: T.any(Float, String)).returns(T.any(Float, String)) }
          def value=(_)
          end

          sig { returns(T.nilable(String)) }
          def id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def id=(_)
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

          sig { returns(T.nilable(Symbol)) }
          def data_type
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def data_type=(_)
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

          sig do
            params(
              name: String,
              trace_id: String,
              value: T.any(Float, String),
              id: T.nilable(String),
              comment: T.nilable(String),
              config_id: T.nilable(String),
              data_type: T.nilable(Symbol),
              environment: T.nilable(String),
              observation_id: T.nilable(String),
              request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(
            name:,
            trace_id:,
            value:,
            id: nil,
            comment: nil,
            config_id: nil,
            data_type: nil,
            environment: nil,
            observation_id: nil,
            request_options: {}
          )
          end

          sig do
            override
              .returns(
                {
                  name: String,
                  trace_id: String,
                  value: T.any(Float, String),
                  id: T.nilable(String),
                  comment: T.nilable(String),
                  config_id: T.nilable(String),
                  data_type: T.nilable(Symbol),
                  environment: T.nilable(String),
                  observation_id: T.nilable(String),
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
