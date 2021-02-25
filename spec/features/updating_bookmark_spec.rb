feature 'update a bookmark' do
  scenario 'user can update a bookmark' do
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Learning')
    visit('/bookmarks')
    click_button('edit')
    fill_in('url', with: 'http://www.google.com')
    fill_in('title', with: 'search')
    click_button('submit')
    expect(page).not_to have_link('Learning', href:'http://www.makersacademy.com')
    expect(page).to have_link('search', href:'http://www.google.com')
  end
end

