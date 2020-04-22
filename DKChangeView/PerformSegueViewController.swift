//
//  View2Controller.swift
//  DKChangeView
//
//  Created by David Kuo on 2019/7/10.
//  Copyright © 2019 David Kuo. All rights reserved.
//

import UIKit

class PerformSegueViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.lightGray
    }
    
    @IBAction func presentToPresentVC()
    {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "PresentViewController")
        {
            present(controller, animated: true, completion: nil)
        }
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func pushToPushVC() {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if let controller = mainStoryboard.instantiateViewController(withIdentifier: "PushViewController") as? PushViewController
        {
            navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    @IBAction func performSegue2() {
        self.performSegue(withIdentifier: "performSegue2", sender: nil)
    }
    
    @IBAction func popToBack()
    {
        if let nav = navigationController {
            nav.popViewController(animated: true)
        } else {
            let alertViewController = UIAlertController(title: "Fail", message: "this view can not pop", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertViewController.addAction(okAction)
            present(alertViewController, animated: true, completion: nil)
        }
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
