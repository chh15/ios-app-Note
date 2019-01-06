//
//  NotePerTableViewController.swift
//  NotePad
//
//  Created by apple on 2018/12/2.
//  Copyright © 2018年 NJU.czf. All rights reserved.
//

import UIKit

class NotePerTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource/*, UITableViewController*/ {
    
    @IBOutlet weak var AddSubWind: UIButton!
    @IBOutlet weak var DelSubWind: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: Properties
    
    var note = [DataSubText]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.tableView.register(NotePerTableViewCell.self, forCellReuseIdentifier: "NotePerTableViewCell")
        //storyboard?.instantiateViewController(withIdentifier: "")
        self.tableView.delegate = self
        //self.tableView.dataSource = self

        // Load the sample data.
        loadSampleNote()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    /*override*/ func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        //return 0
        return 1
    }

    /*override*/ func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //return 0
        //return note.count
        return self.note.count
    }

    
    /*override*/ func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "NoteTableViewCell"
        
        //let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        //
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? NotePerTableViewCell else {
            fatalError("The dequeued cell is not an instance of NotePerTableViewCell.")
        }

        let note_row = note[indexPath.row]
        cell.PerNote.text = note_row.notes
        
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: Private Methods
    
    //MARK: Actions
    
    @IBAction func unwindToNoteList(sender: UIStoryboardSegue){
        if let sourceViewController = sender.source as? SubViewController, let notes = sourceViewController.subnote{
            
            // Add a new note.
            let newIndexPath = IndexPath(row: note.count, section: 0)
            
            note.append(notes)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
            
        }
    }
    
    private func loadSampleNote(){
        
        guard let note1 = DataSubText(notes: "First note") else {
            fatalError("Unable to instantiate note1")
        }
        
        note += [note1]
        
    }
    
}
