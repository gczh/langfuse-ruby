# frozen_string_literal: true

require_relative "../../../../test_helper"

class Langfuse::Test::Resources::API::Public::AnnotationQueues::ItemsTest < Langfuse::Test::ResourceTest
  def test_create_required_params
    response = @langfuse.api.public.annotation_queues.items.create(
      "queueId",
      object_id_: "objectId",
      object_type: :TRACE
    )

    assert_pattern do
      response => Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueItem
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        object_id_: String,
        object_type: Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueObjectType,
        queue_id: String,
        status: Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueStatus,
        updated_at: Time,
        completed_at: Time | nil
      }
    end
  end

  def test_retrieve_required_params
    response = @langfuse.api.public.annotation_queues.items.retrieve("itemId", queue_id: "queueId")

    assert_pattern do
      response => Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueItem
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        object_id_: String,
        object_type: Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueObjectType,
        queue_id: String,
        status: Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueStatus,
        updated_at: Time,
        completed_at: Time | nil
      }
    end
  end

  def test_update_required_params
    response = @langfuse.api.public.annotation_queues.items.update("itemId", queue_id: "queueId")

    assert_pattern do
      response => Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueItem
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        object_id_: String,
        object_type: Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueObjectType,
        queue_id: String,
        status: Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueStatus,
        updated_at: Time,
        completed_at: Time | nil
      }
    end
  end

  def test_list
    response = @langfuse.api.public.annotation_queues.items.list("queueId")

    assert_pattern do
      response => Langfuse::Models::API::Public::AnnotationQueues::ItemListResponse
    end

    assert_pattern do
      response => {
        data: ^(Langfuse::ArrayOf[Langfuse::Models::API::Public::AnnotationQueues::AnnotationQueueItem]),
        meta: Langfuse::Models::API::Public::UtilsMetaResponse
      }
    end
  end

  def test_delete_required_params
    response = @langfuse.api.public.annotation_queues.items.delete("itemId", queue_id: "queueId")

    assert_pattern do
      response => Langfuse::Models::API::Public::AnnotationQueues::ItemDeleteResponse
    end

    assert_pattern do
      response => {
        message: String,
        success: Langfuse::BooleanModel
      }
    end
  end
end
