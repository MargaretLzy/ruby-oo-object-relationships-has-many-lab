class Author
  attr_accessor :name
  @@postcount=0
def initialize(name)
  @name = name
  @posts=[]
end
#select all song by artist object
def posts
 Post.all.select do |post|
   post.author ==self
 end
end

 def add_post(post)
    @posts << post
    post.author = self
    @@postcount += 1
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
    post.author = self
    @@postcount += 1
    self.add_post(post)
  end

  def self.post_count
    @@postcount
  end
end
