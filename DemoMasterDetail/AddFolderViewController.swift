//
//  AddFolderViewController.swift
//  DemoMasterDetail
//
//  Created by Phil Buck on 11/03/2016.
//  Copyright © 2016 Phil Buck. All rights reserved.
//

import UIKit
import CoreData

class AddFolderViewController: UIViewController {
    @IBOutlet weak var folderNameTextField: UITextField!

    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func Done(sender: AnyObject){
        
        // Calling a function to save the folder to core data
        saveFolder()
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    // Function that saves
    
    func saveFolder(){
        let entityDescription = NSEntityDescription.entityForName("Folder", inManagedObjectContext: managedObjectContext)
        let item = Folder(entity: entityDescription!, insertIntoManagedObjectContext: managedObjectContext)
        
        item.name = folderNameTextField.text!
        
        
        // Passed Value of the color picker table view below
        
        
        do {
            try managedObjectContext.save()
            print("Successfully Saved \n")
        } catch _ {
        }
    }
}
