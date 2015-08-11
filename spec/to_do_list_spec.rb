require('rspec')
require('to_do_list')

describe(Task) do
  describe('#description') do
    it('lets you give the task a description') do
      test_task = Task.new('shower the monkey')
      expect(test_task.description()).to(eq('shower the monkey'))
    end
  end
end
