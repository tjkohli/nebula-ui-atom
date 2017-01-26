# Target the atom-workspace element
# It returns a collection of one, so get the first one '[0]'
root = document.getElementsByTagName('atom-workspace').item(0);

# Modules
module.exports =
  activate: (state) ->
    atom.config.observe 'nebula-ui.focusMode', (setFocus) ->
      setFocusMode(setFocus)

  deactivate: ->
    unsetFocusMode()

# Functions
setFocusMode = (setFocus) ->
  if (setFocus)
    unsetFocusMode()
  else
    root.removeAttribute('theme-nebula-ui-focusmode')

unsetFocusMode = ->
  root.setAttribute('theme-nebula-ui-focusmode', "enabled")