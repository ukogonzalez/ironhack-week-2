require_relative '../lib/blog.rb'
require_relative '../lib/post.rb'

blog = Blog.new()
blog.add_post Post.new =()

get ('/') do
  blog.posts
end
