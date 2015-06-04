# SwiftCountdownButton

## 功能
* 开始倒计时并禁用按钮
* 结束倒计时
* 自定义文字

## 使用方法
* 将UIButton改为SwiftCountdownButton
* 设置你想要的默认文字和倒计时文字
```swift
countdownBtn.setTitle("获取验证码", forState: .Normal)
countdownBtn.setTitle("正在获取验证码：second秒", forState: .Disabled) 
// 注意：second为关键字，会在运行时替换为秒数，所以可以自定义你想要的文本，如：
// countdownBtn.setTitle("second秒后重试", forState: .Disabled)
// countdownBtn.setTitle("(second)重新获取", forState: .Disabled)
```
* 开始倒计时
```swift
countdownBtn.maxSecond = 30 // 默认为60
countdownBtn.countdown = true
```
* 结束倒计时
```swift
countdownBtn.countdown = false
```
* 判断是否处于倒计时状态
```swift
countdownBtn.countdown  // return Bool
```
