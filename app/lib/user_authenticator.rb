class UserAuthenticator
  class AuthenticationError < StandardError; end

  def initialize(code)
    @code = code
  end

  def perform
    client = Octokit::Client.new(client_id: ENV['CLIENT_ID'], client_secret: ENV['CLIENT_SECRET'])
    # user = client.user('ezeilo-su')
    res = client.exchange_code_for_token(@code)
    if res.try(:error).present?
      raise AuthenticationError
    else
      # user registration
    end

    private
    attr_reader :code
  end
end
