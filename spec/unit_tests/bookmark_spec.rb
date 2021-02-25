require 'bookmark'

describe Bookmark do
  describe '#.all' do
    it 'views all saved bookmarks' do

      Bookmark.create(url: 'http://www.makersacademy.com', title: 'Learning')
      Bookmark.create(url: 'http://www.google.com', title: 'Searching')
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Software')

      bookmarks = Bookmark.all
      expect(bookmarks.first.title).to eq("Learning")
      expect(bookmarks.first.url).to eq("http://www.makersacademy.com")
    end
  end

  describe '#.create' do
    it 'should add a bookmark to the database' do
      Bookmark.create(url: 'www.yahoo.com', title: 'Homepage')
      expect(Bookmark.all.last.url).to eq('www.yahoo.com')
    end
  end

  describe '#.delete' do 
    it 'deletes bookmark' do
      Bookmark.create(url: 'www.yahoo.com', title: 'Homepage')
      bookmark = Bookmark.all.last.id
      Bookmark.delete(id: bookmark) 
      expect(Bookmark.all).to be_empty
    end
  end

end
