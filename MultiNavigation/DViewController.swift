import UIKit

class DViewController: UIViewController {
  
  weak var navigationCoordinatorA: NavigationControllerCoordinator?
  weak var navigationCoordinatorB: NavigationControllerCoordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "D View Controller"
    
    view.backgroundColor = .yellow
    
    let gotoABtn = UIButton.init(type: .system)
    gotoABtn.setTitle("Go to A", for: .normal)
    gotoABtn.addTarget(self, action: #selector(backToA), for: .touchUpInside)
    
    let gotoBBtn = UIButton.init(type: .system)
    gotoBBtn.addTarget(self, action: #selector(backToB), for: .touchUpInside)
    gotoBBtn.setTitle("Go to B", for: .normal)
    
    let stackView = UIStackView.init(arrangedSubviews: [gotoABtn, gotoBBtn])
    stackView.axis = .vertical
    stackView.spacing = 10
    stackView.frame = CGRect(x: 0, y: 60, width: UIScreen.main.bounds.width, height: 150)
    view.addSubview(stackView)
  }
  
  @objc func backToA(_ sender: Any) {
    navigationCoordinatorA?.pop()
  }
  
  @objc func backToB(_ sender: Any) {
    navigationCoordinatorB?.pop()
  }
}

