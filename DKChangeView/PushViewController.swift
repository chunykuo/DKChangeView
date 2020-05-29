//
//  PushViewController.swift
//  DKChangeView
//
//  Created by David Kuo on 2019/7/10.
//  Copyright © 2019 David Kuo. All rights reserved.
//

import UIKit

class PushViewController: UIViewController {
    
    @IBAction func popToRootButtonPress() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func showAlertThenPopToRootButtonPress() {
        let alertViewController = UIAlertController(title: "Alert", message: "click OK will popToRoot", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.navigationController?.popToRootViewController(animated: true)
        }
        alertViewController.addAction(okAction)
        present(alertViewController, animated: true, completion: nil)
    }
    
    @IBAction func popToRootThenShowAlertButtonPress() {
        self.navigationController?.popToRootViewController(animated: true)
        let alertViewController = UIAlertController(title: "Alert", message: "popToRoot Success!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertViewController.addAction(okAction)
        present(alertViewController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.yellow
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
