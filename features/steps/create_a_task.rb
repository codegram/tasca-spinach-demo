class CreateATask < Spinach::FeatureSteps
  include Spinach::Tasks

  Given 'I am on the task list' do
    visit_tasks_path
  end

  When 'I add a new task' do
    fill_in 'Title', with: 'Learn BDD'
    click_button 'Add task'
  end

  Then 'I should see it on the pending list' do
    has_pending_task?('Learn BDD').should eq true
  end
end
