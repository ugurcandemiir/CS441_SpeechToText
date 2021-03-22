//
//  SpeechToTextViewController.swift
//  CS441_SpeechToText
//
//  Created by Ugurcan Demir on 3/22/21.
//

import UIKit
import InstantSearchVoiceOverlay

class SpeechToTextViewController: UIViewController, VoiceOverlayDelegate {

    @IBOutlet weak var TalkButton: UIButton!
    
    let voiceOverLay = VoiceOverlayController()
    override func viewDidLoad() {
        super.viewDidLoad()
            
    }


    @IBAction func pushTalk(_ sender: Any) {
        voiceOverLay.delegate = self
        voiceOverLay.settings.autoStart = false
        voiceOverLay.settings.autoStop = true
        

        voiceOverLay.start(on: self, textHandler: {text,final, _  in
            if final{
                print("Final text: \(text)")
            }else{
                //print("In progress: \(text)")

            }
        }, errorHandler: { (error) in
        
        })

    }
    func recording(text: String?, final: Bool?, error: Error?) {
        
    }
}
