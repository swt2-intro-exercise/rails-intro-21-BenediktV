require 'rails_helper'

describe "Edit author page", type: :feature do
    before do
        @author = Author.new(first_name: "A",last_name: "B",homepage: "google.com")
        @author.save
    end

    it "should exist at 'edit_author_path' and render withour error" do
        
        visit edit_author_path(@author)
    end
    it "should have text inputs for an author's first name, last name, and homepage" do
        visit edit_author_path(@author)
        
        expect(page).to have_field('author[first_name]')
        expect(page).to have_field('author[last_name]')
        expect(page).to have_field('author[homepage]')
      end
end