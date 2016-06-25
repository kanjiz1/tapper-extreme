//
//  ViewController.swift
//  tapper-
//
//  Created by Oforkanji Odekpe on 6/24/16.
//  Copyright © 2016 Oforkanji Odekpe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var maxTaps: Int = 0;
    var currentTaps : Int = 0;
    
    
    
    //Outlets
    @IBOutlet weak var logoImage: UIImageView!;
    @IBOutlet weak var howManyTapsTxt: UITextField!;
    @IBOutlet weak var playButton: UIButton!;
    
    @IBOutlet weak var tapButton: UIButton!;
    @IBOutlet weak var tapsLabel: UILabel!;
    
    @IBAction func onPlayButtonPressed( sender: UIButton!){
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != ""{

            logoImage.hidden = true;
            playButton.hidden = true;
            howManyTapsTxt.hidden = true;
            
            tapButton.hidden = false;
            tapsLabel.hidden = false;
            
            maxTaps = Int(howManyTapsTxt.text!)!;
            currentTaps = 0;
            updateTapsLabel();
        }
    }
    
    @IBAction func onStarTapped(sender: UIButton){
        currentTaps++;
        updateTapsLabel();
        if isGameOver()
        {
            restartGame();
        }
    }
    
    func updateTapsLabel(){
        tapsLabel.text = "\(currentTaps) Taps";
    }
    
    func isGameOver() -> Bool{
        if currentTaps >= maxTaps{
            return true;
        }
        else
        {
            return false;
        }
    }
    
    func restartGame(){
        maxTaps = 0;
        howManyTapsTxt.text = "";
        
        logoImage.hidden = false;
        playButton.hidden = false;
        howManyTapsTxt.hidden = false;
        
        tapButton.hidden = true;
        tapsLabel.hidden = true;
    }
}
