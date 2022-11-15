func QuestionsMarks(_ str: String) -> String {

  // code goes here   
  // Note: feel free to modify the return type of this function 

  var currentQuestions = 0
  var currentNum = -1
  var returnBool = "false"

  for char in Array(str) {

    if char == "?"{
      currentQuestions += 1
    }

    if char.isNumber {
      let num = char.wholeNumberValue!
      if currentNum == -1 {
        currentNum = num
      }else if currentNum + num == 10{
        currentNum = num
        if currentQuestions != 3 {
          return "false"
        }else{
          returnBool = "true"
        }
      }
      currentQuestions = 0
    }

  }

  return returnBool

}