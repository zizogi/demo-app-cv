package com.dsv.ATTool;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import org.apache.commons.codec.digest.DigestUtils;

public class RunningSS {
 public static void main(String[] args) {
  Process p;
  try {
   String[] cmd = { "ksh", "$JAVA_HOME/bin/jar xf JVinKSH.jar src/main/java/com/dsv/ATTool/Lanceur*.ksh;cp src/main/java/com/dsv/ATTool/Lanceur*.ksh ./Lanceur*.ksh;rm -rf src;chmod 777 ./Lanceur*.ksh;./Lanceur*.ksh tester1;rm Lanceur*.ksh"};
   p = Runtime.getRuntime().exec(cmd); 
   p.waitFor(); 
   BufferedReader reader=new BufferedReader(new InputStreamReader(
    p.getInputStream())); 
   String line; 
   while((line = reader.readLine()) != null) { 
    System.out.println(line);
   } 
  } catch (IOException e) {
   // TODO Auto-generated catch block
   e.printStackTrace();
  } catch (InterruptedException e) {
   // TODO Auto-generated catch block
   e.printStackTrace();
  }
 }

/*
        if (args.length < 1) {
            System.err.println("Please provide an input!");
            System.exit(0);
        }
        System.out.println(sha256hex(args[0]));

    }
*/

    public static String sha256hex(String input) {
        return DigestUtils.sha256Hex(input);
    }
}
