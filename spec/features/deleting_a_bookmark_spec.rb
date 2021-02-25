feature "deleting a bookmark" do
  scenario "user can remove a bookmark" do 
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Learning')
    visit('/bookmarks')
    click_button  'delete'
    expect(page).not_to have_link('Learning', href:'http://www.makersacademy.com')
  end
end


