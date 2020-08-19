//
//  EPCalendarHeaderView.swift
//  EPCalendar
//
//  Created by Prabaharan Elangovan on 09/11/15.
//  Copyright © 2015 Prabaharan Elangovan. All rights reserved.
//

import UIKit

class EPCalendarHeaderView: UICollectionReusableView {
    @IBOutlet var lblFirst: UILabel!
    @IBOutlet var lblSecond: UILabel!
    @IBOutlet var lblThird: UILabel!
    @IBOutlet var lblFourth: UILabel!
    @IBOutlet var lblFifth: UILabel!
    @IBOutlet var lblSixth: UILabel!
    @IBOutlet var lblSeventh: UILabel!
    @IBOutlet var lblTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

        let calendar = Calendar.current
        let weeksDayList = calendar.shortWeekdaySymbols

        if Calendar.current.firstWeekday == 2 {
            lblFirst.text = weeksDayList[1]
            lblSecond.text = weeksDayList[2]
            lblThird.text = weeksDayList[3]
            lblFourth.text = weeksDayList[4]
            lblFifth.text = weeksDayList[5]
            lblSixth.text = weeksDayList[6]
            lblSeventh.text = weeksDayList[0]
        } else {
            lblFirst.text = weeksDayList[0]
            lblSecond.text = weeksDayList[1]
            lblThird.text = weeksDayList[2]
            lblFourth.text = weeksDayList[3]
            lblFifth.text = weeksDayList[4]
            lblSixth.text = weeksDayList[5]
            lblSeventh.text = weeksDayList[6]
        }
    }

    func updateWeekendLabelColor(_ color: UIColor) {
        if Calendar.current.firstWeekday == 2 {
            lblSixth.textColor = color
            lblSeventh.textColor = color
        } else {
            lblFirst.textColor = color
            lblSeventh.textColor = color
        }
    }

    func updateWeekdaysLabelColor(_ color: UIColor) {
        if Calendar.current.firstWeekday == 2 {
            lblFirst.textColor = color
            lblSecond.textColor = color
            lblThird.textColor = color
            lblFourth.textColor = color
            lblFifth.textColor = color
        } else {
            lblSecond.textColor = color
            lblThird.textColor = color
            lblFourth.textColor = color
            lblFifth.textColor = color
            lblSixth.textColor = color
        }
    }
}
