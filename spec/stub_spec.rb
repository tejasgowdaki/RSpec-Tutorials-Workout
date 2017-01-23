class Product
  attr_reader :price
end

class PriceCalculator

  def add(product)
    products << product
  end

  def products
    @products ||= []
  end

  def final_price
    @products.map(&:price).inject(&:+)
  end

end

describe "Stubs" do

  let(:calculator)  { PriceCalculator.new }

  it "provides stubs to stimulate state" do
    #calculator = PriceCalculator.new

    product_stub = instance_double("Product")
    allow(product_stub).to receive(:price).and_return(1.0, 100.25)  #{1.0}

    2.times { calculator.add product_stub }
    #calculator.add instance_double("Product", price: 100.25)

    expect(calculator.final_price).to eq 101.25
  end

  it "provides mocks to assert on message passing" do
=begin
    product_mock = double(:product)
    #expect(product_mock).to receive(:price).exactly(4).times.and_return(5)   #with(any_args) #with(no_args), once, twice,
    expect(product_mock).to receive(:price).at_least(3).times.and_return(5)

    calculator.add product_mock
    calculator.add product_mock
    calculator.add product_mock
    calculator.add product_mock

    calculator.final_price
=end

    allow_any_instance_of(Product).to receive(:price) { 5 } # expect_any_instance_of

    product = Product.new
    puts product.price
  end

end


