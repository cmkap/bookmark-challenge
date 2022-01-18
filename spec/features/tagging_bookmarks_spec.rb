feature 'Adding and viewing tags' do
    feature 'a user can add and ten view a tag' do
        scenario 'a comment is added to a bookmark' do
            bookmark = Bookmark.create(url: 'http://www.google.com', title: 'Makers Academy')

            visit '/bookmarks'
            first('.bookmark').click_button 'Add Tag'

            expect(current_path).to eq "/bookmarks/#{bookmark.id}/tags/new"

            fill_in 'tag', with: 'test tag'
            click_button 'Submit'

            expect(current_path).to eq '/bookmarks'
            expect(first('.bookmark')).to have_content 'test tag'
        end
    end

    feature 'a user can filter bookmarks by tag' do
        scenario 'adding the same tag to multiple bookmarks then filtering by tag' do
            Bookmark.create(url: 'http://www.google.com', title: 'Google')
            Bookmark.create(url: 'http://www.cnn.com', title: 'CNN')
            Bookmark.create(url: 'http://www.espn.com', title: 'ESPN')

            visit('/bookmarks')

            within page.find('.bookmark:nth-of-type(1)') do
                click_button 'Add Tag'
            end
            fill_in 'tag', with: 'testing'
            click_button 'Submit'

            within page.find('.bookmark:nth-of-type(2)') do
                click_button 'Add Tag'
            end
            fill_in 'tag', with: 'testing'
            click_button 'Submit'

            first('.bookmark').click_link 'testing'

            expect(page).to have_link 'Google', href: 'http://www.google.com'
            expect(page).to have_link 'CNN', href: 'http://www.cnn.com'
            expect(page).not_to have_link 'ESPN', href: 'http://www.espn.com'
        end
    end
end