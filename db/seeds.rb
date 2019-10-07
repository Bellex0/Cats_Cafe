# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Cat.destroy_all
Server.destroy_all

cat1 = Cat.create(name:"Simba", breed: "Bombay", age: 19)
cat2 = Cat.create(name:"Meeko", breed: "Tabby", age: 2)
cat3 = Cat.create(name:"Cheshire", breed: "Russian Blue", age: 7)
cat4 = Cat.create(name:"Figaro", breed: "Siamese", age: 11)
cat5 = Cat.create(name:"Marie", breed: "Persian", age: 3)

s1 = Server.create(name: "Bruce Banner", cat_id: cat1.id)
s2 = Server.create(name: "Peter Parker", cat_id: cat2.id)
s3 = Server.create(name: "Tony Stark", cat_id: cat3.id)
s4 = Server.create(name: "Steve Rogers", cat_id: cat4.id)
s5 = Server.create(name: "Natasha Romanoff", cat_id: cat5.id)
s6 = Server.create(name: "T'challa", cat_id: cat2.id)
s7 = Server.create(name: "Wanda Maximoff", cat_id: cat1.id)
