import UIKit

class FeaturedHeaderCell: UICollectionViewCell {

    @IBOutlet weak var featuredHeader: UIView!
    
    static let reuseIdentifier = String(describing: FeaturedHeaderCell.self)
    static let nib = UINib(nibName: String(describing: FeaturedHeaderCell.self), bundle: nil)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
