# GSCaptchaButton

## 功能
* 倒计时
* 自动禁用/启用按钮
* 自定义文字

## 使用方法

无论是自定义控件还是 xib，将继承自 UIButton 改为 GSCaptchaButton

```swift
captchaBtn.setTitle("获取验证码", forState: .normal)
captchaBtn.setTitle("正在获取验证码：second秒", forState: .disabled) 

// 注意：second为关键字，会在运行时替换为秒数，所以可以自定义你想要的文本，如：
// captchaBtn.setTitle("second秒后重试", forState: .disabled)
// captchaBtn.setTitle("(second)重新获取", forState: .disabled)
```
开始倒计时
```swift
captchaBtn.maxSecond = 30 // 默认为60
captchaBtn.countdown = true
```
手动结束
```swift
captchaBtn.countdown = false
```
判断是否处于倒计时状态
```swift
captchaBtn.countdown  // return Bool
```

## 要求

### Master

- iOS 8.0+
- Xcode 10 (Swift 4.2)


## 安装

### [CocoaPods](http://cocoapods.org/):

在 `Podfile` 中增加:
`pod "GSCaptchaButton"`

### 手动
将 `GSCaptchaButton.swift` 文件拖入你的项目 

