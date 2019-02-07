class Camunda::Identity < Camunda::Api
  def self.collection_name
    'identity'
  end

  def self.groups(user_id)
    self.get("groups", {"userId": user_id})
  end
end
