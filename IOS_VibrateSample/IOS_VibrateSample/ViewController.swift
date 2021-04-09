//
//  ViewController.swift
//  IOS_VibrateSample
//
//  Created by ssemm on 2021/04/08.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnVibrate(_ sender: Any) {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        print("진동클릭")
    }
    
}

