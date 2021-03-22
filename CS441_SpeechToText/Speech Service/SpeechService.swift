//
//  SpeechService.swift
//  CS441_SpeechToText
//
//  Created by Ugurcan Demir on 3/22/21.
//

import Foundation
import AVKit

class SpeechService:NSObject{
    
    static let shared = SpeechService()
    
    let speechSynthisizer = AVSpeechSynthesizer()
    
    func startSpeech(_ text:String){
        self.stopSpeeching()
        
        if let language = NSLinguisticTagger.dominantLanguage(for: text){
            let utterence = AVSpeechUtterance(string: text)
            utterence.voice = AVSpeechSynthesisVoice(language: language)

            speechSynthisizer.speak(utterence)
        }
    }
    func stopSpeeching(){
        speechSynthisizer.stopSpeaking(at: .immediate)
    }
}
