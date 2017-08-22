//
//  ViewController.swift
//  appleTvLm
//
//  Created by abe sanchez on 8/19/17.
//  Copyright © 2017 abesanchez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let asset = NSDataAsset(name: "Defqwop - Heart Afire")
            else {
                print("Error de audio")
                return
        }
        
        do{
            player = try AVAudioPlayer(data: asset.data)
        } catch{
            print("Error de audio")
            return
        }
        player.volume = 0
        player.numberOfLoops = -1
        player.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func turnOffMusic(_ sender: Any) {
        player.setVolume(0, fadeDuration: 2)
    }
    
    @IBAction func turnOnMusic(_ sender: Any) {
        player.setVolume(1, fadeDuration: 2)
    }
}

