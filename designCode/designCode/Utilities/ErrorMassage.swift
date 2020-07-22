//
//  ErrorMassage.swift
//  designCode
//
//  Created by islam magdy on 7/20/20.
//  Copyright © 2020 islam magdy. All rights reserved.
//

import Foundation
enum GFError : String , Error {
    case invalidUsername = "this username created an invalid request . please try again."
    case unableToComplete = "Unable to complete your request . please check your internet connection"
    case invalidResponse = "Invalid response from the server .please try again "
    case invalidDate =  " the data received from the server was invalid .please try again "
}
