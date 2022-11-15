import Foundation

func FindIntersection(_ strArr: [String]) -> String {

    // code goes here   
    // Note: feel free to modify the return type of this function 

    var returnStr = ""
    let storageSet =  Set(strArr[0].components(separatedBy: ", "))

    let arr2 = strArr[1].components(separatedBy: ", ")

    for number in arr2{
    if storageSet.contains(number){
        returnStr +=  returnStr.count == 0 ? number :  "," + number
    }
    }
    //Different approach
    // var resultArr = [String]()
  
    // for number in arr2{
    //     if storageSet.contains(number){
    //     resultArr.append(number)
    //     }
    // }

    // return resultArr.joined(separator: ",")


    return returnStr

}