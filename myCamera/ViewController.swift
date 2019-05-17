//
//  ViewController.swift
//  myCamera
//
//  Created by 橋本 翔子 on 2018/11/09.
//  Copyright © 2018 橋本 翔子. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var pictureImage: UIImageView!
    
    @IBAction func cameraButtonAction(_ sender: Any) {
        // カメラが利用可能かチェック
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            print("カメラは利用できます")
            // (1)UIImagePickerControllerのインスタンスを作成
            let imagePickerController = UIImagePickerController()
            // (2)sourceTypeにcameraを設定
            imagePickerController.sourceType = .camera
            // (3)delegate設置
            imagePickerController.delegate = self
            // (4)モーダルビューで表示
            present(imagePickerController, animated: true, completion: nil)
            
        } else {
            print("カメラは利用できません")
        }
    }
    
    @IBAction func SNSButtonAction(_ sender: Any) {
    }
}

