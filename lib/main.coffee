# Target the atom-workspace element
# It returns a collection of one, so get the first one '[0]'
root = document.getElementsByTagName('atom-workspace').item(0);

# Modules

module.exports =
  activate: (state) ->
    atom.config.observe 'nebula-ui.focusMode', (value) ->
      setFocusMode(value)

    atom.config.observe 'nebula-ui.hideSingleTab', (value) ->
      setHideSingleTab(value)

  deactivate: ->
    unsetFocusMode()
    unsetHideSingleTab()

# Focus Mode -----------------------

setFocusMode = (focusMode) ->
  if (focusMode)
    unsetFocusMode()
  else
    root.removeAttribute('theme-nebula-ui-focusmode')

unsetFocusMode = ->
  root.setAttribute('theme-nebula-ui-focusmode', "enabled")


# Hide Single Tab -----------------------

setHideSingleTab = (hideSingleTab) ->
  if (hideSingleTab)
    unsetHideSingleTab()
  else
    root.removeAttribute('theme-nebula-ui-hidesingletab')

unsetHideSingleTab = ->
  root.setAttribute('theme-nebula-ui-hidesingletab', "enabled")