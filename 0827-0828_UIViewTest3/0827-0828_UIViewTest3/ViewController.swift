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
    // 강사님 코드 보고 생성한 변수
//    var imageName = images[self().curImage]
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: images[curImage])
        
    }

    @IBAction func showPrevImage(_ sender: Any) {
        let imageName = images[curImage]
        curImage -= 1
        
        if curImage < 0 {
            curImage = 0
        }
        
        imageView.image = UIImage(named: imageName)
    }
    
    @IBAction func showNextImage(_ sender: Any) {
        let imageName = images[curImage]
        curImage += 1
        
        // fix error
        if curImage > images.count-1 {
            curImage = images.count-1
        }
        
        imageView.image = UIImage(named: imageName)
    }
    
}

