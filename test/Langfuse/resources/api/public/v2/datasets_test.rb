# frozen_string_literal: true

require_relative "../../../../test_helper"

class Langfuse::Test::Resources::API::Public::V2::DatasetsTest < Langfuse::Test::ResourceTest
  def test_create_required_params
    response = @langfuse.api.public.v2.datasets.create(name: "name")

    assert_pattern do
      response => Langfuse::Models::API::Public::V2::Dataset
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        name: String,
        project_id: String,
        updated_at: Time,
        description: String | nil,
        metadata: Langfuse::Unknown | nil
      }
    end
  end

  def test_retrieve
    response = @langfuse.api.public.v2.datasets.retrieve("datasetName")

    assert_pattern do
      response => Langfuse::Models::API::Public::V2::Dataset
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        name: String,
        project_id: String,
        updated_at: Time,
        description: String | nil,
        metadata: Langfuse::Unknown | nil
      }
    end
  end

  def test_list
    response = @langfuse.api.public.v2.datasets.list

    assert_pattern do
      response => Langfuse::Models::API::Public::V2::DatasetListResponse
    end

    assert_pattern do
      response => {
        data: ^(Langfuse::ArrayOf[Langfuse::Models::API::Public::V2::Dataset]),
        meta: Langfuse::Models::API::Public::UtilsMetaResponse
      }
    end
  end
end
