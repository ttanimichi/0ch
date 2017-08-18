require 'mysql2'

class DB
  def self.query(sql)
    client.query(sql, symbolize_keys: true)
  end

  private

  def self.client
    @client ||= Mysql2::Client.new(host: 'localhost', username: 'root', database: '0ch')
  end
end
