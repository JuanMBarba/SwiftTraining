func BracketMatcher(_ str: String) -> String {

  // code goes here   
  // Note: feel free to modify the return type of this function 
  var leftBrac = 0;

  for char in Array(str){

    if char == "("{ 
      leftBrac+=1;
    }

    if char == ")"{
      leftBrac-=1;
    }

    if leftBrac < 0{
      return "0"
    }

  }


  return leftBrac == 0 ?  "1" : "0"

}