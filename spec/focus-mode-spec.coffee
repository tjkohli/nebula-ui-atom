describe "Nebula UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('nebula-ui')

  it "enables Focus Mode", ->
    expect(document.documentElement.getAttribute('theme-nebula-ui-focusmode')).toBe null

    atom.config.set('nebula-ui.focusMode', false)
    expect(document.documentElement.getAttribute('theme-nebula-ui-focusmode')).toBe 'enabled'