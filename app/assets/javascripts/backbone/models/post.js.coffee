class Mrktblink.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:
    title: null
    content: null

class Mrktblink.Collections.PostsCollection extends Backbone.Collection
  model: Mrktblink.Models.Post
  url: '/posts'
