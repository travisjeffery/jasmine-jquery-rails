#= require jquery
#= require jasmine-jquery

describe 'using a haml fixture', ->

  beforeEach ->
    loadFixtures('test')

  it 'can access DOM element', ->
    expect($('h2')).toHaveText('Test Fixture')

describe 'using a json fixture', ->

  beforeEach ->
    @data = getJSONFixture('bar')

  it 'can access json', ->
    expect(@data[0].some).toEqual('json')
