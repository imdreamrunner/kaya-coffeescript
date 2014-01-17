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
    stage = @config["firstStage"]
    if stage is null
      throw new Error "First stage not found"
    @currentStage = stage
    tick()
    console.log "App starts."

  tick: ->

