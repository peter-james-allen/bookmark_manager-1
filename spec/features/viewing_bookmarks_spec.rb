feature 'viewing bookmarks' do
  scenario 'viewing all saved bookmarks' do

    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Learning')
    Bookmark.create(url: 'http://www.google.com', title: 'Searching')
    Bookmark.create(url: 'http://www.destroyallsoftware.com', title: "Software")

    visit('/bookmarks')

    expect(page).to have_content "Learning"
    expect(page).to have_content "Searching"
    expect(page).to have_content "Software"
  end
end
