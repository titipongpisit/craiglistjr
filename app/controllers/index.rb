get '/' do
  @categories = Category.order('id ASC') 
  erb :index
end

get '/category/:category_id' do 
  @category = Category.find(params[:category_id])
  erb :each_category 
end 

get '/category/:category_id/post/:post_id' do
  @post = Post.find(params[:post_id])
  @category = Category.find(params[:category_id])
  erb :each_post
end

post '/new_post/:category_id' do 
  @new_post = Post.new(name: params[:name], description: params[:description], price: params[:price], email: params[:email], category_id: params[:category_id])
  if @new_post.save
  redirect to('/')
  else
  redirect to('/')
  end  
end 
