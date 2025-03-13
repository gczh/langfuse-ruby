# frozen_string_literal: true

require_relative "../../../test_helper"

class Langfuse::Test::Resources::API::Public::DatasetItemsTest < Langfuse::Test::ResourceTest
  def test_create_required_params
    response = @langfuse.api.public.dataset_items.create(dataset_name: "datasetName")

    assert_pattern do
      response => Langfuse::Models::API::Public::DatasetItem
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        dataset_id: String,
        dataset_name: String,
        status: Langfuse::Models::API::Public::DatasetStatus,
        updated_at: Time,
        expected_output: Langfuse::Unknown | nil,
        input: Langfuse::Unknown | nil,
        metadata: Langfuse::Unknown | nil,
        source_observation_id: String | nil,
        source_trace_id: String | nil
      }
    end
  end

  def test_retrieve
    response = @langfuse.api.public.dataset_items.retrieve("id")

    assert_pattern do
      response => Langfuse::Models::API::Public::DatasetItem
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        dataset_id: String,
        dataset_name: String,
        status: Langfuse::Models::API::Public::DatasetStatus,
        updated_at: Time,
        expected_output: Langfuse::Unknown | nil,
        input: Langfuse::Unknown | nil,
        metadata: Langfuse::Unknown | nil,
        source_observation_id: String | nil,
        source_trace_id: String | nil
      }
    end
  end

  def test_list
    response = @langfuse.api.public.dataset_items.list

    assert_pattern do
      response => Langfuse::Models::API::Public::DatasetItemListResponse
    end

    assert_pattern do
      response => {
        data: ^(Langfuse::ArrayOf[Langfuse::Models::API::Public::DatasetItem]),
        meta: Langfuse::Models::API::Public::UtilsMetaResponse
      }
    end
  end

  def test_delete
    response = @langfuse.api.public.dataset_items.delete("id")

    assert_pattern do
      response => Langfuse::Models::API::Public::DatasetItemDeleteResponse
    end

    assert_pattern do
      response => {
        message: String
      }
    end
  end
end
