# frozen_string_literal: true

require_relative "../../test_helper"

class Langfuse::Test::Resources::API::PublicTest < Langfuse::Test::ResourceTest
  def test_batch_ingestion_required_params
    response = @langfuse.api.public.batch_ingestion(
      batch: [{id: "abcdef-1234-5678-90ab", timestamp: "2022-01-01T00:00:00.000Z"}]
    )

    assert_pattern do
      response => Langfuse::Models::API::PublicBatchIngestionResponse
    end

    assert_pattern do
      response => {
        errors: ^(Langfuse::ArrayOf[Langfuse::Models::API::PublicBatchIngestionResponse::Error]),
        successes: ^(Langfuse::ArrayOf[Langfuse::Models::API::PublicBatchIngestionResponse::Success])
      }
    end
  end

  def test_check_health
    response = @langfuse.api.public.check_health

    assert_pattern do
      response => Langfuse::Models::API::PublicCheckHealthResponse
    end

    assert_pattern do
      response => {
        status: String,
        version: String
      }
    end
  end

  def test_create_dataset_run_item_required_params
    response = @langfuse.api.public.create_dataset_run_item(
      dataset_item_id: "datasetItemId",
      run_name: "runName"
    )

    assert_pattern do
      response => Langfuse::Models::API::DatasetRunItem
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        dataset_item_id: String,
        dataset_run_id: String,
        dataset_run_name: String,
        trace_id: String,
        updated_at: Time,
        observation_id: String | nil
      }
    end
  end

  def test_retrieve_projects
    response = @langfuse.api.public.retrieve_projects

    assert_pattern do
      response => Langfuse::Models::API::PublicRetrieveProjectsResponse
    end

    assert_pattern do
      response => {
        data: ^(Langfuse::ArrayOf[Langfuse::Models::API::PublicRetrieveProjectsResponse::Data])
      }
    end
  end
end
