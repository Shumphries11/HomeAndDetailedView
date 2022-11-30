import UIKit

class LatestCell: UICollectionViewCell {
    
    static let reuseIdentifier = String(describing: LatestCell.self)
    static let nib = UINib(nibName: String(describing: LatestCell.self), bundle: nil)
    
    @IBOutlet weak var latestCell1: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
