class BaseApi < ActiveResource::Base
  self.site = 'http://localhost:3000/api/v1'
  self.headers['Content-Type'] = 'application/json'

  cattr_accessor :static_headers
  self.static_headers = headers

  cattr_accessor :token

  def self.headers
    new_headers = static_headers.clone
    new_headers["Authorization"] = "Token token=#{token}"
    new_headers
  end
end
