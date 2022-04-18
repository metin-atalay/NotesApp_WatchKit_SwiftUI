//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Metin Atalay on 18.04.2022.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
