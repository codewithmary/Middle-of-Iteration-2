//
//  ViewController.swift
//  fileProjectApp
//
//  Created by Apple on 8/13/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class AddViewController: UIViewController , UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController ()

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func takeSelfieTapped(_ sender: UIButton) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBOutlet var displayImage: UIImageView!

    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [ UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage]
            as? UIImage {
            displayImage.image = selectedImage
        
        }
        imagePicker.dismiss(animated: true, completion: nil)
    }
        
    @IBAction func photoLibraryTapped(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
        
    }
}












