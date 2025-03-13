# frozen_string_literal: true

require_relative "../../../test_helper"

class Langfuse::Test::Resources::API::Public::ModelsTest < Langfuse::Test::ResourceTest
  def test_create_required_params
    response = @langfuse.api.public.models.create(match_pattern: "matchPattern", model_name: "modelName")

    assert_pattern do
      response => Langfuse::Models::API::Public::Model
    end

    assert_pattern do
      response => {
        id: String,
        is_langfuse_managed: Langfuse::BooleanModel,
        match_pattern: String,
        model_name: String,
        input_price: Float | nil,
        output_price: Float | nil,
        start_date: Time | nil,
        tokenizer_config: Langfuse::Unknown | nil,
        tokenizer_id: String | nil,
        total_price: Float | nil,
        unit: Langfuse::Models::API::Public::ModelUsageUnit | nil
      }
    end
  end

  def test_retrieve
    response = @langfuse.api.public.models.retrieve("id")

    assert_pattern do
      response => Langfuse::Models::API::Public::Model
    end

    assert_pattern do
      response => {
        id: String,
        is_langfuse_managed: Langfuse::BooleanModel,
        match_pattern: String,
        model_name: String,
        input_price: Float | nil,
        output_price: Float | nil,
        start_date: Time | nil,
        tokenizer_config: Langfuse::Unknown | nil,
        tokenizer_id: String | nil,
        total_price: Float | nil,
        unit: Langfuse::Models::API::Public::ModelUsageUnit | nil
      }
    end
  end

  def test_list
    response = @langfuse.api.public.models.list

    assert_pattern do
      response => Langfuse::Models::API::Public::ModelListResponse
    end

    assert_pattern do
      response => {
        data: ^(Langfuse::ArrayOf[Langfuse::Models::API::Public::Model]),
        meta: Langfuse::Models::API::Public::UtilsMetaResponse
      }
    end
  end

  def test_delete
    response = @langfuse.api.public.models.delete("id")

    assert_pattern do
      response => nil
    end
  end
end
