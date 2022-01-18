# As a user
# So I can remove my bookmark from Bookmark Manager
# I want to delete a bookmark

# 1. Visit the bookmarks page.
# 2. Click a 'delete' button next to a bookmark.
# 3. See the bookmarks page, without that bookmark

feature 'Deleting a bookmark' do
    scenario 'A user can delete a bookmark' do
        Bookmark.create(url: 'http://www.google.com', title: 'Google')
        visit('/bookmarks')
        expect(page).to have_link('Google', href: 'http://www.google.com')

        first('.bookmark').click_button 'Delete'

        expect(current_path).to eq '/bookmarks'
        expect(page).not_to have_link('Google', href: 'http://www.google.com')
    end
end
