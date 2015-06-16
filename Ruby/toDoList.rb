#!/usr/bin/env ruby

# Description:
#	Today's challenge will be something slightly different! At least 
#	I think the challenge is meant to be for today? Wait, am I meant 
#	to even be submitting today? Okay maybe I need some help on 
#	organising my thoughts before I submit my challenge. A to-do list 
#	would be fine, just something so that I can organise my thoughts!
#	It should have the following basic functionality:
#	1.	Add an item to the to-do list
#	2.	Delete a selected item from the to-do list
#	3.	And obviously, print out the list so I can see what to do!
#
#	http://www.reddit.com/r/dailyprogrammer/comments/39ws1x/20150615_challenge_218_easy_todo_list_part_1/
#

class ToDoList
   def initialize
      @array = Array.new
   end
   def addItem(item)
      @array.push(item)
   end
   def deleteItem(item)
   		@array.delete(item)
   end
   def viewList
   		@array.each {|x| print x, "\n" }
   end
end

list = ToDoList.new
list.addItem("Buy a new phone")
list.addItem("Go to work")
list.viewList
list.deleteItem("Go to work")
list.viewList