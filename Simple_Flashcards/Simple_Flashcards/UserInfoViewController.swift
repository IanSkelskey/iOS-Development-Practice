//
//  UserInfoViewController.swift
//  Simple_Flashcards
//
//  Created by Diane Skelskey on 12/17/21.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    
    @IBOutlet weak var outputText: UILabel!
    
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func submitPressed(_ sender: Any) {
        name = nameTextField.text
        if let name = name {
            outputText.text = "Thanks, \(name)!"
        }
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "QuestionViewController") as! QuestionViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
