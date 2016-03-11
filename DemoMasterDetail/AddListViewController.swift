//
//  AddListViewController.swift
//  DemoMasterDetail
//
//  Created by Phil Buck on 11/03/2016.
//  Copyright © 2016 Phil Buck. All rights reserved.
//

import UIKit
import CoreData

class AddListViewController: UIViewController {
    @IBOutlet weak var listNameTextField: UITextField!
    
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    var currentFolder : Folder?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func Done(sender: AnyObject){
        
        // Calling a function to save the folder to core data
        saveList()
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    // Function that saves
    
    func saveList(){
        let entityDescription = NSEntityDescription.entityForName("List", inManagedObjectContext: managedObjectContext)
        let item = List(entity: entityDescription!, insertIntoManagedObjectContext: managedObjectContext)
        
        item.itemListName = listNameTextField.text!
        item.folder = currentFolder
        
        // Passed Value of the color picker table view below
        
        
        do {
            try managedObjectContext.save()
            print("Successfully Saved \n")
        } catch _ {
        }
    }
}

