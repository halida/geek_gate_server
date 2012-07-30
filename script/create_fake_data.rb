author = Author.find_or_create_by_name "halida"
author.update_attributes(avatar: "https://2.gravatar.com/avatar/767fc9c115a1b989744c755db47feb60?s=40&d=wavatar")

120.times.each do
  a = rand 100 + 20
  b = rand 100 + 20
  c = a + b

  # create options
  options = [c]
  while options.length < 4
    r = c + rand(10) - 5
    next if r == c
    options << r
  end
  options.shuffle!

  answer = options.index c

  Question.create(
                  title: "count the value",
                  description: "caculate: #{a} + #{b} = ?",
                  options: options,
                  answer: answer,
                  author_id: author.id,
                  )
end
