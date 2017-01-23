describe "Composable Matchers" do
  it "works with nested data" do
    class Product

      def initialize(id, name, category)
        @id = id
        @name = name
        @category = category
      end

      def serial_data
        [
          "X-",
          @name[0],
          @category[0],
          @id
        ]
      end

    end

    product = Product.new(2345, "Tomato", "Fruit")

    expect(product.serial_data).to match [
      a_string_starting_with("X-"),
      a_string_starting_with("T"),
      a_string_starting_with("F"),
      a_value < 5000
    ] # X-TF2345

    expect(product.serial_data).to contain_exactly(
      a_string_starting_with("X-"),
      a_string_starting_with("T"),
      a_string_starting_with("F"),
      a_value < 5000
    )

    # Matchers
    #----------
    # change
    # contain_exactly
    # include(arguments)
    # yeild_with_args(arguments)
    #
    # Matchers arguments
    #--------------------
    # a_string/_starting_with/_ending_with
    # a_hash/_including   # for Json API
    # a_value/_within(0.5).of(3.145) 3.14 3.15
    # an_instance_of(Class_name)

  end

  it "compound matchers" do
    string = "Jose"

    expect(string).to start_with("J").and end_with("e") # and, or
    expect(50).to eq(20).or eq(50)
  end


end
