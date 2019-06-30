# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

todo = Todo.create(title:"work", created_by:"Ryan")
Item.create(name:"start", done:false, todo:todo)
Item.create(name:"keep going", done:false, todo:todo)
