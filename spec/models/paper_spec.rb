require 'rails_helper'

describe "New author page", type: :feature do
  it "should exist at 'new_paper_path' and render withour error" do
    visit new_paper_path
  end
  it "should have a empty list of authors" do
    paper = Paper.new(title: "a", venue: "b", year: 3)
    expect(paper).to have_attributes(:authors => [])
  end
end
