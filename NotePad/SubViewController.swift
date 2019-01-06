//
//  SubViewController.swift
//  NotePad
//
//  Created by apple on 2018/12/1.
//  Copyright © 2018年 NJU.czf. All rights reserved.
//

import UIKit
import os.log

class SubViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    //MARK: Properties
    @IBOutlet weak var SubReturnMain: UIButton!
    @IBOutlet weak var SubSaveText: UIButton!
    @IBOutlet weak var SubClockText: UIButton!
    @IBOutlet weak var SubText: UITextView!
    
    /*
     This value is either passed by 'NotePerTableViewController' in or constructed as part of adding a new note.
    */
    var subnote: DataSubText?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        // Handle the text field's user input through delegate callbacks.
        self.SubText.delegate = self
        
    }
    
    // MARK: UITextViewDelegate
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        // Hide the keyboard.
        textView.resignFirstResponder()
        return true
    }
    
    func textViewDidEndEditing(_ textView: UITextView){
        
        
        
    }
    
    // MARK: Actions
    
    //when click the Ret.
    @IBAction func SubReturnM(_ sender: Any) {
    }
   
    //when click the Sav.
    @IBAction func SubSaveText(_ sender: UIButton) {
    }
    
    
    //when click the Clo.
    @IBAction func SubClockText(_ sender: Any) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        super.prepare(for: segue, sender: sender)
        
        //Configure the destination view controller only when the save button is pressed.
        guard let button = sender as? UIBarButtonItem, button === SubSaveText else {
            os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return
        }
        
        let notes = SubText.text ?? ""
        
        // Set the note to the passed to NotePerTableViewController after the unwind segue.
        subnote = DataSubText(notes: notes)
        
    }

}
