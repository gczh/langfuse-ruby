# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class DatasetItemListParams < Langfuse::BaseModel
          extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          sig { returns(T.nilable(String)) }
          def dataset_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def dataset_name=(_)
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
              dataset_name: T.nilable(String),
              limit: T.nilable(Integer),
              page: T.nilable(Integer),
              source_observation_id: T.nilable(String),
              source_trace_id: T.nilable(String),
              request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(
            dataset_name: nil,
            limit: nil,
            page: nil,
            source_observation_id: nil,
            source_trace_id: nil,
            request_options: {}
          )
          end

          sig do
            override
              .returns(
                {
                  dataset_name: T.nilable(String),
                  limit: T.nilable(Integer),
                  page: T.nilable(Integer),
                  source_observation_id: T.nilable(String),
                  source_trace_id: T.nilable(String),
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
