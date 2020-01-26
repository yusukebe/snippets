# coding: utf-8
require_relative 'factory_method'

factory = IDCardFactory.new
card1 = factory.create('山田')
card2 = factory.create('鈴木')
card3 = factory.create('佐藤')

card1.use
card2.use
card3.use
