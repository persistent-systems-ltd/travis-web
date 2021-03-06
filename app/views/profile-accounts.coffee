`import BasicView from 'travis/views/basic'`

View = BasicView.extend
  tabBinding: 'controller.tab'
  classNames: ['profile-orglist']
  templateName: 'profile/accounts'
  classAccounts: (->
    'active' if @get('tab') == 'accounts'
  ).property('tab')


`export default View`
