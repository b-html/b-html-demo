bHtml = require 'b-html'
Vue = require 'vue'
appTemplate = require './templates/app'

Vue.config.strict = true
Vue.config.interpolate = false

new Vue
  el: '#app'
  data: ->
    bHtml: '''
      ><!DOCTYPE html>
      <html
        @lang en
        <head
          </meta
            @charset utf-8
          <title
            b-html demo
        <body
          <h1
            b-html demo
          <p
            Source Code:
            <a
              @href https://github.com/b-html/b-html
              b-html/b-html
    '''
  computed:
    html: ->
      try
        bHtml @bHtml
      catch e
        '(ERROR)'
  template: appTemplate
