# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class DatasetItem < Langfuse::BaseModel
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
          def dataset_id
          end

          sig { params(_: String).returns(String) }
          def dataset_id=(_)
          end

          sig { returns(String) }
          def dataset_name
          end

          sig { params(_: String).returns(String) }
          def dataset_name=(_)
          end

          sig { returns(Symbol) }
          def status
          end

          sig { params(_: Symbol).returns(Symbol) }
          def status=(_)
          end

          sig { returns(Time) }
          def updated_at
          end

          sig { params(_: Time).returns(Time) }
          def updated_at=(_)
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

          sig do
            params(
              id: String,
              created_at: Time,
              dataset_id: String,
              dataset_name: String,
              status: Symbol,
              updated_at: Time,
              expected_output: T.anything,
              input: T.anything,
              metadata: T.anything,
              source_observation_id: T.nilable(String),
              source_trace_id: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            created_at:,
            dataset_id:,
            dataset_name:,
            status:,
            updated_at:,
            expected_output: nil,
            input: nil,
            metadata: nil,
            source_observation_id: nil,
            source_trace_id: nil
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  created_at: Time,
                  dataset_id: String,
                  dataset_name: String,
                  status: Symbol,
                  updated_at: Time,
                  expected_output: T.anything,
                  input: T.anything,
                  metadata: T.anything,
                  source_observation_id: T.nilable(String),
                  source_trace_id: T.nilable(String)
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
