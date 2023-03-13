//
//  Task.swift
//  Photo_scavenger
//
//  Created by Donald Echefu on 03/12/23.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Pickup Laundry from laundromart at 6pm 🧺",
                 description: "Make sure they are well folded and ironed. Remind the receptionist to change your schedule"),
            Task(title: "Exercise for 30 minutes 🏋🏾",
                 description: "Engage in physical activity for half an hour, such as running, weightlifting, or yoga."),
            Task(title: "Write a blog post 📝",
                 description: "Create a 500-word article on a topic of your choice and publish it to your blog")
        ]
    }
}
