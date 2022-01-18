# As a user
# So I can change a bookmark in Bookmark Manager
# I want to update a bookmark

# 1. Visit the 'update bookmark' form for a particular bookmark.
# 2. Fill in the form with new data – say, a new title – and submit it.
# 3. See the homepage, with the updated bookmark title (and the old one is gone).

feature 'Updating a bookmark' do
    scenario 'A user can update a bookmark' do
        #Arrange - Setup
        bookmark = Bookmark.create(url: 'http://www.google.com', title: 'Google')
        visit('/bookmarks')
        expect(page).to have_link('Google', href: 'http://www.google.com')

        #Act - Exercise
        first('.bookmark').click_button 'Edit'
        expect(current_path).to eq "/bookmarks/#{bookmark.id}/edit"

        # #Assert - Verify
        fill_in('url', with: "http://www.snakersacademy.com")
        fill_in('title', with: "Snakers Academy")
        click_button('Submit')

        #Destroy???

        expect(current_path).to eq '/bookmarks'
        expect(page).not_to have_link('Google', href: 'http://www.google.com')
        expect(page).to have_link('Snakers Academy', href: 'http://www.snakersacademy.com')
    end
end 


