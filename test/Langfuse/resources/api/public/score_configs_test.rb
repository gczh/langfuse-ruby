# frozen_string_literal: true

require_relative "../../../test_helper"

class Langfuse::Test::Resources::API::Public::ScoreConfigsTest < Langfuse::Test::ResourceTest
  def test_create_required_params
    response = @langfuse.api.public.score_configs.create(data_type: :NUMERIC, name: "name")

    assert_pattern do
      response => Langfuse::Models::API::Public::ScoreConfig
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        data_type: Langfuse::Models::API::Public::ScoreDataType,
        is_archived: Langfuse::BooleanModel,
        name: String,
        project_id: String,
        updated_at: Time,
        categories: ^(Langfuse::ArrayOf[Langfuse::Models::API::Public::ConfigCategory]) | nil,
        description: String | nil,
        max_value: Float | nil,
        min_value: Float | nil
      }
    end
  end

  def test_retrieve
    response = @langfuse.api.public.score_configs.retrieve("configId")

    assert_pattern do
      response => Langfuse::Models::API::Public::ScoreConfig
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        data_type: Langfuse::Models::API::Public::ScoreDataType,
        is_archived: Langfuse::BooleanModel,
        name: String,
        project_id: String,
        updated_at: Time,
        categories: ^(Langfuse::ArrayOf[Langfuse::Models::API::Public::ConfigCategory]) | nil,
        description: String | nil,
        max_value: Float | nil,
        min_value: Float | nil
      }
    end
  end

  def test_list
    response = @langfuse.api.public.score_configs.list

    assert_pattern do
      response => Langfuse::Models::API::Public::ScoreConfigListResponse
    end

    assert_pattern do
      response => {
        data: ^(Langfuse::ArrayOf[Langfuse::Models::API::Public::ScoreConfig]),
        meta: Langfuse::Models::API::Public::UtilsMetaResponse
      }
    end
  end
end
