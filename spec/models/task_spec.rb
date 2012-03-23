require 'spec_helper'

describe Task do
  let(:task) { Task.new(title: 'Learn BDD') }

  it 'is valid' do
    task.valid?.should eq true
  end

  describe 'validations' do
    it 'is not valid without a title' do
      task.title = nil

      task.valid?.should_not eq true
    end
  end

  describe 'close' do
    it 'sets the task as closed' do
      task.close
      task.reload

      task.closed?.should eq true
    end
  end

  context 'scopes' do
    describe 'pending' do
      it 'includes pending tasks' do
        pending_task = task
        pending_task.closed = false
        pending_task.save

        Task.pending.should include pending_task
      end

      it 'does not include closed tasks' do
        closed_task = task
        closed_task.close

        Task.pending.should_not include closed_task
      end
    end

    describe 'closed' do
      it 'includes closed tasks' do
        closed_task = task
        closed_task.close

        Task.closed.should include closed_task
      end

      it 'does not include pending tasks' do
        pending_task = task
        pending_task.closed = false
        pending_task.save

        Task.closed.should_not include pending_task
      end
    end
  end
end
