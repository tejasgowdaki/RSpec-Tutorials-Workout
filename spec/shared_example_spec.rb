require "./../lib/apis"

shared_examples_for "API" do |api|
  it "lists products" do
    expect(api.list_products).to match [
      a_hash_including(
          name: an_instance_of(String),
          category: an_instance_of(String),
          price: an_instance_of(Float)
        )
    ]
  end
end

describe WebAPI do

  it "has a url" do
    api = WebAPI.new("http://localhost:3000")
    expect(api).to respond_to :url
  end

  it_behaves_like "API", WebAPI.new("http://localhost:3000")

end # WebAPI end

describe FileAPI do

  it "has a file location" do
    api = FileAPI.new("/etc/app/api.rb")
    expect(api).to respond_to :location
  end

  it_behaves_like "API", FileAPI.new("/etc/app/api.rb")

end
