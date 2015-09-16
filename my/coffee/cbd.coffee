# lazyload加载
$("img.lazy").lazyload()
# 判断是否是微信
isWeiXin = ->
  ua = window.navigator.userAgent.toLowerCase()
  if String(ua.match(/MicroMessenger/i)) == "micromessenger"
    true
  else
    false

