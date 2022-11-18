func MinWindowSubstring(_ strArr: [String]) -> String {

  // code goes here   
  // Note: feel free to modify the return type of this function 
  var kDict = [Character:Int]();
  var uniqueK : Int;
  var nDict = [Character:Int]();
  var uniqueN = 0;
  var smallestWindow = [0, strArr[0].count - 1];
  var smallestWindowLen = strArr[0].count
  var leftIdx = 0;
  var rightIdx = 0;

  for char in Array(strArr[1]){
    kDict[char, default: 0] += 1;
  }

  uniqueK = Array(kDict.keys).count;
  // print(uniqueK)
  while rightIdx < strArr[0].count{

    while uniqueN == uniqueK {
      if smallestWindowLen > rightIdx + 1 - leftIdx{
        smallestWindowLen = rightIdx + 1 - leftIdx
        smallestWindow = [leftIdx, rightIdx]
      }
      // print(smallestWindow)
      // print(kDict)
      // print(nDict)
      let currentCharL = Array(strArr[0])[leftIdx]
      // print(currentCharL)
      if kDict[currentCharL] != nil {
        nDict[currentCharL, default: 0] -= 1
        
        if kDict[currentCharL]! - 1 == nDict[currentCharL]{
          uniqueN -= 1
        }
      }

      leftIdx+=1
    }

    let currentChar = Array(strArr[0])[rightIdx]
    if kDict[currentChar] != nil{
      nDict[currentChar, default: 0] += 1
      if(kDict[currentChar] == nDict[currentChar]){
        uniqueN += 1
      }
    }

    if rightIdx + 1 - leftIdx < strArr[1].count || uniqueK != uniqueN{
      rightIdx += 1;
      continue;
    }


  }
  

  return String(Array(strArr[0])[smallestWindow[0]...smallestWindow[1]]);
}