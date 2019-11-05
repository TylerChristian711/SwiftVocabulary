//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Lambda_School_Loaner_218 on 11/4/19.
//  Copyright © 2019 Lambda_School_Loaner_218. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var cellDef: VocabularyWord?
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        if let unwrappedWord = cellDef {
            titleLabel.text = unwrappedWord.word
            
            textView.text = unwrappedWord.definition
            
           
        }
    }

}
