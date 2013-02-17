Exec = require '../lib/exec'

module.exports = class Add extends Exec
  command: './node_modules/.bin/brunch'
  args: ['generate']

  appcache: => @_add 'appcache'
  bootstrap: => @_add 'bootstrap'

  _add: (type) ->
    args = @args[..]
    args.push type
    args.push 'ok'
    @exec args