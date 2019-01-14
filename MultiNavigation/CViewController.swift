import UIKit

class CViewController: UIViewController {
  
  weak var navigationCoordinatorA: NavigationControllerCoordinator?
  weak var navigationCoordinatorB: NavigationControllerCoordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "C View Controller"
    
    view.backgroundColor = .green
    
    navigationItem.rightBarButtonItem = UIBarButtonItem.init(
      title: "Next",
      style: .plain,
      target: self,
      action: #selector(goNext)
    )
  }
  
  @objc func goNext(_ sender: Any) {
    let dvc = DViewController()
    dvc.navigationCoordinatorA = navigationCoordinatorA
    dvc.navigationCoordinatorB = navigationCoordinatorB
    navigationController?.pushViewController(dvc, animated: true)
  }
}

