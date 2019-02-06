class Camunda::User < Camunda::Api
  def self.collection_name
    'user'
  end

  def self.delete(id)
    user = self.new(id: id)
    user.delete("")
  end
end
