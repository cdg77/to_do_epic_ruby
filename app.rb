require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/to_do_list.rb')

get('/') do
  @task = Task.all()
  erb(:index)
end

post('/list') do
  description = params.fetch('description')
  task = Task.new(description)
  task.save()
  erb(:success)
end
