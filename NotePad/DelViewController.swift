//
//  DelViewController.swift
//  NotePad
//
//  Created by apple on 2018/12/1.
//  Copyright © 2018年 NJU.czf. All rights reserved.
//

import UIKit

class DelViewController: UIViewController {

    @IBOutlet weak var SubRetDel: UIButton!
    @IBOutlet weak var SubClrDel: UIButton!
    
    //when click the Ret.
    @IBAction func SubReturnM(_ sender: Any) {
    }
    
    //when click the Clr.
    @IBAction func SubClearText(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
