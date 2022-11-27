import UIKit

class DetailHeader: UICollectionViewCell {
    
    static let reuseIdentifier = String(describing: DetailHeader.self)
    static let nib = UINib(nibName: String(describing: DetailHeader.self), bundle: nil)

    @IBOutlet weak var detailHeader: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
