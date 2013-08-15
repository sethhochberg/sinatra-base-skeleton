get '/logout' do
  session.clear
  redirect '/'
end

get '/login' do
  erb :'users/login'
end

post '/login' do
  @user = User.authenticate(params[:email], params[:password])
  if @user
    session[:user_id] = @user.id
    redirect '/'
  else
    erb :'users/login'
  end
end
