module RequestSpecHelper
  def json
    JSON.parse(response.body)
  end

  def generate_jwt
    payload = { iss: 'ms-template' }
    JWT.encode(payload, ENV['SECRET_KEY_BASE'], 'HS256')
  end

  def authorization_header
    { 'AUTHORIZATION' => "Bearer #{generate_jwt}" }
  end
end
