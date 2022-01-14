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
end