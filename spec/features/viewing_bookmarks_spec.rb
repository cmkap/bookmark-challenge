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
      visit('/bookmarks')

      expect(page).to have_content "http://www.google.com"
      expect(page).to have_content "http://www.makersacademy.com"
      expect(page).to have_content "http://www.destroyallsoftware.com"
    end
  end