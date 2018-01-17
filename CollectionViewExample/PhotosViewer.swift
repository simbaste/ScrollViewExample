//
//  PhotosViewer.swift
//  CollectionViewExample
//
//  Created by Stephane Darcy SIMO MBA on 16/01/2018.
//  Copyright © 2018 Test. All rights reserved.
//

import UIKit

enum DirectionScroll {
    case DirectionLeft
    case DirectionRight
    case none
}

class PhotosViewer: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var shareLabel: UILabel!
    @IBOutlet weak var sectionLabel: UILabel!
    
    var datas = [MData]()
    var indexPath = IndexPath(row: 0, section: 0)
    var section: Int = 0
    
    private var direction: DirectionScroll = .none
    private var lastContentOffset: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        section = indexPath.section
        scrollView.delegate = self
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        
        view.addGestureRecognizer(tap)
        
        view.isUserInteractionEnabled = true
        
        scrollView.frame = view.frame
        scrollView.contentSize.width = view.frame.width * CGFloat(datas[section].photos.count)

        self.loadPhotos()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    fileprivate func loadPhotos() {
        for i in 0..<datas[section].photos.count {
            
            let imageView: UIImageView = {
                let imageV = UIImageView(image: datas[section].photos[i].image)
                
                return imageV
            }()
            
            imageView.contentMode = .scaleAspectFit
            
            let xPos = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPos, y: 0, width: view.frame.width, height: view.frame.height)
            
            scrollView.addSubview(imageView)
            
        }
        let xPos = self.view.frame.width * CGFloat(indexPath.row)
        scrollView.contentOffset = CGPoint(x: xPos, y: 0)
        lastContentOffset = scrollView.contentOffset.x
        updateText()
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        let row: Int = indexPath.row
        
        let zoomVC = self.storyboard?.instantiateViewController(withIdentifier: "ZoomVC") as! ZoomViewController
        self.addChildViewController(zoomVC)
        zoomVC.view.frame = view.frame
        
        zoomVC.imageView.image = datas[section].photos[row].image
        view.addSubview(zoomVC.view)
        zoomVC.didMove(toParentViewController: self)
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

extension PhotosViewer: UIScrollViewDelegate {
    
    func updateText() {
        let row = indexPath.row
        
        sectionLabel.text = datas[section].section
        userLabel.text = datas[section].photos[row].createdBy
        descriptionLabel.text = datas[section].photos[row].description
        likeLabel.text = (datas[section].photos[row].numberOfLikes?.description)! + " Likes"
        commentLabel.text = (datas[section].photos[row].numberOfComments?.description)! + " Comments"
        shareLabel.text = (datas[section].photos[row].numberOfShares?.description)! + " Shares"
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        direction = (lastContentOffset > scrollView.contentOffset.x) ? .DirectionRight : .DirectionLeft
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let distance = fabs(Double(CGFloat(lastContentOffset - scrollView.contentOffset.x)))
        
        if distance > 0.0 {
            if direction == .DirectionLeft {
                indexPath.row += 1
                updateText()
            } else if direction == .DirectionRight {
                indexPath.row -= 1
                updateText()
            }
        }
        lastContentOffset = scrollView.contentOffset.x
    }
}
