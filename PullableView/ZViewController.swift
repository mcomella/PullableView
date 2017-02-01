//
//  ViewController.swift
//  PullableView
//
//  Created by Michael Comella on 2/1/17.
//
//

import UIKit

class ZViewController: UIViewController {

    var pullDownView: PullableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let xOffset: CGFloat = 0

        pullDownView = StyledPullableView(frame: CGRect(x: xOffset, y: 0, width: 320, height: 460))
        pullDownView.openedCenter = CGPoint(x: 160 + xOffset, y: 0);
        pullDownView.closedCenter = CGPoint(x: 160 + xOffset, y: -200);
        pullDownView.center = pullDownView.closedCenter;

        view.addSubview(pullDownView)

        setupConstraints()
    }

    private func setupConstraints() {
        let label = UILabel()
        label.text = "lol, what am I?"
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false

        pullDownView.addSubview(label)

        let constraints = [label.topAnchor.constraint(equalTo: pullDownView.centerYAnchor),
                           label.leadingAnchor.constraint(equalTo: pullDownView.leadingAnchor),
                           label.trailingAnchor.constraint(equalTo: pullDownView.trailingAnchor),
                           label.bottomAnchor.constraint(equalTo: pullDownView.bottomAnchor)]
        NSLayoutConstraint.activate(constraints)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
