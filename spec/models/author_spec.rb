require 'rails_helper'

describe "Author Model", type: :model do
    it "should contain a first name, a last name and a homepage" do
        author = Author.new(first_name: "A",last_name: "B",homepage: "google.com")
        expect(author.first_name).to eq("A")
        expect(author.last_name).to eq("B")
        expect(author.homepage).to eq("google.com")
    end
    it "should have a method name which returns the full name" do
        author = Author.new(first_name: "X",last_name: "Y",homepage: "https://bad-harzburg-stiftung.de/das-herbert-ahrens-bilderarchiv/")
        expect(author.name).to eq("X Y")
    end
end
