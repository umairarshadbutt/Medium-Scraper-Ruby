require_relative '../lib/articles.rb'
require_relative '../lib/display.rb'
  describe Articles do
    html = 'https://medium.com/topic/programming'
    doc = Nokogiri::HTML(URI.open(html))

    let(:raw_info) { doc.css('section .fg')[0] }
    let(:post) { Articles.new(raw_info) }
    it 'Test: post_title is a String' do
      expect(post.post_title).to be_a(String)
    end
    it 'Test: description is a String' do
        expect(post.description).to be_a(String)
      end
  
      it 'Test: time_read is a String' do
        expect(post.time_read).to be_a(String)
      end
  
      it 'Test: post_title is Capitalize' do
        expect(post.post_title).to eq(post.post_title.capitalize!)
      end
  end