# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      class Public
        class Media
          # Get a media record
          #
          # @param media_id [String] The unique langfuse identifier of a media record
          #
          # @param params [Langfuse::Models::API::Public::MediaRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::MediaRetrieveResponse]
          #
          def retrieve(media_id, params = {})
            @client.request(
              method: :get,
              path: ["api/public/media/%0s", media_id],
              model: Langfuse::Models::API::Public::MediaRetrieveResponse,
              options: params[:request_options]
            )
          end

          # Patch a media record
          #
          # @param media_id [String] The unique langfuse identifier of a media record
          #
          # @param params [Langfuse::Models::API::Public::MediaUpdateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Time] :uploaded_at The date and time when the media record was uploaded
          #
          #   @option params [Integer] :upload_http_status The HTTP status code of the upload
          #
          #   @option params [String, nil] :upload_http_error The HTTP error message of the upload
          #
          #   @option params [Integer, nil] :upload_time_ms The time in milliseconds it took to upload the media record
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [nil]
          #
          def update(media_id, params)
            parsed, options = Langfuse::Models::API::Public::MediaUpdateParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["api/public/media/%0s", media_id],
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Get a presigned upload URL for a media record
          #
          # @param params [Langfuse::Models::API::Public::MediaCreateUploadURLParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Integer] :content_length The size of the media record in bytes
          #
          #   @option params [Symbol, Langfuse::Models::API::Public::MediaCreateUploadURLParams::ContentType] :content_type The MIME type of the media record
          #
          #   @option params [String] :field The trace / observation field the media record is associated with. This can be
          #     one of `input`, `output`, `metadata`
          #
          #   @option params [String] :sha256_hash The SHA-256 hash of the media record
          #
          #   @option params [String] :trace_id The trace ID associated with the media record
          #
          #   @option params [String, nil] :observation_id The observation ID associated with the media record. If the media record is
          #     associated directly with a trace, this will be null.
          #
          #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Langfuse::Models::API::Public::MediaCreateUploadURLResponse]
          #
          def create_upload_url(params)
            parsed, options = Langfuse::Models::API::Public::MediaCreateUploadURLParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/public/media",
              body: parsed,
              model: Langfuse::Models::API::Public::MediaCreateUploadURLResponse,
              options: options
            )
          end

          # @param client [Langfuse::Client]
          #
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
