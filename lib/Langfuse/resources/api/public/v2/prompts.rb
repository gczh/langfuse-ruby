# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      class Public
        class V2
          class Prompts
            # Create a new version for the prompt with the given `name`
            #
            # @param params [Langfuse::Models::API::Public::V2::PromptCreateParams, Hash{Symbol=>Object}] .
            #
            #   @option params [String] :name
            #
            #   @option params [String] :prompt
            #
            #   @option params [String, nil] :commit_message Commit message for this prompt version.
            #
            #   @option params [Object] :config
            #
            #   @option params [Array<String>, nil] :labels List of deployment labels of this prompt version.
            #
            #   @option params [Array<String>, nil] :tags List of tags to apply to all versions of this prompt.
            #
            #   @option params [Symbol, Langfuse::Models::API::Public::V2::PromptCreateParams::Type] :type
            #
            #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
            #
            # @return [Langfuse::Models::API::Public::V2::Prompt::UnionMember0, Langfuse::Models::API::Public::V2::Prompt::UnionMember1]
            #
            def create(params)
              parsed, options = Langfuse::Models::API::Public::V2::PromptCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "api/public/v2/prompts",
                body: parsed,
                model: Langfuse::Models::API::Public::V2::Prompt,
                options: options
              )
            end

            # Get a prompt
            #
            # @param prompt_name [String] The name of the prompt
            #
            # @param params [Langfuse::Models::API::Public::V2::PromptRetrieveParams, Hash{Symbol=>Object}] .
            #
            #   @option params [String, nil] :label Label of the prompt to be retrieved. Defaults to "production" if no label or
            #     version is set.
            #
            #   @option params [Integer, nil] :version Version of the prompt to be retrieved.
            #
            #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
            #
            # @return [Langfuse::Models::API::Public::V2::Prompt::UnionMember0, Langfuse::Models::API::Public::V2::Prompt::UnionMember1]
            #
            def retrieve(prompt_name, params = {})
              parsed, options = Langfuse::Models::API::Public::V2::PromptRetrieveParams.dump_request(params)
              @client.request(
                method: :get,
                path: ["api/public/v2/prompts/%0s", prompt_name],
                query: parsed,
                model: Langfuse::Models::API::Public::V2::Prompt,
                options: options
              )
            end

            # Get a list of prompt names with versions and labels
            #
            # @param params [Langfuse::Models::API::Public::V2::PromptListParams, Hash{Symbol=>Object}] .
            #
            #   @option params [Time, nil] :from_updated_at Optional filter to only include prompt versions created/updated on or after a
            #     certain datetime (ISO 8601)
            #
            #   @option params [String, nil] :label
            #
            #   @option params [Integer, nil] :limit limit of items per page
            #
            #   @option params [String, nil] :name
            #
            #   @option params [Integer, nil] :page page number, starts at 1
            #
            #   @option params [String, nil] :tag
            #
            #   @option params [Time, nil] :to_updated_at Optional filter to only include prompt versions created/updated before a certain
            #     datetime (ISO 8601)
            #
            #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
            #
            # @return [Langfuse::Models::API::Public::V2::PromptListResponse]
            #
            def list(params = {})
              parsed, options = Langfuse::Models::API::Public::V2::PromptListParams.dump_request(params)
              @client.request(
                method: :get,
                path: "api/public/v2/prompts",
                query: parsed,
                model: Langfuse::Models::API::Public::V2::PromptListResponse,
                options: options
              )
            end

            # Update labels for a specific prompt version
            #
            # @param version [Integer] Path param: Version of the prompt to update
            #
            # @param params [Langfuse::Models::API::Public::V2::PromptUpdateLabelsParams, Hash{Symbol=>Object}] .
            #
            #   @option params [String] :name Path param: The name of the prompt
            #
            #   @option params [Array<String>] :new_labels Body param: New labels for the prompt version. Labels are unique across
            #     versions. The "latest" label is reserved and managed by Langfuse.
            #
            #   @option params [Langfuse::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
            #
            # @return [Langfuse::Models::API::Public::V2::Prompt::UnionMember0, Langfuse::Models::API::Public::V2::Prompt::UnionMember1]
            #
            def update_labels(version, params)
              parsed, options = Langfuse::Models::API::Public::V2::PromptUpdateLabelsParams.dump_request(params)
              name = parsed.delete(:name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
              @client.request(
                method: :patch,
                path: ["api/public/v2/prompts/%0s/versions/%1s", name, version],
                body: parsed,
                model: Langfuse::Models::API::Public::V2::Prompt,
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
end
