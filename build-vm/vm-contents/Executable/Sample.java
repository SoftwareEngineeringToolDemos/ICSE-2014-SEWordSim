import java.util.Scanner;

import org.smu.wordsimilarity.WordSimDBFacade;

public class Sample {
	public static void main(String args[]) {
		//read in database
		String inputFile = "SEWordSim-r1.db";
		WordSimDBFacade facade = new WordSimDBFacade(inputFile);
		
		Scanner s = new Scanner(System.in);
		
		//stem word
		System.out.println("Please enter the words to be compared :");
		System.out.println("First word : ");
		String inputWord = s.nextLine();
		String stemmedInputWord = facade.stemWord(inputWord);
		System.out.println("Second word : ");
		String comparedWord = s.nextLine();
		String stemmedComparedWord = facade.stemWord(comparedWord);
		
		//set parameters
		double minSimilarityScore = 0.3;
		int N = 10;
		
		//search and print result
		System.out.print("Is the word1 present in database : "+facade.isInDatabase(stemmedInputWord) + "\n");
		System.out.print("Similarity bewteen two words : "+facade.computeSimilarity(stemmedInputWord, stemmedComparedWord) + "\n");
		System.out.print("Most similar word for word1 :"+facade.findMostSimilarWord(stemmedInputWord) + "\n");
		System.out.print("Most similar words for word1 :"+facade.findMostSimilarWords(stemmedInputWord, minSimilarityScore) + "\n");
		System.out.print("Top 10 similar words sfor word1 :"+facade.findTopNWords(stemmedInputWord, N) + "\n");
		//System.out.print(facade.getAllWords());
	}
}
