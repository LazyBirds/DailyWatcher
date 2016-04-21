low = require('lowdb')
storage = require('lowdb/file-sync')
series = require('./series.coffee')

DB = low('db.json', { storage })

saveSeries = (series) ->
  DB(series.name).push(series)
