//
//  ViewController.swift
//  Tapper-Rerun-App
//
//  Created by Samer Mujibuddin on 11/15/16.
//  Copyright © 2016 Samer Mujibuddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var coinButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    //Actions
    @IBAction func onCoinButtonPressed(_sender: UIButton!) {
        currentTaps += 1
        updateLabel()
        
        if isGameOver() {
            restartGame()
        }
        
    }
    @IBAction func onPlayButtonPressed(_sender: UIButton!) {
        if howManyTapsText.text != nil && howManyTapsText.text != "" {
        startOutlets()
        maxTaps = Int(howManyTapsText.text!)!
        updateLabel()
        
        }
        
    }
    func endOutlets(){
        logoImg.isHidden = false
        howManyTapsText.isHidden = false
        playButton.isHidden = false
        coinButton.isHidden = true
        tapsLabel.isHidden = true
    }
    func startOutlets(){
        logoImg.isHidden = true
        howManyTapsText.isHidden = true
        playButton.isHidden = true
        coinButton.isHidden = false
        tapsLabel.isHidden = false
    }
    func updateLabel(){
        tapsLabel.text = "\(currentTaps) Taps"
    }
    func restartGame(){
        maxTaps = 0
        howManyTapsText.text = ""
        endOutlets()
    }
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
           return true
        } else {
            return false
        }
    }

}

