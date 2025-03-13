# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        class Comments
          sig do
            params(
              content: String,
              object_id_: String,
              object_type: String,
              project_id: String,
              author_user_id: T.nilable(String),
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::CommentCreateResponse)
          end
          def create(
            content:,
            object_id_:,
            object_type:,
            project_id:,
            author_user_id: nil,
            request_options: {}
          )
          end

          sig do
            params(
              comment_id: String,
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::Comment)
          end
          def retrieve(comment_id, request_options: {})
          end

          sig do
            params(
              author_user_id: T.nilable(String),
              limit: T.nilable(Integer),
              object_id_: T.nilable(String),
              object_type: T.nilable(String),
              page: T.nilable(Integer),
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::CommentListResponse)
          end
          def list(
            author_user_id: nil,
            limit: nil,
            object_id_: nil,
            object_type: nil,
            page: nil,
            request_options: {}
          )
          end

          sig { params(client: Langfuse::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
