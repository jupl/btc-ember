wrench = require 'wrench'
Exec = require '../lib/exec'

module.exports = class Build extends Exec
  command: './node_modules/.bin/brunch'

  onceDev: => @_build ['build', '-c', 'configs/dev'], prod: no
  onceProd: => @_build ['build', '-c', 'configs/prod'], prod: yes

  watchDev: => @_build ['watch', '-c', 'configs/dev'], prod: no
  watchProd: => @_build ['watch', '-c', 'configs/prod'], prod: yes

  serverDev: => @_build ['watch', '-c', 'configs/dev', '-s'], prod: no
  serverProd: => @_build ['watch', '-c', 'configs/prod', '-s'], prod: yes

  _build: (args, {prod} = {prod: no}) ->
    # Before running the brunch command let's clear the public folder
    {config} = require "../../#{args[2]}"
    wrench.rmdirSyncRecursive config.paths.public, ->

    args.push '-o' if prod
    @exec args