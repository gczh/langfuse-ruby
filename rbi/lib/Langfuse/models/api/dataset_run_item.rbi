# typed: strong

module Langfuse
  module Models
    module API
      class DatasetRunItem < Langfuse::BaseModel
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
        def dataset_item_id
        end

        sig { params(_: String).returns(String) }
        def dataset_item_id=(_)
        end

        sig { returns(String) }
        def dataset_run_id
        end

        sig { params(_: String).returns(String) }
        def dataset_run_id=(_)
        end

        sig { returns(String) }
        def dataset_run_name
        end

        sig { params(_: String).returns(String) }
        def dataset_run_name=(_)
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
        def observation_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def observation_id=(_)
        end

        sig do
          params(
            id: String,
            created_at: Time,
            dataset_item_id: String,
            dataset_run_id: String,
            dataset_run_name: String,
            trace_id: String,
            updated_at: Time,
            observation_id: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          dataset_item_id:,
          dataset_run_id:,
          dataset_run_name:,
          trace_id:,
          updated_at:,
          observation_id: nil
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                created_at: Time,
                dataset_item_id: String,
                dataset_run_id: String,
                dataset_run_name: String,
                trace_id: String,
                updated_at: Time,
                observation_id: T.nilable(String)
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
