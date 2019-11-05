//
//  ViewController.swift
//  CameraAndImagePickerView
//
//  Created by Sandeep Jangra on 2019-11-04.
//  Copyright © 2019 Sandeep Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBAction func sourceBtn(_ sender: UIButton) {
        self.imagePicker.present(from: sender)
//        let alert = UIAlertController(title: "Source of Image", message: nil, preferredStyle: .alert)
//
//        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: nil))
//        alert.addAction(UIAlertAction(title: " Photo Library", style: .default, handler: nil))
//        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
//        self.present(alert, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagePicker = ImagePicker(presentationController: self, delegate: self)
        // Do any additional setup after loading the view.
    }
   
    

        var imagePicker: ImagePicker!

      
        
      
    }

    extension ViewController: ImagePickerDelegate {

        func didSelect(image: UIImage?) {
            self.imageView.image = image
        }

}

