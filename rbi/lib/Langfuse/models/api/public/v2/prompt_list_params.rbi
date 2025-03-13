# typed: strong

module Langfuse
  module Models
    module API
      module Public
        module V2
          class PromptListParams < Langfuse::BaseModel
            extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            sig { returns(T.nilable(Time)) }
            def from_updated_at
            end

            sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
            def from_updated_at=(_)
            end

            sig { returns(T.nilable(String)) }
            def label
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def label=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def limit
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def limit=(_)
            end

            sig { returns(T.nilable(String)) }
            def name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def page
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def page=(_)
            end

            sig { returns(T.nilable(String)) }
            def tag
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def tag=(_)
            end

            sig { returns(T.nilable(Time)) }
            def to_updated_at
            end

            sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
            def to_updated_at=(_)
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
                request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
              )
                .returns(T.attached_class)
            end
            def self.new(
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
              override
                .returns(
                  {
                    from_updated_at: T.nilable(Time),
                    label: T.nilable(String),
                    limit: T.nilable(Integer),
                    name: T.nilable(String),
                    page: T.nilable(Integer),
                    tag: T.nilable(String),
                    to_updated_at: T.nilable(Time),
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
end
