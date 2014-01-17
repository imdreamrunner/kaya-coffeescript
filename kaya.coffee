class Kaya.Stage



class Kaya.App
  constructor: (config) ->
    @config = config

  start: ->
    documentObjectString = "#game"
    if "documentObject" of @config
      documentObjectString = @config.documentObject
    GameDOM = document.querySelector(documentObjectString)
    if GameDOM is null
      throw new Error "Document object not found"
    console.log "App starts."

