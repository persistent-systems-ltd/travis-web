`import config from 'travis/config/environment'`

initialize = (container) ->
  if config.gaCode
    window._gaq = []
    _gaq.push(['_setAccount', config.gaCode])

    ga = document.createElement('script')
    ga.type = 'text/javascript'
    ga.async = true
    ga.src = 'https://ssl.google-analytics.com/ga.js'
    s = document.getElementsByTagName('script')[0]
    s.parentNode.insertBefore(ga, s)

GAInitializer =
  name: 'google-analytics'
  initialize: initialize

`export {initialize}`
`export default GAInitializer`