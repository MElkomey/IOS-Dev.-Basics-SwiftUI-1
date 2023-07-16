//
//  PlaySound.swift
//  Super Hero App
//
//  Created by Mohamed Elkomey on 15/07/2023.
//

import Foundation
import AVFoundation

var audioPlayer : AVAudioPlayer?
func playSound(sound:String , type:String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
        audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch{
            print("couldnt play sound...!")
        }
    }
    
}
