require_relative 'application_entity'

class Post < ApplicationEntity
  MIN_SIZE = 1
  MAX_SIZE = 140

  attr_reader :name, :email, :body, :topic_id, :id, :created_at

  def initialize(name: nil, email: nil, body:, topic_id:, id: nil, created_at: nil)
    @name, @email, @body, @topic_id, @id, @created_at = name, email, body, topic_id, id, created_at
  end

  def self.of_topic(topic_id)
    DB.query("SELECT * FROM posts WHERE topic_id = #{topic_id}").map { |hash| new(hash) }
  end

  def save
    validate
    DB.query("INSERT INTO posts (name, email, body, topic_id, created_at) VALUES ('#{@name}', '#{@email}', '#{@body}', '#{@topic_id}', NOW())")
  end

  def validate
    unless @body.size >= MIN_SIZE && @body.size <= MAX_SIZE
      raise Invalid, "本文は#{MIN_SIZE}文字以上、#{MAX_SIZE}文字以下で指定してください"
    end
  end
end
