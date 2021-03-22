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
        setupUIViews()
    }
    
    func setupUIViews(){
        textView.text = ""
        
        textView.layer.cornerRadius = 2
        textView.layer.borderWidth = 2
        textView.layer.borderColor = UIColor.black.cgColor
        
    }
    
    
    @IBAction func buttonTappedAction(_ sender: UIButton) {
        if sender == clearButton{
            textView.text = ""
            textView.becomeFirstResponder()
        }else if sender == speechButton{
            textView.resignFirstResponder()
            SpeechService.shared.startSpeech(textView.text)
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
