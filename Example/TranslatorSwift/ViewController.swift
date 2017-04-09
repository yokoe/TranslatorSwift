import UIKit
import TranslatorSwift

class ViewController: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!

    let translator = Translator(subscriptionKey: "YOUR_KEY")

    @IBAction func onTranslateButton(_ sender: Any) {
        translator.translate(input: inputTextField.text!, to: "ja") { (result) in
            switch result {
            case .success(let translation):
                self.outputLabel.text = translation
            case .failure(let error):
                self.outputLabel.text = error.debugDescription
            }
        }
    }
}

