# typed: strong

module Langfuse
  class Client < Langfuse::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    def username
    end

    sig { returns(String) }
    def password
    end

    sig { returns(Langfuse::Resources::API) }
    def api
    end

    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    sig do
      params(
        base_url: T.nilable(String),
        username: T.nilable(String),
        password: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      )
        .returns(T.attached_class)
    end
    def self.new(
      base_url: nil,
      username: ENV["LANGFUSE_USERNAME"],
      password: ENV["LANGFUSE_PASSWORD"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
