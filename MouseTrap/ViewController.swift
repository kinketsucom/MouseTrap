//
//  ViewController.swift
//  MouseTrap
//
//  Created by admin on 2017/10/31.
//  Copyright © 2017年 sekibotbot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var img_width:Int?
    var img_height:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    @IBOutlet weak var before_image: UIImageView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func myTestButton(_ sender: Any) {
        print(before_image.image!)
        let raw = getByteArrayFromImage(imageRef: before_image.image!.cgImage!)
        print(raw[0])
        print(raw.count)
    }
    
    
    func getByteArrayFromImage(imageRef: CGImage) -> [UInt8] {
        
        let data = imageRef.dataProvider!.data
        let length = CFDataGetLength(data)
        var rawData = [UInt8](repeating: 0, count: length)
        CFDataGetBytes(data, CFRange(location: 0, length: length), &rawData)
        
        return rawData
        
    }
    
}

