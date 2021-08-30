import UIKit

class SampleClass1 {
    var name: String = ""
}

//var sClass1:SampleClass1
//if sClass1 != nil { //nil check
//    sClass1.name = "오마이걸"
//}

class SampleClass2 {
    var num:Int
    init(num:Int){ self.num = num}
}

var index:Int
//print(index)-> 초기화 안되어있어서 안댐
index = 3
print(index)

var number1 = Int()
var number2 = Int(1)
var number3 = Int(1.0)
// Int type

var number4 = Int("1")
type(of: number4)
// optional Int type
// 왜냐면 스트링의 경우 숫자로 바꾸지 못할 경우도 있기 때문
// var number4 = Int("Hi")


var optInt:Int?
optInt = nil
print(optInt)

var optInt1:Int? = 1
print(optInt1!)

var optStr:String? = "Swift"
print(optStr!)

var optArr : [String]?
optArr = ["C", "Java", "Objective-C", "SmallTalk"]
print(optArr!)

var optDic : [String:Int]?
optDic = ["국어":94 ,"수학":88, "영어":96]
print(optDic!)

var temp1:Int? = 3
var temp2:Int? = 5
//temp1 + temp2
//temp1 + 30

var optInt2:Int? = 3
print("옵셔널 자체의 값: \(optInt2)")
print("!로 강제 언래핑 한 값: \(optInt2!)")
temp1! + temp2!
var index7 = Int("123")!
print(index7)

var capital5 = ["KR":"Seoul", "EN":"London", "FR":"Paris"]

print(capital5["KR"])
print(capital5["Kr"])
// 값이 있다면 optional이 아니지만 잘 못 입력해서 아무것도 못 찾을 경우가 있으므로
// nil일 수도 있고, 값이 있을 수도 있으니까 -> 무조건 optional type이 됨
