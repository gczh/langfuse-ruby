# frozen_string_literal: true

require_relative "../../../test_helper"

class Langfuse::Test::Resources::API::Public::ScoresTest < Langfuse::Test::ResourceTest
  def test_create_required_params
    response = @langfuse.api.public.scores.create(name: "novelty", trace_id: "cdef-1234-5678-90ab", value: 0)

    assert_pattern do
      response => Langfuse::Models::API::Public::ScoreCreateResponse
    end

    assert_pattern do
      response => {
        id: String
      }
    end
  end

  def test_retrieve
    response = @langfuse.api.public.scores.retrieve("scoreId")

    assert_pattern do
      response => Langfuse::Models::API::Public::Score
    end

    assert_pattern do
      case response
      in Langfuse::Models::API::Public::Score::UnionMember0
      in Langfuse::Models::API::Public::Score::UnionMember1
      in Langfuse::Models::API::Public::Score::UnionMember2
      end
    end
  end

  def test_list
    response = @langfuse.api.public.scores.list

    assert_pattern do
      response => Langfuse::Models::API::Public::ScoreListResponse
    end

    assert_pattern do
      response => {
        data: ^(Langfuse::ArrayOf[union: Langfuse::Models::API::Public::ScoreListResponse::Data]),
        meta: Langfuse::Models::API::Public::UtilsMetaResponse
      }
    end
  end

  def test_delete
    response = @langfuse.api.public.scores.delete("scoreId")

    assert_pattern do
      response => nil
    end
  end
end
