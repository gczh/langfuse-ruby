# frozen_string_literal: true

require_relative "../../../test_helper"

class Langfuse::Test::Resources::API::Public::MediaTest < Langfuse::Test::ResourceTest
  def test_retrieve
    response = @langfuse.api.public.media.retrieve("mediaId")

    assert_pattern do
      response => Langfuse::Models::API::Public::MediaRetrieveResponse
    end

    assert_pattern do
      response => {
        content_length: Integer,
        content_type: String,
        media_id: String,
        uploaded_at: Time,
        url: String,
        url_expiry: String
      }
    end
  end

  def test_update_required_params
    response = @langfuse.api.public.media.update(
      "mediaId",
      uploaded_at: "2019-12-27T18:11:19.117Z",
      upload_http_status: 0
    )

    assert_pattern do
      response => nil
    end
  end

  def test_create_upload_url_required_params
    response = @langfuse.api.public.media.create_upload_url(
      content_length: 0,
      content_type: :"image/png",
      field: "field",
      sha256_hash: "sha256Hash",
      trace_id: "traceId"
    )

    assert_pattern do
      response => Langfuse::Models::API::Public::MediaCreateUploadURLResponse
    end

    assert_pattern do
      response => {
        media_id: String,
        upload_url: String | nil
      }
    end
  end
end
