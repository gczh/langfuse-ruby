# frozen_string_literal: true

require_relative "../../../test_helper"

class Langfuse::Test::Resources::API::Public::CommentsTest < Langfuse::Test::ResourceTest
  def test_create_required_params
    response = @langfuse.api.public.comments.create(
      content: "content",
      object_id_: "objectId",
      object_type: "objectType",
      project_id: "projectId"
    )

    assert_pattern do
      response => Langfuse::Models::API::Public::CommentCreateResponse
    end

    assert_pattern do
      response => {
        id: String
      }
    end
  end

  def test_retrieve
    response = @langfuse.api.public.comments.retrieve("commentId")

    assert_pattern do
      response => Langfuse::Models::API::Public::Comment
    end

    assert_pattern do
      response => {
        id: String,
        content: String,
        created_at: Time,
        object_id_: String,
        object_type: Langfuse::Models::API::Public::Comment::ObjectType,
        project_id: String,
        updated_at: Time,
        author_user_id: String | nil
      }
    end
  end

  def test_list
    response = @langfuse.api.public.comments.list

    assert_pattern do
      response => Langfuse::Models::API::Public::CommentListResponse
    end

    assert_pattern do
      response => {
        data: ^(Langfuse::ArrayOf[Langfuse::Models::API::Public::Comment]),
        meta: Langfuse::Models::API::Public::UtilsMetaResponse
      }
    end
  end
end
