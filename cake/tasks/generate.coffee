Exec = require '../lib/exec'

commander = require 'commander'

module.exports = class Generate extends Exec
  command: './node_modules/.bin/brunch'
  args: ['generate']

  model:            ({name}) => @_generate 'model', name
  route:            ({name}) => @_generate 'route', name
  controller:       ({name}) => @_generate 'controller', name
  arrayController:  ({name}) => @_generate 'array-controller', name
  view:             ({name}) => @_generate 'view', name
  template:         ({name}) => @_generate 'template', name
  partialTemplate:  ({name}) => @_generate 'partial-template', name
  test:             ({name}) => @_generate 'test', name

  _generate: (type, name) ->
    if name?
      name = @_toDash name
      if name.length isnt 0
        @_exec type, name
      else
        console.log 'Invalid name'
    else
      @_prompt type, (name) =>
        name = @_toDash name
        if name.length isnt 0
          @_exec type, name, process.exit
        else
          console.log 'Invalid name'
          @_generate type

  _exec: (type, name, callback = ->) ->
    args = @args[..]
    args.push type
    args.push name
    @exec args, callback

  _prompt: (type, callback) ->
    prompt = switch type
      when 'array-controller'
        "\nEnter name for controller: "
      when 'partial-template'
        "\nEnter name for partial template: "
      else
        "\nEnter name for #{type}: "
    commander.prompt prompt, callback

  _toDash: (string) ->
    " #{string} "
      .replace(/-/g, '_')
      .replace(/[^(\w|\d|\s)]/g, '')
      .replace(/_/g, ' ')
      .replace(/[A-Z]{1,}[^A-Z]/g, (string) ->
        start = string[...string.length - 2]
        end = string[string.length - 2..]
        " #{start.toLowerCase()} #{end.toLowerCase()}"
      )
      .trim()
      .replace(/\s{1,}/g, '-')