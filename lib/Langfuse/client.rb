# frozen_string_literal: true

module Langfuse
  class Client < Langfuse::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String]
    attr_reader :username

    # @return [String]
    attr_reader :password

    # @return [Langfuse::Resources::API]
    attr_reader :api

    # @private
    #
    # @return [Hash{String=>String}]
    #
    private def auth_headers
      return {} if @username.nil? || @password.nil?

      base64_credentials = ["#{@username}:#{@password}"].pack("m0")
      {"authorization" => "Basic #{base64_credentials}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
    #
    # @param username [String, nil] Defaults to `ENV["LANGFUSE_USERNAME"]`
    #
    # @param password [String, nil] Defaults to `ENV["LANGFUSE_PASSWORD"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    #
    def initialize(
      base_url: nil,
      username: ENV["LANGFUSE_USERNAME"],
      password: ENV["LANGFUSE_PASSWORD"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.example.com"

      if username.nil?
        raise ArgumentError.new("username is required")
      end
      if password.nil?
        raise ArgumentError.new("password is required")
      end

      @username = username.to_s
      @password = password.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @api = Langfuse::Resources::API.new(client: self)
    end
  end
end
