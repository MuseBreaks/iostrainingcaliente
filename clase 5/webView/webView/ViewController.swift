//
//  ViewController.swift
//  webView
//
//  Created by abe sanchez on 8/18/17.
//  Copyright © 2017 abesanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtWord: UITextField!
    @IBOutlet weak var webViewC: UIWebView!
    let urlApiWiki = "https://es.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles="
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func searchWord(_ sender: Any) {
        guard let palabra = txtWord.text else{
            return
        }
        let busqueda = urlApiWiki + palabra
        guard let url = URL(string: busqueda.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)!) else{
            print("Url invalida")
            return
        }
        
        let tarea = URLSession.shared.dataTask(with: url) {
            (datos, respuesta, error) in
            if error != nil{
                print(error!)
            } else {
                do {
                    let json = try JSONSerialization.jsonObject(with: datos!, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String: Any]
                    
                    let querySubjson = json["query"] as! [String: Any]
                    
                    let pageSubjson = querySubjson["pages"] as! [String: Any]
                    
                    let idSubJson = pageSubjson[(pageSubjson.first?.key)!] as! [String: Any]
                    
                    let extractStringHtml = idSubJson["extract"] as! String
                    
                    DispatchQueue.main.sync {
                        self.webViewC.loadHTMLString(extractStringHtml, baseURL: nil)
                    }
                }
                catch {
                    print("El procesamiento del JSON tuvo un error")
                }
            }
        }
        
        tarea.resume()
    }
}
