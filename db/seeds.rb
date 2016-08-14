Blog.delete_all
Blog.connection.execute(%|SELECT setval ('blogs_id_seq', 1, false)|)

1.upto(3).each do |i|
  Blog.create(
    title: "title_#{i}",
    body: "body_#{i}"
  )
end
