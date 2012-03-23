class CloseATask < Spinach::FeatureSteps
  include Spinach::Tasks

  Given 'I have created a task on the past' do
    @task = create_task
  end

  And 'I am on the tasks list' do
    visit_tasks_path
  end

  When 'I close it' do
    click_link 'Learn BDD'
  end

  Then 'it should no longer be on the pending list' do
    has_pending_task?('Learn BDD').should eq false
  end

  And 'I should see it on the closed list' do
    within '#closed_tasks' do
      page.has_content?('Learn BDD').should eq true
    end
  end

  Given 'I have closed a task on the past' do
    @task = create_task
    @task.close
  end

  Then 'I should see the time when it was closed' do
    within '#closed_tasks li:first-child .date' do
      page.has_content?(@task.updated_at.year.to_s).should eq true
      page.has_content?(@task.updated_at.day.to_s).should eq true
    end
  end
end
