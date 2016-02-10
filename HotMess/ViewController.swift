//
//  ViewController.swift
//  HotMess
//
//  Created by Jason Noble on 2/10/16.
//  Copyright © 2016 Jason Noble. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var displayLabel: UILabel!
  @IBOutlet weak var nameTextField: UITextField!

  @IBOutlet weak var redSlider: UISlider!
  @IBOutlet weak var greenSlider: UISlider!
  @IBOutlet weak var blueSlider: UISlider!

  @IBAction func sayButtonTouched(sender: UIButton) {
    // grab test from nameText Field
    // Set displayLabel to "Hello " ^

    if let name = nameTextField.text {
      displayLabel.text = "Hello \(name)"
    }
    nameTextField.resignFirstResponder()
  }

  @IBAction func sliderChanged(slider: UISlider) {
    setColor()
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    displayLabel.text = ""
    setColor()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func setColor() {
    view.backgroundColor = UIColor(
      red: CGFloat(redSlider.value),
      green: CGFloat(greenSlider.value),
      blue: CGFloat(blueSlider.value),
      alpha: 1.0
    )
  }
}

extension ViewController : UITextFieldDelegate {
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
}

