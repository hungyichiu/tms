require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  let!(:task1) { create(:task, title: "T1", end_time: Time.now) }
  let(:task2) { create(:task, title: "T2", end_time: Time.now.yesterday) }

  scenario "任務列表以建立時間排序" do
    task2
    visit root_path
    
    within 'tbody tr:nth-child(1) td:nth-child(1)' do
        expect(page).to have_content("T1")
    end
    within 'tbody tr:nth-child(2) td:nth-child(1)' do
      expect(page).to have_content("T2")
    end

  end

  scenario "任務列表以結束時間排序" do
    task2
    visit root_path

    click_link '結束時間'

    within 'tbody tr:nth-child(1) td:nth-child(1)' do
        expect(page).to have_content("T2")
    end
    within 'tbody tr:nth-child(2) td:nth-child(1)' do
      expect(page).to have_content("T1")
    end
  end

  scenario "使用者可以新增任務" do
    visit root_path
    click_link '新增任務'
    visit new_task_path
    fill_in '任務名稱', with: 'hello world'
    fill_in '任務內容', with: 'Lorum ...'
    fill_in '結束時間', with: Time.now
    click_button '新增Task'
    expect(page).to have_text('新增任務成功')
  end

  scenario "使用者可以編輯任務" do
    visit root_path
    click_link '編輯'
    fill_in '任務名稱', with: 'Change'
    click_button '更新Task'
    expect(page).to have_text('Change')
  end

  scenario "使用者可以刪除任務" do
    visit root_path
    click_link '刪除'
    expect(page).to_not have_text('T1')
  end
end
