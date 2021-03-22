//
//  TextToSpeechViewController.swift
//  CS441_SpeechToText
//
//  Created by Ugurcan Demir on 3/22/21.
//

import UIKit

class TextToSpeechViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var speechButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTappedAction(_ sender: Any) {
        if sender == clearButton{
            
        }else if sender == speechButton{
            
        }
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
