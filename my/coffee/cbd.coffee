# 防止webapp内部链接跳转
a = document.getElementsByTagName('a')
i = 0
while i < a.length

  a[i].onclick = ->
    window.location = @getAttribute('href')
    false

  i++
  
# lazyload加载
$("img.lazy").lazyload()

# 判断是否是微信
isWeiXin = ->
  ua = window.navigator.userAgent.toLowerCase()
  if String(ua.match(/MicroMessenger/i)) == "micromessenger"
    true
  else
    false
