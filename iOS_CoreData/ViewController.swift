//
//  ViewController.swift
//  iOS_CoreData
//
//  Created by MacStudent on 2020-01-16.
//  Copyright © 2020 Karan. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // First we create an Instance of app delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        /*
         second we need the context
         this context is the manager like location manager ,audio manage etc
         */
        let context = appDelegate.persistentContainer.viewContext
        
        //3rd step write into context

//        let newUser = NSEntityDescription.insertNewObject(forEntityName: "User", into: context)
//
//        newUser.setValue("sandy", forKey: "name")
//        newUser.setValue(787353568, forKey: "phone")
//        newUser.setValue("sandy.ca@gmail.com", forKey: "email")
//        newUser.setValue(22, forKey: "age")
//
//       //  4th step - save context
//        do{
//           try context.save()
//            print(newUser ," is saved")
//        }catch{
//            print(error)
//        }
        
        //fetch data and load it
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        
        //request to find all emails
       // request.predicate = NSPredicate(format: "email contains %@", "com")
//         request.predicate = NSPredicate(format: "name=%@", "Karan")
        request.returnsObjectsAsFaults = false
        
        // Find Our Data
        do{
            let result = try context.fetch(request)
            if result.count > 0{
                for results in result as! [NSManagedObject]{
//                    if let name = results.value(forKey: "name"){
//                    print(name)
//                    }
                /*    if let email = results.value(forKey: "email")
                    {
                        print(email)
                        // update email address to "mo@example.ca"
                        let email = email as! String
                        //update core data
//                        results.setValue(String(email.dropLast(3))+"ca", forKey: "email")
//                         do{
//                                   try context.save()
//                                    print(results ," is saved")
//                                }catch{
//                                    print(error)
//                                }
                        
                    } */
                    
                    if let name = results.value(forKey: "name") {
//                        context.delete(results)
//                        do{
//                            try context.save()
//                            print(results,"is saved")
//                            }catch{
//                            print(error)
//                            }
                        print(name)
                    }
                }
            }
        }
        catch{
            print(error)
        }
    }
    


}

