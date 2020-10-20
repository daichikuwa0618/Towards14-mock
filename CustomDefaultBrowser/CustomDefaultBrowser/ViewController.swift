//
//  ViewController.swift
//  CustomDefaultBrowser
//
//  Created by 林 大地 on 2020/10/20.
//  Copyright © 2020 林 大地. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapButton(_ sender: Any) {
        let url = URL(string: "https://apple.com")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        } else {
            self.showAlert(title: "エラー", message: "URL を開けません。")
        }
    }

    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertController, animated: true)
    }
}

