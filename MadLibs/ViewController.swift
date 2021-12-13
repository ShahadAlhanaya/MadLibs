//
//  ViewController.swift
//  MadLibs
//
//  Created by Shahad Nasser on 13/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func unwind( _ segue: UIStoryboardSegue) {
        let destination = segue.source as! FieldsViewController
        let adjective = destination.adjectiveTextField.text ?? ""
        let verb1 = destination.verb1TextField.text ?? ""
        let verb2 = destination.verb2TextField.text ?? ""
        let noun = destination.nounTextField.text ?? ""
        
        updateLabel(adjective, verb1, verb2, noun)
    }
    
    func updateLabel(_ adjective: String?,_ verb1: String?,_ verb2: String?,_ noun: String?) {
        label.text = "We are having a perfectly \(adjective ?? "") right now. Later we will \(verb1 ?? "") and \(verb2 ?? "") in the \(noun ?? "")"
    }


}

