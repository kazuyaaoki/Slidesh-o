 //
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by Kazuya Aoki on 2020/04/04.
//  Copyright © 2020 Kazuya Aoki. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var displayImageNo = 0
    
    let imageNameArray = ["Unknown.jpeg","Unknown-1.jpeg","Unknown-2.jpeg"]
    
    @IBOutlet weak var imageView: UIImageView!
    var selectedImg: UIImage!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        imageView.image = selectedImg
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

            let ResultViewController:ResultViewController = segue.destination as! ResultViewController
        
        
            let name = imageNameArray[displayImageNo]
            // 画像を読み込み
            let image = UIImage(named: name)
        ResultViewController.selectedImg = image
        }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
