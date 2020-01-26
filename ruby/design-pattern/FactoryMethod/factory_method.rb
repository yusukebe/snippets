# coding: utf-8

class Factory
  def create(owner)
    product = create_product(owner)
    resiter_product(product)
    product
  end

  #XXX
  def create_product
  end

  #XXX
  def resiter_product
  end
end

class IDCardFactory < Factory
  def initialize
    @owners = []
  end

  def create_product(owner)
    IDCard.new(owner)
  end

  def resiter_product(product)
    @owners.push(product.owner)
  end

  def owners
    @owners
  end
end

class Product
  #XXX
  def use
  end
end

class IDCard < Product
  def initialize(owner)
    @owner = owner
    puts @owner +  "のカードを作ります。"
  end

  def use
    puts @owner +  "のカードを使います。"
  end

  def owner
    @owner
  end
end
