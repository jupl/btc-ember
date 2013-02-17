chai = require 'chai'
sinon = require 'sinon'
sinonChai = require 'sinon-chai'

chai.use sinonChai

module.exports =
  should: chai.should()
  sinon: sinon