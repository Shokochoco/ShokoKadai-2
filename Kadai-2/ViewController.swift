import UIKit
class ViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var calculateSegment: UISegmentedControl!
    @IBOutlet private weak var calculateBtn: UIButton!
    @IBOutlet private weak var totalLabel: UILabel!
    var calType = 0.0
    @IBAction private func buttonTapped(_ sender: Any) {
        let num1 = Double(textField1.text ?? "") ?? 0
        let num2 = Double(textField2.text ?? "") ?? 0
        switch calculateSegment.selectedSegmentIndex {
        case 0:
            calType = num1 + num2
            totalLabel.text = String(calType)
        case 1:
            calType = num1 - num2
            totalLabel.text = String(calType)
        case 2:
            calType = num1 * num2
            totalLabel.text = String(calType)
        case 3:
            if num2 == 0 {
                totalLabel.text = "割る数は0以外でお願いします"
            } else {
                calType = num1 / num2
                totalLabel.text = String(calType)
            }
        default:
            calType = 0.0
        }
    }
}
