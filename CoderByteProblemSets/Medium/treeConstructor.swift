import Foundation // needed for CharacterSet
func TreeConstructor(_ strArr: [String]) -> String {

  // code goes here   
  // Note: feel free to modify the return type of this function 
  var parents = [String : [String]]()
  var children = [String : [String]]()
  var uniqueNodes = Set<String>()

  for str in strArr{
    var strChars = str.components(separatedBy: CharacterSet(charactersIn: "(),"))
    let child = strChars[1];
    let parent = strChars[2];
    uniqueNodes.insert(child);
    uniqueNodes.insert(parent)
    //Check for only 2 children for a parent
    if parents[parent] == nil {
      parents[parent] = [String]();
      parents[parent]!.append(child);  
    } else{
      parents[parent]!.append(child)
    }

    if parents[parent]!.count > 2 {
      return "false"
    }
    //Check for only one parent for a child
    if children[child] == nil {
      children[child] = [String]();
      children[child]!.append(parent);  
    } else{
      children[child]!.append(parent);
    }

    if children[child]!.count > 1{
      return "false"
    }
  }

  //Check for only 1 root node
  if uniqueNodes.count - children.count != 1 {
    return "false"
  } 

  return "true"

}