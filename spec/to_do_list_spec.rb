require('rspec')
require('to_do_list')

describe(Task) do
  describe('#description') do
    it('lets you give the task a description') do
      test_task = Task.new('shower the monkey')
      expect(test_task.description()).to(eq('shower the monkey'))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Task.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('uses save to add a task to the array') do
      test_task= Task.new('wash the lion')
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end
end
