# frozen_string_literal: true

require_relative "../../../test_helper"

class Langfuse::Test::Resources::API::Public::MetricsTest < Langfuse::Test::ResourceTest
  def test_get_daily
    response = @langfuse.api.public.metrics.get_daily

    assert_pattern do
      response => Langfuse::Models::API::Public::MetricGetDailyResponse
    end

    assert_pattern do
      response => {
        data: ^(Langfuse::ArrayOf[Langfuse::Models::API::Public::MetricGetDailyResponse::Data]),
        meta: Langfuse::Models::API::Public::UtilsMetaResponse
      }
    end
  end
end
