func LongestWord(_ sen: String) -> String {

  // code goes here   
  // Note: feel free to modify the return type of this function 
  
  var longestWord = ""
  var currentWord = ""

  for char in Array(sen){
    if char.isLetter || char.isNumber{
      currentWord += String(char)

      longestWord = currentWord.count > longestWord.count ? currentWord : longestWord
    }else{
      currentWord = ""
    }
  }

  return longestWord
}