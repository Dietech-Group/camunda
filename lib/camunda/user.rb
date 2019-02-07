class Camunda::User < Camunda::Api
  def self.collection_name
    'user'
  end

  def self.create(id, firstname, lastname, email, password)
    self.post(:create, nil,
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
end
