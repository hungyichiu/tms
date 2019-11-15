require 'rails_helper'

RSpec.describe Task, type: :model do
  it 'is valid with title, end_time' do
    task = Task.new(
      title: "Task",
      end_time: Time.new(2019,11,22,0,0,0)
      )
    expect(task).to be_valid
    
  end
  it 'is invalid without title' do
    task = Task.create( title: nil)
    expect(task.errors[:title]).to include("不能為空白")
    
  end

  it 'is invalid without end_time' do
    task = Task.create( end_time: nil)
    expect(task.errors[:end_time]).to include("不能為空白")
    
  end
end
