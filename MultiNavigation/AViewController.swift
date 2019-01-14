import UIKit

class AViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "A View Controller"
    
    view.backgroundColor = .red
    
    navigationItem.rightBarButtonItem = UIBarButtonItem.init(
      title: "Next",
      style: .plain,
      target: self,
      action: #selector(goNext)
    )
  }
  
  @objc func goNext(_ sender: Any) {
    let bvc = BViewController()
    bvc.navigationCoordinatorA = self
    navigationController?.pushViewController(bvc, animated: true)
  }
}

extension AViewController: NavigationControllerCoordinator {
  func pop() {
    navigationController?.popToViewController(self, animated: true)
  }
}
