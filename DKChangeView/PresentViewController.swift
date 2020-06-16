//
//  PresentViewController.swift
//  DKChangeView
//
//  Created by David Kuo on 2019/7/10.
//  Copyright © 2019 David Kuo. All rights reserved.
//

import UIKit

class PresentViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.orange
    }
    
    @IBAction func oneMorePresent(_ sender: Any)
    {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "PresentViewController")
        {
            present(controller, animated: true, completion: nil)
        }
    }
    
    @IBAction func dismissThenOneMorePresent() {
        let presentingVC = self.presentingViewController
        dismiss(animated: true) {
            if let controller = self.storyboard?.instantiateViewController(withIdentifier: "PresentViewController")
            {
                presentingVC?.present(controller, animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func dismissThenShowAlert() {
        let alertViewController = UIAlertController(title: "Title", message: "message", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertViewController.addAction(okAction)
        presentingViewController?.dismiss(animated: true, completion: {
            let topViewController = self.getRootController().topMostViewController()
            topViewController.present(alertViewController, animated: true, completion: nil)
        })
    }
    
    @IBAction func dismiss()
    {
        dismiss(animated: true, completion: nil)
    }
}
