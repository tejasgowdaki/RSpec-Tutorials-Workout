require "./../lib/blog"

describe "Callbacks" do

  let(:blog) { Blog.new }

  before(:each) do  # reinitialized with each test
    blog.populate!
  end

  before(:context) {
    puts "Welcome"
  }

  after(:example) { |example|
    puts "I just ran a test"
    puts example.inspect
  }

  it "has one post" do
    expect(blog.posts_count).to eq 1
  end

  it "has one post" do
    expect(blog.posts_count).to eq 1
  end

end
