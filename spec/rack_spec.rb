require "./../lib/environment"
require "./../lib/rack_app"

fdescribe App do
  include Rack::Test::Methods

  let(:app) {App}

  it "creates a book" do
    post :books, book: { name: "My first book" }
  end
end
