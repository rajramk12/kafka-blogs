class Article < ApplicationRecord
  # include Elasticsearch::Model
  # include Elasticsearch::Model::Callbacks

  # index_name "article_index"
  # document_type self.name.downcase
  # after_create_commit  :send_to_kafka
  private

  def send_to_kafka
    # debugger
    Karafka.producer.produce_sync(topic: 'new_article', payload: self.to_json)
  end 
end
