#!/usr/bin/env Rscript

#	Description:
#		In this challenge, we are going to take a sentence and mangle it up by sorting the letters in each word. 
# 	So, for instance, if you take the word "hello" and sort the letters in it, you get "ehllo". If you take 
#		the two words "hello world", and sort the letters in each word, you get "ehllo dlorw".
#
#		http://www.reddit.com/r/dailyprogrammer/comments/3aqvjn/20150622_challenge_220_easy_mangling_sentences/
#
mangleSentence <- function( string ) {
    wordLength <- strsplit(string, " ")
    words <- c()

   	for(c in wordLength[[1]]){
   		word <- strsplit(gsub("([[:alnum:]]{1})", "\\1 ", c), " ")[[1]]
   		if(any(grepl("^[[:upper:]]+$", word))){
   			word <- tolower(word)
   			words <- c(words, sapply(paste(sort(word), collapse = ""), simpleCap))
   		}
   		else{
   			words <- c(words, paste(sort(word), collapse = ""))
   		}
   	}

   	print(paste(words, collapse = " "))
}

simpleCap <- function(x) {
  s <- strsplit(x, " ")[[1]]
  paste(toupper(substring(s, 1,1)), substring(s, 2),
      sep="", collapse=" ")
}

mangleSentence("This challenge doesn't seem so hard.")
mangleSentence("There are more things between heaven and earth, Horatio, than are dreamt of in your philosophy.")