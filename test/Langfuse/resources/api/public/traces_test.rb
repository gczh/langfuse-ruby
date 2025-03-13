# frozen_string_literal: true

require_relative "../../../test_helper"

class Langfuse::Test::Resources::API::Public::TracesTest < Langfuse::Test::ResourceTest
  def test_retrieve
    response = @langfuse.api.public.traces.retrieve("traceId")

    assert_pattern do
      response => Langfuse::Models::API::Public::TraceRetrieveResponse
    end
  end

  def test_list
    response = @langfuse.api.public.traces.list

    assert_pattern do
      response => Langfuse::Models::API::Public::TraceListResponse
    end

    assert_pattern do
      response => {
        data: ^(Langfuse::ArrayOf[Langfuse::Models::API::Public::TraceListResponse::Data]),
        meta: Langfuse::Models::API::Public::UtilsMetaResponse
      }
    end
  end

  def test_delete
    response = @langfuse.api.public.traces.delete("traceId")

    assert_pattern do
      response => Langfuse::Models::API::Public::DeleteTraceResponse
    end

    assert_pattern do
      response => {
        message: String
      }
    end
  end

  def test_delete_multiple_required_params
    response = @langfuse.api.public.traces.delete_multiple(trace_ids: ["string"])

    assert_pattern do
      response => Langfuse::Models::API::Public::DeleteTraceResponse
    end

    assert_pattern do
      response => {
        message: String
      }
    end
  end
end
