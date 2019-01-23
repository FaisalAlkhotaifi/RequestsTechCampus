//
//  ViewController.swift
//  RequestsTechCampus
//
//  Created by TechCampus on 1/20/19.
//  Copyright © 2019 TechCampus. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      let imageUrl = URL(string: "https://techcampus.com/uploads/c983e6c92f62ac2368f51e0a462556ba.jpg")!
        
        //doesn't happen automatically, needs resume()
        let task = URLSession.shared.dataTask(with: imageUrl) { (data, response, error) in
            if error == nil {
                let loadedImage = UIImage(data: data!)
                DispatchQueue.main.async {
                    self.imageView.image = loadedImage
                }
            }
        }
        
        task.resume()//call the request, without that line request wouldn't be called
    }


}

