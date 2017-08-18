require_relative 'application_entity'

class Topic < ApplicationEntity
  attr_reader :title, :id, :created_at, :updated_at

  def initialize(id: nil, title:, created_at: nil, updated_at: nil)
    @id, @title, @created_at, @updated_at = id, title, created_at, updated_at
  end

  def self.all
    DB.query('SELECT * FROM topics ORDER BY updated_at DESC').map { |hash| new(hash) }
  end
end
