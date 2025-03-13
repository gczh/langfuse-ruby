# typed: strong

module Langfuse
  module Models
    module API
      class CreateEventBody < Langfuse::Models::API::OptionalObservationBody
        sig { returns(T.nilable(String)) }
        def id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def id=(_)
        end

        sig { params(id: T.nilable(String)).returns(T.attached_class) }
        def self.new(id: nil)
        end

        sig { override.returns({id: T.nilable(String)}) }
        def to_hash
        end
      end
    end
  end
end
