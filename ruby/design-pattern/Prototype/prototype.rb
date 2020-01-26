class Manager
  def initialize
    @showcase = {}
  end

  def register(name, proto)
    @showcase.store(name, proto)
  end

  def create(protoname)
    p = @showcase.fetch(protoname)
    p.create_clone
  end
end

class Product
  #XXX
  def use
  end

  def create_clone
    self.clone
  end
end

class UnderlinePen < Product
  def initialize(ulchar)
    @ulchar = ulchar
  end

  def use(s)
    length = s.length
    puts s
    length.times do
      print @ulchar
    end
    puts ""
  end
end

class MessageBox < Product
  def initialize(decochar)
    @decochar = decochar
  end

  def use(s)
    length = s.length
    (length + 2).times do
      print @decochar
    end
    puts ""
    puts @decochar + s + @decochar
    (length + 2).times do
      print @decochar
    end
    puts ""
  end
end
