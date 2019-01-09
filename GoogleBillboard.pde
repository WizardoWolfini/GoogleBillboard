public final static String e = "2718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";
public void setup()  
{            
  boolean success = false; 
  int i = 0;
  double answer = 2;
  while (success == false) {
    if (isPrime(Double.parseDouble(e.substring(i, i +10)))) {
      success = true;
      answer = Double.parseDouble(e.substring(i, i +10));
    }
    if (i <= e.length() - 10) {
      i++;
    }
  }
  println("Success " + answer);
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
  for (int i = 2; i <= Math.sqrt(dNum); i++) {
    if (dNum%i == 0) {
      return false;
    }
  }
  return true;
} 
