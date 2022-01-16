# As  user
# So that I can store websites for later use
# I would like to add a bookmarks to a Bookmark Manager

feature 'Add a new boomark' do
    scenario 'A user can add a bookmark to Bookmark Manager' do
        visit('/bookmarks/new')
        fill_in('url', with: 'http://www.example.org')
        fill_in('title', with: 'Test Bookmark')
        click_button('Submit')
        
        expect(page).to have_link('Test Bookmark', href: 'http://www.example.org')
    end

# User flow for submitting an invalid URL:

# 1. Visit the new bookmark page.
# 2. Submit a new bookmark with a string like 'not a bookmark'.
# 3. See an error message, and don't see 'not a bookmark' in the list of bookmarks.

    scenario 'The bookmark must be a valid URL' do
        visit('/bookmarks/new')
        fill_in('url', with: 'not a real bookmark')
        click_button('Submit')

        expect(page).not_to have_content "not a real bookmark"
        expect(page).to have_content "Please submit a valid URL"
    end
end