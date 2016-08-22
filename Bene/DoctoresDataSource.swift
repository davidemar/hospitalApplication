//
//  Doctores.swift
//  Bene
//
//  Created by David Mar Alvarez on 6/24/16.
//  Copyright © 2016 davidmar. All rights reserved.
//

import Foundation

struct Doctor {
    let name: String
    let especialidad: String
}

class DoctoresDataSource {

    /**
     Asynchronously returns the list of doctors from our backing store.

     - parameter completionBlock
     */
    func fetchDoctores(completionBlock: [Doctor] -> ()) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0)) {
            let premadeDoctors = [
                Doctor(name: "juanito", especialidad: "Cardiología"),
                Doctor(name: "pedrito", especialidad: "Cardiología"),
                Doctor(name: "panchito", especialidad: "Cardiología"),
                Doctor(name: "lolita", especialidad: "Otorrinolaringología"),
                Doctor(name: "mariana", especialidad: "Oncología"),
                Doctor(name: "Josefa", especialidad: "Oncología"),
                Doctor(name: "raquel", especialidad: "Repostería"),
                Doctor(name: "jorge", especialidad: "Repostería"),
                Doctor(name: "carlitos", especialidad: "Repostería"),
                Doctor(name: "mario", especialidad: "Repostería")
            ]

            completionBlock(premadeDoctors)
        }
    }
    
}
