require 'httparty'
require_relative "configuration"

class ClientService
  include HTTParty
  base_uri Configuration['auth_service_endpoint']

  def self.post(client_details, token)
    response = AuthService.post("/clientDetails",
      :body => client_details,
      :headers => {"Authorization" => "Bearer #{token}"}
    )
    response
  end

  def self.create_client(client, token)
    response = AuthService.post("/clientDetails",
      :body => { :clientSecret => client.client_secret, 
               :redirectUri => client.redirect_uri, 
               :grantTypes => client.grant_types,
               :roles => client.roles, 
               :scopes => client.scopes},
      :headers => {"Authorization" => "Bearer #{token}"}
    )
    response
  end

  def self.get_client(client_id, token) 
    response = AuthService.get("/clientDetails/#{client_id}", 
      :headers => {"Authorization" => "Bearer #{token}"}
    )
  end
  
  def self.get_all_clients(token) 
    response = AuthService.get("/clientDetails", 
      :headers => {"Authorization" => "Bearer #{token}"}
    )
  end

  def self.get_client_from_response(response)
    client_hash = JSON.parse(response.body)
    @client = Client.from_hash(client_hash)
  end

  def self.get_client_id_from_response(response)
    response.headers['location'][/.*\/clientDetails\/([0-9a-f-]*)/, 1]
  end
    
end
