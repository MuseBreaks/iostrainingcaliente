//
//  ViewController.swift
//  FadeMusic
//
//  Created by abe sanchez on 8/16/17.
//  Copyright © 2017 abesanchez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player:AVAudioPlayer!
    @IBAction func toggleMusic(_ sender: UISwitch) {
        if sender.isOn{
            player.setVolume(1, fadeDuration: 2)
        }else{
            player.setVolume(0, fadeDuration: 2)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        // Dispose of any resources that can be recreated.
    }
}

