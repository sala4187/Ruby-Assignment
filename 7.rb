#7(a)

class Dessert
  attr_accessor :name, :calories
  
  def initialize(name, calories)
    @name=name
    @calories=calories
  end
  
  def healthy?
     @calories<200 
  end

  def delicious?
    true
  end
end

puts "7(a)"
cookie=Dessert.new("cookie",150)
puts "cookie delicious?"
puts cookie.delicious?
puts "cookie healthy?"
puts cookie.healthy?

cake=Dessert.new("cake",250)
puts "cake delicious?"
puts cake.delicious?
puts "cake healthy?"
puts cake.healthy?

#7(b)

class JellyBean < Dessert
  attr_accessor :flavor

  def initialize(name, calories, flavor)
    @name=name 
    @calories=calories
    @flavor=flavor
  end
  
  def delicious?
    if @flavor== "black licorice"
      false
    else
      true
    end
  end
end

puts " "
puts "7(b)"
black_licorice=JellyBean.new("a",150,"black licorice")
puts "black licorice delicious?"
puts black_licorice.delicious?
puts "black licorice healthy?"
puts black_licorice.healthy?

watermellon=JellyBean.new("a",250,"watermellon")
puts "watermellon delicious?"
puts watermellon.delicious?
puts "watermellon healthy?"
puts watermellon.healthy?
