describe 'An array', ->
  array = null

  describe 'that is empty', ->
    before ->
      array = []

    it 'should exist', ->
      expect(array).to.exist

    it 'should not be null', ->
      expect(array).to.not.be.null

    it 'should have a length of 0', ->
      expect(array).to.have.length 0