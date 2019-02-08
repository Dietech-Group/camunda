class Camunda::Task < Camunda::Api
  def self.collection_name
    'task'
  end

  def self.comment_create(id, comment)
    task = self.new(id: id)
    task.post("comment/create", nil,
               {
                   "message": comment
               })
  end

  def self.comments(id)
    task = self.new(id: id)
    task.get("comment", nil)
  end
end
