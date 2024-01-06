//
//  ViewController.swift
//  ImagePicker
//
//  Created by Arti on 05/01/24.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate  {

    @IBOutlet weak var photoInageView: UIImageView!
    
  //  let imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      //  imagePicker.delegate = self
    }

    @IBAction func buttonAction(_ sender: Any) {
        let imagePicker = UIImagePickerController()
               imagePicker.sourceType = .photoLibrary
               imagePicker.delegate = self
               present(imagePicker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let selectedImage = info[.originalImage] as? UIImage {
                photoInageView.image = selectedImage
                if let imageURL = info[.imageURL] as? URL {
                                print("Image URL: \(imageURL)")
                            }

            }
            
            picker.dismiss(animated: true, completion: nil)
        }
}

