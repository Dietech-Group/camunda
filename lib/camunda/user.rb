class Camunda::User < Camunda::Api
  def self.collection_name
    'user'
  end

  def self.create(id, firstname, lastname, email, password)
    self.post("create", nil,
              {
                  "profile": {
                      "id": id,
                      "firstName": firstname,
                      "lastName": lastname,
                      "email": email
                  },
                  "credentials": {
                      "password": password
                  }
              }.to_json)
  end

  def self.delete(id)
    user = self.new(id: id)
    user.delete("")
  end

  # User Identity endpoint query result are maybe very large because it returns also a groupUsers array
  def self.groups(id)
    Camunda::Identity.groups(id)["groups"]
  end
end
