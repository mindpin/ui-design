# 用到了 turbolinks
# 事件加载参考
# https://github.com/rails/turbolinks/#no-jquery-or-any-other-library

jQuery(document).on 'ready page:load', ->
  console.debug 'loaded'

# 点亮 navbar
jQuery(document).on 'ready page:load', ->
  nav = jQuery('[data-nav]').data('nav')
  jQuery(".layout-footer a.item.#{nav}").addClass('active')

# 填充标题
jQuery(document).on 'ready page:load', ->
  title = jQuery('[data-title]').data('title')
  jQuery(".layout-header .page").text title

# home 页页签
jQuery(document).delegate '.page-landing .filter a.item', 'click', ->
  $item = jQuery(this)
  $item.closest('.filter').find('a.item').removeClass('active')
  $item.addClass('active')