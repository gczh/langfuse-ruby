# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class DatasetItemCreateParams < Langfuse::BaseModel
          extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          sig { returns(String) }
          def dataset_name
          end

          sig { params(_: String).returns(String) }
          def dataset_name=(_)
          end

          sig { returns(T.nilable(String)) }
          def id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def id=(_)
          end

          sig { returns(T.nilable(T.anything)) }
          def expected_output
          end

          sig { params(_: T.anything).returns(T.anything) }
          def expected_output=(_)
          end

          sig { returns(T.nilable(T.anything)) }
          def input
          end

          sig { params(_: T.anything).returns(T.anything) }
          def input=(_)
          end

          sig { returns(T.nilable(T.anything)) }
          def metadata
          end

          sig { params(_: T.anything).returns(T.anything) }
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def source_observation_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def source_observation_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def source_trace_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def source_trace_id=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def status
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def status=(_)
          end

          sig do
            params(
              dataset_name: String,
              id: T.nilable(String),
              expected_output: T.anything,
              input: T.anything,
              metadata: T.anything,
              source_observation_id: T.nilable(String),
              source_trace_id: T.nilable(String),
              status: T.nilable(Symbol),
              request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(
            dataset_name:,
            id: nil,
            expected_output: nil,
            input: nil,
            metadata: nil,
            source_observation_id: nil,
            source_trace_id: nil,
            status: nil,
            request_options: {}
          )
          end

          sig do
            override
              .returns(
                {
                  dataset_name: String,
                  id: T.nilable(String),
                  expected_output: T.anything,
                  input: T.anything,
                  metadata: T.anything,
                  source_observation_id: T.nilable(String),
                  source_trace_id: T.nilable(String),
                  status: T.nilable(Symbol),
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
