import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}

public String noSpaces(String word)
{
	for(int i=0; i< word.length(); i++)
	{
		if (word.substring(i,i+1).equals(" "))
		{
			word= word.substring(0,i) + "\n" ;
		}
	}
	return word;
}

public int findFirstVowel(String sWord)
{
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
String word = sWord.toLowerCase();
for ( int i=0; i<word.length(); i++)
  {if (word.indexOf("a")==i||word.indexOf("e")==i||word.indexOf("i")==i||word.indexOf("o")==i||word.indexOf("u")==i )
  {return i;} 
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{

	int x = findFirstVowel(sWord);
	if (sWord.substring(0,2).equals("qu"))
	{
		return sWord.substring(x+1,sWord.length()) + sWord.substring(0,x+1) + "ay";
	}
	else if(x ==-1)
	{
		return sWord + "ay";
	}
	else if (x== 0)
	{
		return sWord + "way";
	}
	return sWord.substring(x,sWord.length()) + sWord.substring(0,x) + "ay";
	
}
