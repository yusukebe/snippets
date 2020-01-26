# coding: utf-8
require_relative 'singleton'

obj1 = Singleton.instance
obj2 = Singleton.instance

if obj1 == obj2
  puts "obj1とobj2は同じインスタンスです。"
else
  puts "obj1とobj2は同じインスタンスではありません。"
end
