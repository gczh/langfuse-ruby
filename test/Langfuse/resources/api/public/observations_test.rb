# frozen_string_literal: true

require_relative "../../../test_helper"

class Langfuse::Test::Resources::API::Public::ObservationsTest < Langfuse::Test::ResourceTest
  def test_retrieve
    response = @langfuse.api.public.observations.retrieve("observationId")

    assert_pattern do
      response => Langfuse::Models::API::Public::ObservationsView
    end

    assert_pattern do
      response => {
        id: String,
        level: Langfuse::Models::API::Public::ObservationLevel,
        start_time: Time,
        type: String,
        calculated_input_cost: Float | nil,
        calculated_output_cost: Float | nil,
        calculated_total_cost: Float | nil,
        completion_start_time: Time | nil,
        cost_details: ^(Langfuse::HashOf[Float]) | nil,
        end_time: Time | nil,
        environment: String | nil,
        input: Langfuse::Unknown | nil,
        input_price: Float | nil,
        latency: Float | nil,
        metadata: Langfuse::Unknown | nil,
        model: String | nil,
        model_id: String | nil,
        model_parameters: ^(Langfuse::HashOf[union: Langfuse::Models::API::Public::ObservationsView::ModelParameter, nil?: true]) | nil,
        name: String | nil,
        output: Langfuse::Unknown | nil,
        output_price: Float | nil,
        parent_observation_id: String | nil,
        prompt_id: String | nil,
        prompt_name: String | nil,
        prompt_version: Integer | nil,
        status_message: String | nil,
        time_to_first_token: Float | nil,
        total_price: Float | nil,
        trace_id: String | nil,
        usage: Langfuse::Models::API::Public::Usage | nil,
        usage_details: ^(Langfuse::HashOf[Integer]) | nil,
        version: String | nil
      }
    end
  end

  def test_list
    response = @langfuse.api.public.observations.list

    assert_pattern do
      response => Langfuse::Models::API::Public::ObservationListResponse
    end

    assert_pattern do
      response => {
        data: ^(Langfuse::ArrayOf[Langfuse::Models::API::Public::ObservationsView]),
        meta: Langfuse::Models::API::Public::UtilsMetaResponse
      }
    end
  end
end
