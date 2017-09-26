//
//  ViewController.swift
//  pizzaApp
//
//  Created by Mac on 9/24/17.
//  Copyright © 2017 David Gedeon. All rights reserved.
//

import UIKit

class FavoriteViewController:UITableViewController {
     var y:[String] = []
    deinit{self.navigationController?.setToolbarHidden(true, animated: true)}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Parsing.parseData(){//This is where completion is handled
            [weak self] (Array, error) in
            guard error == nil else{return}
            guard let x = Array else{return}
            DispatchQueue.main.async{
                self?.y = x
                print(self?.y)
                self?.tableView.reloadData()
            }
            
            
        }
        
        self.navigationController?.setToolbarHidden(false, animated: true)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return y.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        guard let cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell") else {
            fatalError("No cell created or bad identifier")
        }
        
        cell.textLabel?.text = y[indexPath.row]
        //cell.backgroundColor = .black
        //cell.textLabel?.textColor = .yellow
        return cell
    }
    
    @IBAction func load50(_ sender: UIBarButtonItem) {
        Parsing.parseDataTop50(){[weak self] (Array, error) in
            guard error == nil else{return}
            guard let x = Array else{return}
            DispatchQueue.main.async{
                self?.y = x
                print(self?.y)
                self?.tableView.reloadData()
            }
            
        }
    }
    
    @IBAction func load100(_ sender: UIBarButtonItem) {
        Parsing.parseDataTop100(){[weak self] (Array, error) in
            guard error == nil else{return}
            guard let x = Array else{return}
            DispatchQueue.main.async{
                self?.y = x
                print(self?.y)
                self?.tableView.reloadData()
            }
            
        }
    }
    
    @IBAction func load20(_ sender: UIBarButtonItem) {
        Parsing.parseData(){[weak self] (Array, error) in
            guard error == nil else{return}
            guard let x = Array else{return}
            DispatchQueue.main.async{
                self?.y = x
                print(self?.y)
                self?.tableView.reloadData()
            }
            
        }
    }



}

