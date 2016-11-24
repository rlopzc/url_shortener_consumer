class User < BaseApi
  schema do
    string 'name', 'password', 'password_confirmation'
  end
end
