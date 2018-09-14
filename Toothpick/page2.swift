//
//  page2.swift
//  Toothpick
//
//  Created by ananya mukerjee on 9/13/18.
//  Copyright © 2018 Cheney. All rights reserved.
//

import UIKit

class page2: UIViewController, UITextFieldDelegate {
    var distance = 0
    var numPeople = 0
    
    @IBOutlet weak var personOne: UITextField!
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
        textField.resignFirstResponder()
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        personOne.delegate = self

        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let vc = segue.destination as? page3
        {
            vc.distance = distance
            vc.numPeople = numPeople
            print("FAIL")
            vc.personOne = personOne.text!
            print(distance)
            print(numPeople)
            print("NOT FAIL")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


