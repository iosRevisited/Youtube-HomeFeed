//
//  ViewController.swift
//  Youtube HomeFeed
//
//  Created by Sai Sandeep on 31/07/17.
//  Copyright © 2017 Sai Sandeep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var dataArray = [DataModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dataModel1 = DataModel.init(originalImage: "Image-1", thumbnailImage: "Thumbnail Image -1", titleStr: "The Avengers")
        let dataModel2 = DataModel.init(originalImage: "Image-2", thumbnailImage: "Thumbnail Image -2", titleStr: "Iron Man 3")
        let dataModel3 = DataModel.init(originalImage: "Image-3", thumbnailImage: "Thumbnail Image -3", titleStr: "Thor")
        let dataModel4 = DataModel.init(originalImage: "Image-4", thumbnailImage: "Thumbnail Image -4", titleStr: "The Incredible Hulk")
        let dataModel5 = DataModel.init(originalImage: "Image-5", thumbnailImage: "Thumbnail Image -5", titleStr: "Spider Man 3")
        
        dataArray = [dataModel1 ,dataModel2, dataModel3, dataModel4, dataModel5]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell
         let data = dataArray[indexPath.row]
        cell.contentImageView.image = UIImage(named: data.originalImageName!)
        cell.contentImageView.contentMode = .scaleAspectFill
        cell.contentImageView.clipsToBounds = true
        cell.channelThumbnailView.image = UIImage(named: data.thumbnailImageName!)
        cell.channelThumbnailView.contentMode = .scaleAspectFill
        cell.channelThumbnailView.clipsToBounds = true
        cell.channelThumbnailView.layer.cornerRadius = 25
        cell.titleLabel.text = data.title!
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}
