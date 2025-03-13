# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class UtilsMetaResponse < Langfuse::BaseModel
          sig { returns(Integer) }
          def limit
          end

          sig { params(_: Integer).returns(Integer) }
          def limit=(_)
          end

          sig { returns(Integer) }
          def page
          end

          sig { params(_: Integer).returns(Integer) }
          def page=(_)
          end

          sig { returns(Integer) }
          def total_items
          end

          sig { params(_: Integer).returns(Integer) }
          def total_items=(_)
          end

          sig { returns(Integer) }
          def total_pages
          end

          sig { params(_: Integer).returns(Integer) }
          def total_pages=(_)
          end

          sig do
            params(
              limit: Integer,
              page: Integer,
              total_items: Integer,
              total_pages: Integer
            ).returns(T.attached_class)
          end
          def self.new(limit:, page:, total_items:, total_pages:)
          end

          sig do
            override.returns({limit: Integer, page: Integer, total_items: Integer, total_pages: Integer})
          end
          def to_hash
          end
        end
      end
    end
  end
end
