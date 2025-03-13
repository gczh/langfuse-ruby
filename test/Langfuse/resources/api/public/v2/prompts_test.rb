# frozen_string_literal: true

require_relative "../../../../test_helper"

class Langfuse::Test::Resources::API::Public::V2::PromptsTest < Langfuse::Test::ResourceTest
  def test_create_required_params
    response = @langfuse.api.public.v2.prompts.create(
      name: "name",
      prompt: [
        {
          content: "content", role: "role"
        }
      ]
    )

    assert_pattern do
      response => Langfuse::Models::API::Public::V2::Prompt
    end

    assert_pattern do
      case response
      in Langfuse::Models::API::Public::V2::Prompt::UnionMember0
      in Langfuse::Models::API::Public::V2::Prompt::UnionMember1
      end
    end
  end

  def test_retrieve
    response = @langfuse.api.public.v2.prompts.retrieve("promptName")

    assert_pattern do
      response => Langfuse::Models::API::Public::V2::Prompt
    end

    assert_pattern do
      case response
      in Langfuse::Models::API::Public::V2::Prompt::UnionMember0
      in Langfuse::Models::API::Public::V2::Prompt::UnionMember1
      end
    end
  end

  def test_list
    response = @langfuse.api.public.v2.prompts.list

    assert_pattern do
      response => Langfuse::Models::API::Public::V2::PromptListResponse
    end

    assert_pattern do
      response => {
        data: ^(Langfuse::ArrayOf[Langfuse::Models::API::Public::V2::PromptListResponse::Data]),
        meta: Langfuse::Models::API::Public::UtilsMetaResponse
      }
    end
  end

  def test_update_labels_required_params
    response = @langfuse.api.public.v2.prompts.update_labels(0, name: "name", new_labels: ["string"])

    assert_pattern do
      response => Langfuse::Models::API::Public::V2::Prompt
    end

    assert_pattern do
      case response
      in Langfuse::Models::API::Public::V2::Prompt::UnionMember0
      in Langfuse::Models::API::Public::V2::Prompt::UnionMember1
      end
    end
  end
end
