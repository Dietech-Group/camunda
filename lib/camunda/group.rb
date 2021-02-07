class Camunda::Group < Camunda::Api
  def self.collection_name
    'group'
  end

  def self.create(id, name)
    self.post("create", nil,
              {
                  "id": id,
                  "name": name,
              }.to_json)
  end

  def self.delete(id)
    group = self.new(id: id)
    group.delete("")
  end

  def self.member_create(id, user_id)
    group = self.new(id: id)
    group.put("members/#{user_id}", nil, nil)
  end

  def self.member_delete(id, user_id)
    group = self.new(id: id)
    group.delete("members/#{user_id}")
  end
end
