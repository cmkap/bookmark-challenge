# As a time-pressed user
# So that I can quickly go to web sites I regularly visit
# I would like to see a list of bookmarks

feature 'Viewing bookmarks' do
    scenario 'visiting the index page' do
      visit('/')
      expect(page).to have_content "Bookmark Manager"
    end
  end

  feature 'Viewing bookmarks' do
    scenario 'A user can see bookmarks' do
      
      # Add the test data
      Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
      Bookmark.create(url: 'http://www.google.com', title: 'Google')
      
      visit('/bookmarks')

      expect(page).to have_link('Google', href: "http://www.google.com")
      expect(page).to have_link('Makers Academy', href: "http://www.makersacademy.com")
      expect(page).to have_link('Destroy All Software', href: "http://www.destroyallsoftware.com")
    end
  end