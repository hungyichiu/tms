require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  scenario "使用者可以新增任務" do
    visit root_path
    click_link '新增任務'
    visit new_task_path

    fill_in '任務名稱', with: 'hello world'
    fill_in '任務內容', with: 'Lorum ...'

    click_button '新增Task'
    expect(page).to have_text('新增任務成功')
  end

  scenario "使用者可以編輯任務" do
    @task = create(:task, title: "TEST")
    visit root_path
    click_link '編輯'
    visit edit_task_path(@task.id)

    fill_in '任務名稱', with: 'Change'

    click_button '更新Task'
    expect(page).to have_text('Change')
  end

  scenario "使用者可以刪除任務" do
    @task = create(:task, title: "TEST")
    visit root_path
    click_link '刪除'
    expect(page).to_not have_text('TEST')
  end
end
