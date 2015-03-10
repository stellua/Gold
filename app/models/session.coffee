`import {Model, attr, hasOne, hasMany} from 'fireplace'`

session    = Model.extend
  member:           hasOne( embedded: false )
  presences:        hasMany( embedded: false )
  on:               attr()
  off:              attr()

  # priority: (->
  #   @get('member').get('id')
  # ).property('member.id')

  onTime: (->
    new Date((@get('on') * 1000) + ' UTC').toString()
  ).property('on')

  offTime: (->
    new Date((@get('off') * 1000) + ' UTC').toString()
  ).property('off')
  
`export default session`