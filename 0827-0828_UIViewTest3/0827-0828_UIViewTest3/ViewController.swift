//
//  ViewController.swift
//  0827-0828_UIViewTest3
//
//  Created by simyo on 2021/08/27.
//

import UIKit

class ViewController: UIViewController {
    
    let images = ["daeng1", "daeng2", "daeng3", "daeng4", "daeng5"]
    var curImage = 0
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: images[curImage])
        
    }

    @IBAction func showPrevImage(_ sender: Any) {
        if curImage != 0 {
            curImage -= 1
            imageView.image = UIImage(named: images[curImage])
            pageControl.currentPage += 1
        } else {
            return
        }
        
    }
    
    @IBAction func showNextImage(_ sender: Any) {
        if curImage != images.count{
            // 강사님 코드 보고 수정한 부분
            let imageName = images[curImage]
            
            curImage += 1
            imageView.image = UIImage(named: imageName)
            
        } else{
            return
        }
    }
    
}

