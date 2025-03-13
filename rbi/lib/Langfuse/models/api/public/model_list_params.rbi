# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class ModelListParams < Langfuse::BaseModel
          extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          sig { returns(T.nilable(Integer)) }
          def limit
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def page
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def page=(_)
          end

          sig do
            params(
              limit: T.nilable(Integer),
              page: T.nilable(Integer),
              request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(limit: nil, page: nil, request_options: {})
          end

          sig do
            override
              .returns({
                         limit: T.nilable(Integer),
                         page: T.nilable(Integer),
                         request_options: Langfuse::RequestOptions
                       })
          end
          def to_hash
          end
        end
      end
    end
  end
end
