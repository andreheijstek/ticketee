require "rails_helper"

RSpec.feature "Users can create new projects" do

  before do
    login_as(FactoryGirl.create(:user, :admin))
    visit "/"
    click_link "New Project"
  end

  scenario "with valid attributes" do
    project_name = "Sublime Text 3"
    fill_in "Name", with: project_name
    fill_in "Description", with: "A text editor for everyone"

    click_button "Create Project"

    expect(page).to have_content "Project has been created."
    project = Project.find_by(name: project_name)
    expect(page.current_url).to eq project_url(project)
    expect(page).to have_title "Sublime Text 3 - Projects - Ticketee"
  end

  scenario "when providing invalid attributes" do
    click_button "Create Project"

    expect(page).to have_content "Project has not been created."
    expect(page).to have_content "Name can't be blank"
  end
end
