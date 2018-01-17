//
//  Photo.swift
//  CollectionViewExample
//
//  Created by Stephane Darcy SIMO MBA on 16/01/2018.
//  Copyright © 2018 Test. All rights reserved.
//

import Foundation
import UIKit

struct MData {
    var section: String?
    var photos: [Photo]
    
    static func fetchPhotos() -> [MData] {
        var datas = [MData]()
        
        let data1 = MData(section: "Léonard de Vinci", photos: [
            Photo(createdBy: "Stephane Mba", description: "4 NOVEMBRE à SEOUL, SOUTH KOREA", image: #imageLiteral(resourceName: "de_vinci1"), numberOfLikes: 23, numberOfComments: 72, numberOfShares: 24),
            Photo(createdBy: "Stephane Mba", description: "4 NOVEMBRE à SEOUL, SOUTH KOREA", image: #imageLiteral(resourceName: "de_vinci2"), numberOfLikes: 34, numberOfComments: 7, numberOfShares: 12),
            Photo(createdBy: "Stephane Mba", description: "4 NOVEMBRE à SEOUL, SOUTH KOREA", image: #imageLiteral(resourceName: "de_vinci3"), numberOfLikes: 2, numberOfComments: 43, numberOfShares: 6),
            Photo(createdBy: "Stephane Mba", description: "4 NOVEMBRE à SEOUL, SOUTH KOREA", image: #imageLiteral(resourceName: "de_vinci4"), numberOfLikes: 507, numberOfComments: 32, numberOfShares: 10),
            Photo(createdBy: "Stephane Mba", description: "4 NOVEMBRE à SEOUL, SOUTH KOREA", image: #imageLiteral(resourceName: "de_vinci5"), numberOfLikes: 54, numberOfComments: 72, numberOfShares: 453),
            Photo(createdBy: "Stephane Mba", description: "4 NOVEMBRE à SEOUL, SOUTH KOREA", image: #imageLiteral(resourceName: "de_vinci7"), numberOfLikes: 43, numberOfComments: 12, numberOfShares: 65),
            Photo(createdBy: "Stephane Mba", description: "4 NOVEMBRE à SEOUL, SOUTH KOREA", image: #imageLiteral(resourceName: "de_vinci8"), numberOfLikes: 27, numberOfComments: 23, numberOfShares: 43)
            ])
        let data2 = MData(section: "Keimyung University", photos: [
            Photo(createdBy: "Stephane Mba", description: "14 DECEMBRE à DEAGU, SOUTH KOREA", image: #imageLiteral(resourceName: "kmu1"), numberOfLikes: 21, numberOfComments: 45, numberOfShares: 11),
            Photo(createdBy: "Stephane Mba", description: "14 DECEMBRE à DEAGU, SOUTH KOREA", image: #imageLiteral(resourceName: "kmu2"), numberOfLikes: 62, numberOfComments: 83, numberOfShares: 27),
            Photo(createdBy: "Stephane Mba", description: "14 DECEMBRE à DEAGU, SOUTH KOREA", image: #imageLiteral(resourceName: "kmu3"), numberOfLikes: 76, numberOfComments: 90, numberOfShares: 510),
            Photo(createdBy: "Stephane Mba", description: "14 DECEMBRE à DEAGU, SOUTH KOREA", image: #imageLiteral(resourceName: "kmu4"), numberOfLikes: 482, numberOfComments: 51, numberOfShares: 693),
            Photo(createdBy: "Stephane Mba", description: "14 DECEMBRE à DEAGU, SOUTH KOREA", image: #imageLiteral(resourceName: "kmu5"), numberOfLikes: 42, numberOfComments: 45, numberOfShares: 18)
            ])
        let data3 = MData(section: "Sejon Palace", photos: [
            Photo(createdBy: "Stephane Mba", description: "18 OCTOBRE à SEOUL, SOUTH KOREA", image: #imageLiteral(resourceName: "sejon1"), numberOfLikes: 56, numberOfComments: 204, numberOfShares: 67),
            Photo(createdBy: "Stephane Mba", description: "18 OCTOBRE à SEOUL, SOUTH KOREA", image: #imageLiteral(resourceName: "sejon2"), numberOfLikes: 38, numberOfComments: 58, numberOfShares: 83),
            Photo(createdBy: "Stephane Mba", description: "18 OCTOBRE à SEOUL, SOUTH KOREA", image: #imageLiteral(resourceName: "sejon3"), numberOfLikes: 48, numberOfComments: 22, numberOfShares: 25),
            Photo(createdBy: "Stephane Mba", description: "18 OCTOBRE à SEOUL, SOUTH KOREA", image: #imageLiteral(resourceName: "sejon4"), numberOfLikes: 832, numberOfComments: 46, numberOfShares: 63),
            Photo(createdBy: "Stephane Mba", description: "18 OCTOBRE à SEOUL, SOUTH KOREA", image: #imageLiteral(resourceName: "sejon5"), numberOfLikes: 56, numberOfComments: 27, numberOfShares: 26),
            Photo(createdBy: "Stephane Mba", description: "18 OCTOBRE à SEOUL, SOUTH KOREA", image: #imageLiteral(resourceName: "sejon6"), numberOfLikes: 581, numberOfComments: 55, numberOfShares: 53)
            ])
        
        let data4 = MData(section: "War Museum", photos: [
            Photo(createdBy: "Stephane Mba", description: "5 NOVEMBRE à SEOUL, SOUTH KOREA", image: #imageLiteral(resourceName: "war_museum1"), numberOfLikes: 34, numberOfComments: 34, numberOfShares: 43),
            Photo(createdBy: "Stephane Mba", description: "5 NOVEMBRE à SEOUL, SOUTH KOREA", image: #imageLiteral(resourceName: "war_museum2"), numberOfLikes: 17, numberOfComments: 16, numberOfShares: 44),
            Photo(createdBy: "Stephane Mba", description: "5 NOVEMBRE à SEOUL, SOUTH KOREA", image: #imageLiteral(resourceName: "war_museum3"), numberOfLikes: 45, numberOfComments: 85, numberOfShares: 87),
            Photo(createdBy: "Stephane Mba", description: "5 NOVEMBRE à SEOUL, SOUTH KOREA", image: #imageLiteral(resourceName: "war_museum4"), numberOfLikes: 56, numberOfComments: 36, numberOfShares: 63)
            ])
        
        datas.append(data1)
        datas.append(data2)
        datas.append(data3)
        datas.append(data4)
        
        return datas
    }
}

struct Photo {
    var createdBy: String?
    var description: String?
    var image: UIImage?
    var numberOfLikes: Int?
    var numberOfComments: Int?
    var numberOfShares: Int?
}
