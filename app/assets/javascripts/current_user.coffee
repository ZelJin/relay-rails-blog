###
# CurrentUser object, returning info on current logged in User
###

App.currentUser = ->
  id:
    parseInt($('meta[name=current_user]').attr('id'))

  name:
    $('meta[name=current_user]').attr('username')

  email:
    $('meta[name=current_user]').attr('email')

  isCurrent: (id) ->
    this.id == id
