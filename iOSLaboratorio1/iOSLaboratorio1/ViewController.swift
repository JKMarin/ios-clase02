//
//  ViewController.swift
//  iOSLaboratorio1
//
//  Created by Carlos Mendez on 4/7/18.
//  Copyright © 2018 Carlos Mendez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgDado1: UIImageView!
    @IBOutlet weak var imgDado2: UIImageView!
    
    var indexDado1 : Int = 0
    var indexDado2 : Int = 0
    
    let arrDados = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnTirarDados(_ sender: UIButton) {
        
        indexDado1 = Int(arc4random_uniform(6))
        indexDado2 = Int(arc4random_uniform(6))
        
        imgDado1.image = UIImage(named: arrDados[indexDado1])
        imgDado2.image = UIImage(named: arrDados[indexDado2])
    }
    
}

