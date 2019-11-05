//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Lambda_School_Loaner_218 on 11/4/19.
//  Copyright © 2019 Lambda_School_Loaner_218. All rights reserved.
//

import UIKit


class WordsTableTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
         VocabularyWord(word: "Variable", definition: "Variable is called using the var keyword and holds the value you have assinged to it but unlike a Constant it can be changed or altered later "),
         
         VocabularyWord(word: "Constant", definition: "Constant is called using the let keyword and has alot in common with a Variable but it cannot be changed once it has its value"),
         
         VocabularyWord(word: "Function", definition: "A function is a block of code that performs a task and can be called more than once to do the same task again.")]
    
   

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        let vocab = vocabWords[indexPath.row]
        
        cell.textLabel?.text = vocab.word
        return cell
    }
    

   
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            
            
            if let indexPath = tableView.indexPathForSelectedRow,
                let definitionVC = segue.destination as? DefinitionViewController {
                
                let vocabWord = vocabWords[indexPath.row]
                definitionVC.cellDef = vocabWord
                
            }
        }
    }
    

}
