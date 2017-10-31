describe "Nebula UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('nebula-ui')

  it "hides the tab bar when there is only one tab open", ->
    expect(document.documentElement.getAttribute('theme-nebula-ui-hidesingletab')).toBe null

    atom.config.set('nebula-ui.hideSingleTab', false)
    expect(document.documentElement.getAttribute('theme-nebula-ui-hidesingletab')).toBe 'enabled'