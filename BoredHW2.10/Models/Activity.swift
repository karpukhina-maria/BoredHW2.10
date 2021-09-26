//
//  Activity.swift
//  BoredHW2.10
//
//  Created by Mary Jane on 26.09.2021.
//

struct Activity: Decodable {
    let activity: String?
    let participants: Int?
    var description: String? {
        """
        Try this:
        \(self.activity ?? "")
        Number of participants: \(self.participants ?? 0)
        """
    }
}
