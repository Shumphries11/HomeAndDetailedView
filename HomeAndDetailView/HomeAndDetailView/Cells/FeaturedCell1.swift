import UIKit

class FeaturedCell1: UICollectionViewCell {
    
    static let reuseIdentifier = String(describing: FeaturedCell1.self)
    static let nib = UINib(nibName: String(describing: FeaturedCell1.self), bundle: nil)
    

    @IBOutlet weak var featured1: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
