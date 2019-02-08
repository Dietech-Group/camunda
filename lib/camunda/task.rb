class Camunda::Task < Camunda::Api
  def self.collection_name
    'task'
  end

  def self.comment_create(id, comment)
    self.post("#{id}/comment/create", nil,
              {
                  "message": comment
              })
  end

  def self.comments(id)
    task = self.new(id: id)
    task.get("comment", nil)
  end
end
