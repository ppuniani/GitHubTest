class Thing
  def initialize(name,desc)
    @name = name;
    @desc = desc;
  end
  attr_reader:name,:desc;
  attr_writer:name,:desc;
end
class Treasure < Thing
  attr_accessor(:value);
  def initialize(name,desc,value)
    super(name,desc);
    @value = value;
  end
  def to_s
    return "The treasure has name #{name}description #{desc} and value #{@value}";
  end
end
t1 = Treasure.new("Jewel Island","Island full of jewels",100);
puts("T1: #{t1.to_s}");
t1.name = "Diamond Island";
t1.desc = "Island full of diamonds";
t1.value = 200;
puts("T1 (updated): #{t1.to_s}");
  