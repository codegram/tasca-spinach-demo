module Spinach
  module Tasks
    def visit_tasks_path
      visit tasks_path
    end

    def has_pending_task?(content)
      within '#pending_tasks' do
        return page.has_content?('Learn BDD')
      end
    end

    def create_task
      Task.create(title: 'Learn BDD')
    end
  end
end
