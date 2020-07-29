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
  end