# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(
        name: "운영자",
        age: 100,
        email: "admin@google.com",
        password: "123456",
        admin: 1
    )

user = User.create( email: 'admin@google.com', password: '123456' ,name: "운영자")
user = User.find(1)
user.add_role :admin

user = User.create( email: 'dongwon@likelion.org', password: '123456' )
user = User.find(2)

