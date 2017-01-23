require "./../lib/environment"
require "./../lib/book"

fdescribe Book do
  it "fails to create an empty book" do
    book = build(:books)
    expect(book.save).to be_falsy
  end
end
