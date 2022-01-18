feature 'Adding and viewing comments' do
    feature 'a user can add and then view a comment' do
        scenario 'a comment is added to a bookmark' do
            # Arrange
            bookmark = Bookmark.create(url: 'http://www.google.com', title: 'Google')

            # Act
            visit '/bookmarks'
            first('.bookmark').click_button 'Add Comment'

            # Assert
            expect(current_path).to eq "/bookmarks/#{bookmark.id}/comments/new"

            # Act
            fill_in 'comment', with: "This is a test comment on this bookmark"
            click_button 'Submit'
            
            # Assert
            expect(current_path).to eq '/bookmarks'
            expect(first('.bookmark')).to have_content 'This is a test comment on this bookmark' 
        end
    end
end