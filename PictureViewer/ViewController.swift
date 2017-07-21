//
//  ViewController.swift
//  PictureViewer
//
//  Created by JordanLin on 2017/7/21.
//  Copyright © 2017年 JordanLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet var pickImageButton: UIButton!
    let picker = UIImagePickerController()
    @IBOutlet var mainImageView: UIImageView!
    
    @IBAction func pickImageTapped(_ sender: Any) {
        
        
        self.picker.sourceType = .photoLibrary
        self.picker.delegate = self
        self.present(self.picker, animated: true, completion: nil)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainImageView.tintColor = UIColor.white
        self.pickImageButton.titleLabel?.font = UIFont(name: ".SFUIText-Heavy", size: 20)!
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            self.mainImageView.image = image
        } else {
            print("Something error")
        }
        
        self.mainImageView.contentMode = .scaleAspectFit
        self.dismiss(animated: true, completion: nil)
    }
}

