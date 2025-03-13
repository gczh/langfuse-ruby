# frozen_string_literal: true

require_relative "../../../test_helper"

class Langfuse::Test::Resources::API::Public::AnnotationQueuesTest < Langfuse::Test::ResourceTest
  def test_retrieve
    response = @langfuse.api.public.annotation_queues.retrieve("queueId")

    assert_pattern do
      response => Langfuse::Models::API::Public::AnnotationQueue
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        name: String,
        score_config_ids: ^(Langfuse::ArrayOf[String]),
        updated_at: Time,
        description: String | nil
      }
    end
  end

  def test_list
    response = @langfuse.api.public.annotation_queues.list

    assert_pattern do
      response => Langfuse::Models::API::Public::AnnotationQueueListResponse
    end

    assert_pattern do
      response => {
        data: ^(Langfuse::ArrayOf[Langfuse::Models::API::Public::AnnotationQueue]),
        meta: Langfuse::Models::API::Public::UtilsMetaResponse
      }
    end
  end
end
