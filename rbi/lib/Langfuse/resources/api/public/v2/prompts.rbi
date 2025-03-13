# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        class V2
          class Prompts
            sig do
              params(
                name: String,
                prompt: String,
                commit_message: T.nilable(String),
                config: T.anything,
                labels: T.nilable(T::Array[String]),
                tags: T.nilable(T::Array[String]),
                type: Symbol,
                request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(
                  T.any(
                    Langfuse::Models::API::Public::V2::Prompt::UnionMember0,
                    Langfuse::Models::API::Public::V2::Prompt::UnionMember1
                  )
                )
            end
            def create(
              name:,
              prompt:,
              commit_message: nil,
              config: nil,
              labels: nil,
              tags: nil,
              type: nil,
              request_options: {}
            )
            end

            sig do
              params(
                prompt_name: String,
                label: T.nilable(String),
                version: T.nilable(Integer),
                request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(
                  T.any(
                    Langfuse::Models::API::Public::V2::Prompt::UnionMember0,
                    Langfuse::Models::API::Public::V2::Prompt::UnionMember1
                  )
                )
            end
            def retrieve(prompt_name, label: nil, version: nil, request_options: {})
            end

            sig do
              params(
                from_updated_at: T.nilable(Time),
                label: T.nilable(String),
                limit: T.nilable(Integer),
                name: T.nilable(String),
                page: T.nilable(Integer),
                tag: T.nilable(String),
                to_updated_at: T.nilable(Time),
                request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(Langfuse::Models::API::Public::V2::PromptListResponse)
            end
            def list(
              from_updated_at: nil,
              label: nil,
              limit: nil,
              name: nil,
              page: nil,
              tag: nil,
              to_updated_at: nil,
              request_options: {}
            )
            end

            sig do
              params(
                version: Integer,
                name: String,
                new_labels: T::Array[String],
                request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(
                  T.any(
                    Langfuse::Models::API::Public::V2::Prompt::UnionMember0,
                    Langfuse::Models::API::Public::V2::Prompt::UnionMember1
                  )
                )
            end
            def update_labels(version, name:, new_labels:, request_options: {})
            end

            sig { params(client: Langfuse::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
