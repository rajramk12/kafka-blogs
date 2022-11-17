namespace :sample do
  desc "Rakin the blog"
  task blog: :environment do
    Blog.create!(title: "Raked it", content: "Raking it #{Time.now()}")
  end

  desc "Rakin the article"
  task article: :environment do 
    Article.create!(title: "Raked it", body: "Raking it #{Time.now()}")
  end

end
