import UIKit

class BViewController: UIViewController {
  
  weak var navigationCoordinatorA: NavigationControllerCoordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "B View Controller"
    
    view.backgroundColor = .blue
    
    navigationItem.rightBarButtonItem = UIBarButtonItem.init(
      title: "Next",
      style: .plain,
      target: self,
      action: #selector(goNext)
    )
  }
  
  @objc func goNext(_ sender: Any) {
    let cvc = CViewController()
    cvc.navigationCoordinatorA = navigationCoordinatorA
    cvc.navigationCoordinatorB = self
    navigationController?.pushViewController(cvc, animated: true)
  }
  
}

extension BViewController: NavigationControllerCoordinator {
  func pop() {
    navigationController?.popToViewController(self, animated: true)
  }
}
