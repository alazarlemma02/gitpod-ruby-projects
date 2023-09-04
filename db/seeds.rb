# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Article.create(
  [
    {title: "article 1 title", content: "article 1 content", slug: "article 1 slug"},
    {title: "article 2 title", content: "article 2 content", slug: "article 2 slug"},
    {title: "article 3 title", content: "article 3 content", slug: "article 3 slug"},
    {title: "article 4 title", content: "article 4 content", slug: "article 4 slug"},

  ]
)


