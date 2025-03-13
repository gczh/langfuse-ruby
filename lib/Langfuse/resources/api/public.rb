# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      class Public
        # @return [Langfuse::Resources::API::Public::AnnotationQueues]
        attr_reader :annotation_queues

        # @return [Langfuse::Resources::API::Public::Comments]
        attr_reader :comments

        # @return [Langfuse::Resources::API::Public::DatasetItems]
        attr_reader :dataset_items

        # @return [Langfuse::Resources::API::Public::V2]
        attr_reader :v2

        # @return [Langfuse::Resources::API::Public::Datasets]
        attr_reader :datasets

        # @return [Langfuse::Resources::API::Public::Media]
        attr_reader :media

        # @return [Langfuse::Resources::API::Public::Metrics]
        attr_reader :metrics

        # @return [Langfuse::Resources::API::Public::Models]
        attr_reader :models

        # @return [Langfuse::Resources::API::Public::Observations]
        attr_reader :observations

        # @return [Langfuse::Resources::API::Public::ScoreConfigs]
        attr_reader :score_configs

        # @return [Langfuse::Resources::API::Public::Scores]
        attr_reader :scores

        # @return [Langfuse::Resources::API::Public::Sessions]
        attr_reader :sessions

        # @return [Langfuse::Resources::API::Public::Traces]
        attr_reader :traces

        # Batched ingestion for Langfuse Tracing. If you want to use tracing via the API,
        #   such as to build your own Langfuse client implementation, this is the only API
        #   route you need to implement.
        #
        #   Within each batch, there can be multiple events. Each event has a type, an id, a
        #   timestamp, metadata and a body. Internally, we refer to this as the "event
        #   envelope" as it tells us something about the event but not the trace. We use the
        #   event id within this envelope to deduplicate messages to avoid processing the
        #   same event twice, i.e. the event id should be unique per request. The
        #   event.body.id is the ID of the actual trace and will be used for updates and
        #   will be visible within the Langfuse App. I.e. if you want to update a trace,
        #   you'd use the same body id, but separate event IDs.
        #
        #   Notes:
        #
        #   - Introduction to data model: https://langfuse.com/docs/tracing-data-model
        #   - Batch sizes are limited to 3.5 MB in total. You need to adjust the number of
        #     events per batch accordingly.
        #   - The API does not return a 4xx status code for input errors. Instead, it
        #     responds with a 207 status code, which includes a list of the encountered
        #     errors.
        #
        # @param params [Langfuse::Models::API::PublicBatchIngestionParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember0, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember1, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember2, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember3, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember4, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember5, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember6, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember7, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember8, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember9>] :batch Batch of tracing events to be ingested. Discriminated by attribute `type`.
        #
        #   @option params [Object] :metadata Optional. Metadata field used by the Langfuse SDKs for debugging.
        #
        #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Langfuse::Models::API::PublicBatchIngestionResponse]
        #
        def batch_ingestion(params)
          parsed, options = Langfuse::Models::API::PublicBatchIngestionParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/public/ingestion",
            body: parsed,
            model: Langfuse::Models::API::PublicBatchIngestionResponse,
            options: options
          )
        end

        # Check health of API and database
        #
        # @param params [Langfuse::Models::API::PublicCheckHealthParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Langfuse::Models::API::PublicCheckHealthResponse]
        #
        def check_health(params = {})
          @client.request(
            method: :get,
            path: "api/public/health",
            model: Langfuse::Models::API::PublicCheckHealthResponse,
            options: params[:request_options]
          )
        end

        # Create a dataset run item
        #
        # @param params [Langfuse::Models::API::PublicCreateDatasetRunItemParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :dataset_item_id
        #
        #   @option params [String] :run_name
        #
        #   @option params [Object] :metadata Metadata of the dataset run, updates run if run already exists
        #
        #   @option params [String, nil] :observation_id
        #
        #   @option params [String, nil] :run_description Description of the run. If run exists, description will be updated.
        #
        #   @option params [String, nil] :trace_id traceId should always be provided. For compatibility with older SDK versions it
        #     can also be inferred from the provided observationId.
        #
        #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Langfuse::Models::API::DatasetRunItem]
        #
        def create_dataset_run_item(params)
          parsed, options = Langfuse::Models::API::PublicCreateDatasetRunItemParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/public/dataset-run-items",
            body: parsed,
            model: Langfuse::Models::API::DatasetRunItem,
            options: options
          )
        end

        # Get Project associated with API key
        #
        # @param params [Langfuse::Models::API::PublicRetrieveProjectsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Langfuse::Models::API::PublicRetrieveProjectsResponse]
        #
        def retrieve_projects(params = {})
          @client.request(
            method: :get,
            path: "api/public/projects",
            model: Langfuse::Models::API::PublicRetrieveProjectsResponse,
            options: params[:request_options]
          )
        end

        # @param client [Langfuse::Client]
        #
        def initialize(client:)
          @client = client
          @annotation_queues = Langfuse::Resources::API::Public::AnnotationQueues.new(client: client)
          @comments = Langfuse::Resources::API::Public::Comments.new(client: client)
          @dataset_items = Langfuse::Resources::API::Public::DatasetItems.new(client: client)
          @v2 = Langfuse::Resources::API::Public::V2.new(client: client)
          @datasets = Langfuse::Resources::API::Public::Datasets.new(client: client)
          @media = Langfuse::Resources::API::Public::Media.new(client: client)
          @metrics = Langfuse::Resources::API::Public::Metrics.new(client: client)
          @models = Langfuse::Resources::API::Public::Models.new(client: client)
          @observations = Langfuse::Resources::API::Public::Observations.new(client: client)
          @score_configs = Langfuse::Resources::API::Public::ScoreConfigs.new(client: client)
          @scores = Langfuse::Resources::API::Public::Scores.new(client: client)
          @sessions = Langfuse::Resources::API::Public::Sessions.new(client: client)
          @traces = Langfuse::Resources::API::Public::Traces.new(client: client)
        end
      end
    end
  end
end
