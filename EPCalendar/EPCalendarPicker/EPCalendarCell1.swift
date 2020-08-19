//
//  EPCalendarCell1.swift
//  EPCalendar
//
//  Created by Prabaharan Elangovan on 09/11/15.
//  Copyright © 2015 Prabaharan Elangovan. All rights reserved.
//

import UIKit

class EPCalendarCell1: UICollectionViewCell {
    var currentDate: Date!
    var isCellSelectable: Bool?

    @IBOutlet var lblDay: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func selectedForLabelColor(_ color: UIColor) {
        lblDay.layer.cornerRadius = lblDay.frame.size.width / 2
        lblDay.layer.backgroundColor = color.cgColor
        lblDay.textColor = UIColor.white
    }

    func deSelectedForLabelColor(_ color: UIColor) {
        lblDay.layer.backgroundColor = UIColor.clear.cgColor
        lblDay.textColor = color
    }

    func setTodayCellColor(_ backgroundColor: UIColor) {
        lblDay.layer.cornerRadius = lblDay.frame.size.width / 2
        lblDay.layer.backgroundColor = backgroundColor.cgColor
        lblDay.textColor = UIColor.white
    }
}
