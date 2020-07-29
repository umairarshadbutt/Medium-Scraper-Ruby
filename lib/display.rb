

module Display
  def self.print_all(programming_post)
    programming_post.each do |post|
      post_title = 'Post Title: '.colorize(:green)
      description = 'Post Description: '.colorize(:magenta)
      time_read = 'Date & Time to read: '.colorize(:red)
      line = '==========================================='
      line_space = "\n\n"
      puts post_title + post.post_title.colorize(:green)
      puts description + post.description.colorize(:magenta)
      puts time_read + post.time_read.colorize(:red)
      puts line_space
      puts line
      puts line_space
    end
  end
end
