# coding: utf-8

class AbstractMonster
  def initialize(name)
    @name = name
  end

  #XXX
  def attack
  end

  #XXX
  def defence
  end

  def show_info
    puts "名前:" + @name
    puts "攻撃力:" + attack.to_s
    puts "守備力:" + defence.to_s
    puts ""
  end
end

class Slime < AbstractMonster
  def attack
    15
  end

  def defence
    10
  end
end

class Dragon < AbstractMonster
  def attack
    60
  end

  def defence
    45
  end
end
