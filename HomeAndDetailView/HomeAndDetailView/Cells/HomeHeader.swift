
import UIKit

class HomeHeader: UICollectionViewCell {

    @IBOutlet weak var homeHeader: UILabel!
    
    static let reuseIdentifier = String(describing: HomeHeader.self)
    static let nib = UINib(nibName: String(describing: HomeHeader.self), bundle: nil)
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

}
