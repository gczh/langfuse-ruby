# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class CommentCreateParams < Langfuse::BaseModel
          extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          sig { returns(String) }
          def content
          end

          sig { params(_: String).returns(String) }
          def content=(_)
          end

          sig { returns(String) }
          def object_id_
          end

          sig { params(_: String).returns(String) }
          def object_id_=(_)
          end

          sig { returns(String) }
          def object_type
          end

          sig { params(_: String).returns(String) }
          def object_type=(_)
          end

          sig { returns(String) }
          def project_id
          end

          sig { params(_: String).returns(String) }
          def project_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def author_user_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def author_user_id=(_)
          end

          sig do
            params(
              content: String,
              object_id_: String,
              object_type: String,
              project_id: String,
              author_user_id: T.nilable(String),
              request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(content:, object_id_:, object_type:, project_id:, author_user_id: nil, request_options: {})
          end

          sig do
            override
              .returns(
                {
                  content: String,
                  object_id_: String,
                  object_type: String,
                  project_id: String,
                  author_user_id: T.nilable(String),
                  request_options: Langfuse::RequestOptions
                }
              )
          end
          def to_hash
          end
        end
      end
    end
  end
end
