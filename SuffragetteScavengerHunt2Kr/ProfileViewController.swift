//
// Please report any problems with this app template to contact@estimote.com
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var suffragetteNameLabel: UILabel!
    @IBOutlet weak var suffragetteDescription: UITextView!
    @IBOutlet weak var suffragetteImageView: UIImageView!
    @IBOutlet weak var youFoundLabel: UILabel!
    
    @IBAction func closeProfile(_ sender: Any) {
        performSegue(withIdentifier: "BackToMainPageSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if newSuffragette {
            youFoundLabel.isHidden = false
        } else {
            youFoundLabel.isHidden = true
        }
        suffragetteNameLabel.text = suffragetteData["name"]!
        suffragetteDescription.text = suffragetteData["description"]!
        suffragetteImageView.image = UIImage(named: suffragetteData["image"]!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
