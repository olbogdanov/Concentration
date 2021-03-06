//
//  ConcentrationThemeChooserViewController.swift
//  Concentration
//
//  Created by bogdanov on 28.03.21.
//

import UIKit

class ConcentrationThemeChooserViewController: VCLLoggingViewController {

    let themes = [
        "Sports": "πΎπ₯ππ₯ππΏπ€ΌββοΈπ€Ύπ½ππ½ππΏ",
        "Animals": "π€πποΈπ¦π¦π¦©π¦π¦",
        "Faces": "πΉπ€π½π€‘πΉπ₯±π₯Ίπ»πΎπΊ"
    ]
    
    override var vclLoggingName: String {
        return "ThemeChooser"
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Choose Theme" {
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                if let cvc = segue.destination as? ConcentrationViewController {
                    cvc.theme = theme
                }
            }
        }
    }
}
