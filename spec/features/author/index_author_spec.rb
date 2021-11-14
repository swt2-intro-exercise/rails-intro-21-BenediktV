require 'rails_helper'

describe "Index author page", type: :feature do
    it "should exist at 'author_path' and render withour error" do
        visit authors_path
    end
    it "should contain a table with the headings Name and Homepage" do
        visit authors_path
        expect(page).to have_table
    end
    it "should contain a link to add new authors" do
        visit authors_path
        expect(page).to have_link 'New', href: new_author_path
    end
end