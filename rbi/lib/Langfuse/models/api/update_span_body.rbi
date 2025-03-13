# typed: strong

module Langfuse
  module Models
    module API
      class UpdateSpanBody < Langfuse::Models::API::OptionalObservationBody
        sig { returns(T.nilable(Time)) }
        def end_time
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def end_time=(_)
        end

        sig { params(end_time: T.nilable(Time)).returns(T.attached_class) }
        def self.new(end_time: nil)
        end

        sig { override.returns({end_time: T.nilable(Time)}) }
        def to_hash
        end
      end
    end
  end
end
