func FirstFactorial(_ num: Int) -> Int {

  // code goes here   
  // Note: feel free to modify the return type of this function 

  var result = 1

  for i in 1...num{
    result *= i
  }

  return result

}