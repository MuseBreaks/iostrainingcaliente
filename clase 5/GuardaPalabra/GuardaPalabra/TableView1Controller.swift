//
//  TableView1Controller.swift
//  GuardaPalabra
//
//  Created by abe sanchez on 8/17/17.
//  Copyright © 2017 abesanchez. All rights reserved.
//

import UIKit
import CoreData

class TableView1Controller: UITableViewController {
    var wordsList:[NSManagedObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let manageContext = appDelegate!.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Listado")
        
        do {
            wordsList = try manageContext.fetch(fetchRequest)
        } catch {
            print("No pude recuperar los datos")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wordsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        
        let wordList = wordsList[indexPath.row]
        cell.textLabel?.text = wordList.value(forKey: "palabra") as? String
        
        return cell
    }
    @IBAction func saveWord(_ sender: Any) {
        let alerta = UIAlertController(title: "New Word", message: "Add new word", preferredStyle: .alert)
        
        let guardar = UIAlertAction(title: "Agregar", style: .default, handler: { (action:UIAlertAction) -> Void in
            let textField = alerta.textFields!.first
            self.saveW(palabra: textField!.text!)
            self.tableView.reloadData()
        })
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .default)
        {(action:UIAlertAction) -> Void in}
        
        alerta.addTextField(configurationHandler: {(textField:UITextField) -> Void in})
        
        alerta.addAction(guardar)
        alerta.addAction(cancelar)
        
        present(alerta, animated: true, completion: nil)
    }
    
    func saveW(palabra: String) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let managedContext = appDelegate!.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Listado", in: managedContext)
        let manageObject = NSManagedObject(entity: entity!, insertInto: managedContext)
        
        manageObject.setValue(palabra, forKeyPath: "palabra")
        
        do {
            try managedContext.save()
            wordsList.append(manageObject)
        } catch {
            print("No se pudo guardar")
        }
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

}
