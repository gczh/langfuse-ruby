# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        sig { returns(Langfuse::Resources::API::Public::AnnotationQueues) }
        def annotation_queues
        end

        sig { returns(Langfuse::Resources::API::Public::Comments) }
        def comments
        end

        sig { returns(Langfuse::Resources::API::Public::DatasetItems) }
        def dataset_items
        end

        sig { returns(Langfuse::Resources::API::Public::V2) }
        def v2
        end

        sig { returns(Langfuse::Resources::API::Public::Datasets) }
        def datasets
        end

        sig { returns(Langfuse::Resources::API::Public::Media) }
        def media
        end

        sig { returns(Langfuse::Resources::API::Public::Metrics) }
        def metrics
        end

        sig { returns(Langfuse::Resources::API::Public::Models) }
        def models
        end

        sig { returns(Langfuse::Resources::API::Public::Observations) }
        def observations
        end

        sig { returns(Langfuse::Resources::API::Public::ScoreConfigs) }
        def score_configs
        end

        sig { returns(Langfuse::Resources::API::Public::Scores) }
        def scores
        end

        sig { returns(Langfuse::Resources::API::Public::Sessions) }
        def sessions
        end

        sig { returns(Langfuse::Resources::API::Public::Traces) }
        def traces
        end

        sig do
          params(
            batch: T::Array[
            T.any(
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember0,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember1,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember2,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember3,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember4,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember5,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember6,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember7,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember8,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember9
            )
            ],
            metadata: T.anything,
            request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Langfuse::Models::API::PublicBatchIngestionResponse)
        end
        def batch_ingestion(batch:, metadata: nil, request_options: {})
        end

        sig do
          params(request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])))
            .returns(Langfuse::Models::API::PublicCheckHealthResponse)
        end
        def check_health(request_options: {})
        end

        sig do
          params(
            dataset_item_id: String,
            run_name: String,
            metadata: T.anything,
            observation_id: T.nilable(String),
            run_description: T.nilable(String),
            trace_id: T.nilable(String),
            request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Langfuse::Models::API::DatasetRunItem)
        end
        def create_dataset_run_item(
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
          params(request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])))
            .returns(Langfuse::Models::API::PublicRetrieveProjectsResponse)
        end
        def retrieve_projects(request_options: {})
        end

        sig { params(client: Langfuse::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
