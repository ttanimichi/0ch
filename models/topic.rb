require_relative 'application_entity'

class Topic < ApplicationEntity
  MIN_SIZE = 1
  MAX_SIZE = 50

  attr_reader :title, :id, :created_at, :updated_at

  def initialize(id: nil, title:, created_at: nil, updated_at: nil)
    @id, @title, @created_at, @updated_at = id, title, created_at, updated_at
  end

  def self.all
    DB.query('SELECT * FROM topics ORDER BY updated_at DESC').map { |hash| new(hash) }
  end

  def self.find(id)
    result = DB.query("SELECT * FROM topics WHERE id = #{id} LIMIT 1").first
    new(result)
  end

  def save
    validate
    DB.query("INSERT INTO topics (title, created_at, updated_at) VALUES ('#{@title}', NOW(), NOW())")
  end

  def validate
    unless @title.size >= MIN_SIZE && @title.size <= MAX_SIZE
      raise Invalid, "タイトルは#{MIN_SIZE}文字以上、#{MAX_SIZE}文字以下で指定してください"
    end
  end
end
