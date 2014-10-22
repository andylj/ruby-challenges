class Blog
	
	def initialize
		puts "What's the name of your blog?"
		@blog_title = gets.chomp
		
		@all_blog_posts = []
		@total_blog_posts = 0 
	end
	
	def publish
		@all_blog_posts.each do |blog_post|
			puts blog_post.get_author
			puts blog_post.title
			puts blog_post.content
			puts blog_post.created
		end
	end
	
	def add_post_to_blog(blog_post)
		@all_blog_posts << blog_post
		@total_blog_posts +=1
	end
end

class BlogPost

	attr_accessor :title, :created, :content
	
	def initialize
		puts "What's the name of your blog post?"
		@title = gets.chomp
		
		puts "What's the content?"
		@content = gets.chomp
		
		@created = Time.now
	end
	
	def set_author=(author_name)
		@name = author_name
	end
	
	def get_author
		return @name
	end
	
end

my_blog = Blog.new

my_blog_post = BlogPost.new
my_blog_post.set_author = "Andrew"

new_blog_post = BlogPost.new
new_blog_post.set_author = "Me again"

my_blog.add_post_to_blog(my_blog_post)
my_blog.add_post_to_blog(new_blog_post)

my_blog.publish

puts my_blog.inspect



