describe "Matchers" do

  it "asserts on equality" do
    number = 5
    expect(number).to eq 5
  end

  it "asserts on mathematical operators" do
    number = 5
    expect(number).to be > 2
  end

  it "asserts on matching a regular expression"do
    email = "tejas@gmail.com"
    regular_expresssion = /^\w+@\w+\.[a-z]{2,4}$/
    expect(email).to match regular_expresssion
  end

  it "asserts on types and classes" do
    object = 2.0
    object1 = Numeric.new
    expect(object).to be_a Float
    expect(object1).to be_a Numeric
  end

  it "asserts on truthiness" do
    bool = true
    falsy_bool = nil
    truthy_bool = Class.new

    expect(bool).to be true
    expect(falsy_bool).to be_falsey
    expect(truthy_bool).to be_truthy
  end

  xit "expects errors" do
    expect {
      raise NameError
    }.to raise_error
  end

  fit "expects throws" do
    expect {
      throw :hoory
    }.to throw_symbol
  end

  it "asserts on predicates" do
    class A
      def good?
        A
      end
    end

    expect(A.new).to be_good
  end

  it "asserts on colections" do
    list = [
      :one,
      :two,
      :three,
      :four
    ]

    expect(list).to include :four
    expect(list).to start_with [:one, :two]
    expect(list).to end_with [:three, :four]
  end

  it "negates asserts" do
    expect(3).not_to be 5
  end

end
