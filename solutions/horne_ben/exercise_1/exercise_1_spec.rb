require './exercise_1_solution'

describe String do
  it "has unique characters" do
    a = "howdy"
    b = "hello"
    c = "abcd efgh"
    expect(a.unique?).to be_true
    expect(b.unique?).to be_false
    expect(c.unique?).to be_true
  end
end
