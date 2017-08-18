require_relative 'application_entity'

class Post < ApplicationEntity
  attr_reader :name, :email, :body, :topic_id, :id, :created_at

  def initialize(name: nil, email: nil, body:, topic_id:, id: nil, created_at: nil)
    @name, @email, @body, @topic_id, @id, @created_at = name, email, body, topic_id, id, created_at
  end

  def self.of_topic(topic_id)
    DB.query("SELECT * FROM posts WHERE topic_id = #{topic_id}").map { |hash| new(hash) }
  end
end
