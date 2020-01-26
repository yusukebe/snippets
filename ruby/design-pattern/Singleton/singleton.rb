# coding: utf-8
# require 'singleton'

class Singleton
  def initialize
    puts "インスタンスを生成しました。"
  end

  def self.instance
    @instance ||= Singleton.new
  end
end
