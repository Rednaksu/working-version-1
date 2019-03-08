//
//  gameMenuViewController.swift
//  testPlayerRealmAndChamelem
//
//  Created by skander lakhal on 3/1/19.
//  Copyright © 2019 REDRebelRiots. All rights reserved.
//

import UIKit
import ChameleonFramework

class gameMenuViewController: UIViewController {

    
    
    @IBOutlet weak var toPlayerLibrary: UIButton!
    
    @IBOutlet weak var startNewGame: UIButton!
    
    @IBOutlet weak var willDecideUseLater: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateAppTheme()
        buttonsFormatting()
        
        self.navigationController?.hidesNavigationBarHairline = true

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
        //MARK : Chameleon Methods
    
   
    
    
    var selectedColorScheme = ColorScheme.triadic
    
    let selectedColor = UIColor.flatGray()
    
    func updateAppTheme() {
        Chameleon.setGlobalThemeUsingPrimaryColor(selectedColor, with: .contrast)
        
        navigationController?.navigationBar.barTintColor = selectedColor
        
        let contrastingColor = UIColor(contrastingBlackOrWhiteColorOn:selectedColor, isFlat: true)
        
        navigationController?.navigationBar.titleTextAttributes =
            [.foregroundColor : contrastingColor as Any]
        
        Chameleon.setGlobalThemeUsingPrimaryColor(selectedColor, with: .contrast
        )
        
        view.backgroundColor = UIColor(gradientStyle: .topToBottom, withFrame: view.frame, andColors: [UIColor.flatGray(),UIColor.flatPlum()])
    }
    
    
    func buttonsFormatting(){
        
        toPlayerLibrary.layer.masksToBounds = true
        toPlayerLibrary.layer.cornerRadius = 4
        
        startNewGame.layer.masksToBounds = true
        startNewGame.layer.cornerRadius = 4
        
        willDecideUseLater.layer.masksToBounds = true
        willDecideUseLater.layer.cornerRadius = 4
        
        
    }
    
}
