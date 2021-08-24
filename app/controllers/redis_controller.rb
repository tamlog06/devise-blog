class RedisController < ApplicationController
  belongs_to :posts
  def index
    Redis.current.set("testkey", "mebee")
  end
end