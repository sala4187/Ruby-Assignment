#(11) Blocks

class CartesianProduct
  include Enumerable
  def initialize(a, b)
	@values = []
	@values = a.product(b) #unless b.empty?
  end

  def each
	@values.each{ |v| p v}
  end

end

#Example test cases:

c = CartesianProduct.new([:a,:b,:c], [4,5])
c.each { |elt| puts elt.inspect }

# [:a, 4]

# [:a, 5]

# [:b, 4]

# [:b, 5]

c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect }
