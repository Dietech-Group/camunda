class Camunda::Api < ActiveResource::Base
  self.site = 'http://localhost:8080/engine-rest/'
  self.include_format_in_path = false

  public

  def version
    ActiveSupport::JSON.decode(connection.get("#{self.class.prefix}version", self.class.headers).body)["version"]
  rescue ActiveResource::ResourceNotFound => exception
    return nil
  end
end
