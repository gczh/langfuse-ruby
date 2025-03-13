# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class CommentListParams < Langfuse::BaseModel
          extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          sig { returns(T.nilable(String)) }
          def author_user_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def author_user_id=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def limit
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_)
          end

          sig { returns(T.nilable(String)) }
          def object_id_
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def object_id_=(_)
          end

          sig { returns(T.nilable(String)) }
          def object_type
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def object_type=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def page
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def page=(_)
          end

          sig do
            params(
              author_user_id: T.nilable(String),
              limit: T.nilable(Integer),
              object_id_: T.nilable(String),
              object_type: T.nilable(String),
              page: T.nilable(Integer),
              request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(author_user_id: nil, limit: nil, object_id_: nil, object_type: nil, page: nil, request_options: {})
          end

          sig do
            override
              .returns(
                {
                  author_user_id: T.nilable(String),
                  limit: T.nilable(Integer),
                  object_id_: T.nilable(String),
                  object_type: T.nilable(String),
                  page: T.nilable(Integer),
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
