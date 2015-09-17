# 防止webapp内部链接跳转
webapp_a = document.getElementsByTagName('a')
webapp_i = 0
while webapp_i < webapp_a.length

  webapp_a[webapp_i].onclick = ->
    window.location = @getAttribute('href')
    false

  webapp_i++

# －－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－

# lazyload加载
$("img.lazy").lazyload()

# －－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－

# 判断是否是微信
isWeiXin = ->
  ua = window.navigator.userAgent.toLowerCase()
  if String(ua.match(/MicroMessenger/i)) == "micromessenger"
    true
  else
    false
