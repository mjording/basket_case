RSpec.describe BasketCase do
  it "has a version number" do
    expect(BasketCase::VERSION).not_to be nil
  end

  it "titlecase the uppercase" do
    expect("BASKET".altcase).to eq("Basket")
  end

  it "titlecase the lowercase" do
    expect("basket".altcase).to eq("Basket")
  end

  it "not titlecase mixedcase" do
    expect("bAsKeT".altcase).to eq("bAsKeT")
  end

  it "should titlecase phrases" do
    expect("matthew jording".altcase).to eq("Matthew Jording")
  end

  it "should titlecase phrases" do
    expect("matthew johnson-colby".altcase).to eq("Matthew Johnson-Colby")
  end

end
