require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  scenario "使用者可以新增任務" do
    visit '/tasks/new'

    fill_in 'Title', with: 'hello world'
    fill_in 'Content', with: 'Lorum ...'

    click_button '新增'
    expect(page).to have_text('新增任務成功')
  end

  # scenario "使用者可以編輯任務" do
  #   visit '/tasks/new' # 編輯任務 

  #   fill_in 'Title', with: 'hello world'
  #   fill_in 'Content', with: 'Lorum ...'

  #   click_button '新增'
  #   expect(page).to have_text('新增任務成功')
  # end

  # scenario "使用者可以刪除任務" do
  #   visit '/tasks/new' #刪除任務

  #   fill_in 'Title', with: 'hello world'
  #   fill_in 'Content', with: 'Lorum ...'

  #   click_button '新增'
  #   expect(page).to have_text('新增任務成功')
  # end
end
