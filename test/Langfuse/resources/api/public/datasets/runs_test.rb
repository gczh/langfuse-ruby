# frozen_string_literal: true

require_relative "../../../../test_helper"

class Langfuse::Test::Resources::API::Public::Datasets::RunsTest < Langfuse::Test::ResourceTest
  def test_retrieve_required_params
    response = @langfuse.api.public.datasets.runs.retrieve("runName", dataset_name: "datasetName")

    assert_pattern do
      response => Langfuse::Models::API::Public::Datasets::RunRetrieveResponse
    end
  end

  def test_list
    response = @langfuse.api.public.datasets.runs.list("datasetName")

    assert_pattern do
      response => Langfuse::Models::API::Public::Datasets::RunListResponse
    end

    assert_pattern do
      response => {
        data: ^(Langfuse::ArrayOf[Langfuse::Models::API::Public::Datasets::DatasetRun]),
        meta: Langfuse::Models::API::Public::UtilsMetaResponse
      }
    end
  end

  def test_delete_required_params
    response = @langfuse.api.public.datasets.runs.delete("runName", dataset_name: "datasetName")

    assert_pattern do
      response => Langfuse::Models::API::Public::Datasets::RunDeleteResponse
    end

    assert_pattern do
      response => {
        message: String
      }
    end
  end
end
