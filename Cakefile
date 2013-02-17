tasks = require './cake/tasks'

##############################################################################
# Task options
##############################################################################

option '-n',
  '--name [NAME]',
  "provide the name for a gen: task to bypass prompt"



##############################################################################
# Generate tasks
##############################################################################

generateTasks = (taskObject) ->
  return unless typeof taskObject is 'object'
  if taskObject.command? and taskObject.description? and taskObject.task?
    task taskObject.command, taskObject.description, taskObject.task
  else
    generateTasks value for key, value of taskObject

generateTasks tasks