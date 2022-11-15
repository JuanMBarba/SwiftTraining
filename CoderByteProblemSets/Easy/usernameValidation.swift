func CodelandUsernameValidation(_ str: String) -> String {

  // code goes here   
  // Note: feel free to modify the return type of this function 

  let arrStr = Array(str)

  if arrStr.count < 4 || arrStr.count > 25 || !arrStr[0].isLetter || arrStr[arrStr.count - 1] == "_"{
    return "false"
  }

  for char in arrStr {
    if !char.isLetter && !char.isNumber && char != "_"{
      return "false"
    }
  }

  return "true"

}