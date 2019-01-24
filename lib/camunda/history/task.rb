module Camunda::History
end

class Camunda::History::Task < Camunda::Api
  def self.collection_name
    'history/task'
  end
end
