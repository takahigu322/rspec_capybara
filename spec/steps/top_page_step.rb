step "トップページへ" do
  Capybara.app_host = "http://localhost:3000/"
end

step 'トップページを表示' do
  visit '/'
end
