require "rails_helper"

RSpec.feature "Listing Articles" do
  # crate 2 articles to display
  # list the 2 articles
  # expect both article titles and bodies to be present

  before do
    @article1 = Article.create(title: "The first article", body: "Lorem ipsum dolor sit amet")

    @article2 = Article.create(title: "The second article", body: "Body of 2nd article")
  end

  scenario "A user lists all articles" do
    visit "/"

    expect(page).to have_content(@article1.title)
    expect(page).to have_content(@article1.body)
    expect(page).to have_link(@article1.title)

    expect(page).to have_content(@article2.title)
    expect(page).to have_content(@article2.body)
    expect(page).to have_link(@article2.title)
  end
end
