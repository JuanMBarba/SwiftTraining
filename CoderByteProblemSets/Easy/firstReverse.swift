func FirstReverse(_ str: String) -> String {

  // code goes here   
  // Note: feel free to modify the return type of this function 

  var resultStr = ""


  for char in Array(str){

    resultStr = String(char)+resultStr

  }
  

  return resultStr
}