User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  title = Faker::Book.title
  author = Faker::Name.name
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
  Book.create!(title: title,
               author: author)
               
end