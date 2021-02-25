feature 'adding bookmark to list' do
  scenario 'user can add bookmark' do
    visit '/bookmarks'
    click_button('Add')
    fill_in('url', with: 'www.ebay.com')
    fill_in('title', with: 'Shopping')
    click_button('Submit')
    expect(page).to have_link('Shopping', href:'www.ebay.com')
  end
end