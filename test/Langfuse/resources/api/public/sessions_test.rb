# frozen_string_literal: true

require_relative "../../../test_helper"

class Langfuse::Test::Resources::API::Public::SessionsTest < Langfuse::Test::ResourceTest
  def test_retrieve
    response = @langfuse.api.public.sessions.retrieve("sessionId")

    assert_pattern do
      response => Langfuse::Models::API::Public::SessionRetrieveResponse
    end
  end

  def test_list
    response = @langfuse.api.public.sessions.list

    assert_pattern do
      response => Langfuse::Models::API::Public::SessionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Langfuse::ArrayOf[Langfuse::Models::API::Public::Session]),
        meta: Langfuse::Models::API::Public::UtilsMetaResponse
      }
    end
  end
end
