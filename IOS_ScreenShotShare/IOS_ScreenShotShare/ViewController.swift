//
//  ViewController.swift
//  IOS_ScreenShotShare
//
//  Created by ssemm on 2021/04/12.
//

import UIKit

var image:UIImage = UIImage()

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func bntCapture(_ sender: UIButton) {
        let screenshot = self.view.transformToImage()
        image = screenshot!
        
        let vc = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        vc.excludedActivityTypes = [.saveToCameraRoll]
        present(vc, animated: true)
        
    }
    
}

// UIImage로 변환
extension UIView{
    func transformToImage() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(bounds.size, isOpaque, 0.0)
        defer {
            UIGraphicsEndImageContext()
        }
        if let context = UIGraphicsGetCurrentContext(){
            layer.render(in: context)
            return UIGraphicsGetImageFromCurrentImageContext()
        }
        return nil
    }
}


