describe "Nebula UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('nebula-ui')

  it "allows to disable full-width tab sizing to be set via theme settings", ->
    expect(document.documentElement.getAttribute('theme-nebula-ui-focusmode')).toBe null

    atom.config.set('nebula-ui.focusMode', false)
    expect(document.documentElement.getAttribute('theme-nebula-ui-focusmode')).toBe 'nofullwidth'