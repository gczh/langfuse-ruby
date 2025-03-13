# typed: strong

module Langfuse
  module Models
    module API
      class PublicCreateDatasetRunItemParams < Langfuse::BaseModel
        extend Langfuse::RequestParameters::Converter
        include Langfuse::RequestParameters

        sig { returns(String) }
        def dataset_item_id
        end

        sig { params(_: String).returns(String) }
        def dataset_item_id=(_)
        end

        sig { returns(String) }
        def run_name
        end

        sig { params(_: String).returns(String) }
        def run_name=(_)
        end

        sig { returns(T.nilable(T.anything)) }
        def metadata
        end

        sig { params(_: T.anything).returns(T.anything) }
        def metadata=(_)
        end

        sig { returns(T.nilable(String)) }
        def observation_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def observation_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def run_description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def run_description=(_)
        end

        sig { returns(T.nilable(String)) }
        def trace_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def trace_id=(_)
        end

        sig do
          params(
            dataset_item_id: String,
            run_name: String,
            metadata: T.anything,
            observation_id: T.nilable(String),
            run_description: T.nilable(String),
            trace_id: T.nilable(String),
            request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(
          dataset_item_id:,
          run_name:,
          metadata: nil,
          observation_id: nil,
          run_description: nil,
          trace_id: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                dataset_item_id: String,
                run_name: String,
                metadata: T.anything,
                observation_id: T.nilable(String),
                run_description: T.nilable(String),
                trace_id: T.nilable(String),
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
