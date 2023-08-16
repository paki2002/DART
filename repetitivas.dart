void main(List<String> args) {
  //Estructuras repetitivas 
  //For 
/* contador
i++ -> i = i + 1
++i
i-- -> i = i - 1
--i

  for(int i = 0; i < 5; i++){ 
    //Instrucciones a repetir 
    print(i);
  }
  print("fin del for");

int i = 0;
  while (i < 5) {
    // instrucciones a repetir
    print("Hola"+i.toString());
    print("Hola: $i");
    i++;

  }
  print("fin del while");
  */
  int i = 0;
  do {
    //instrucciones a repetr 
    print("Hola do-while: $i");
    i++;
    //uso del break
    if(i == 5) break;
  } while (i<11);
  print("fin del do-while");
}