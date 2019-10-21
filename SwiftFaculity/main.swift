//
//  main.swift
//  SwiftFaculity
//
//  Created by MacStudent on 2019-10-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")
do
{
    var f1: Faculity = try Faculity(faculityId: 11, faculityName: "Camy", salary: 900.00)
   // print(f1.faculityName)
    
    
}
catch FacultyError.InvalidEmployeeId(let faculityId)
{
    print("Invalid Faculity Id: \(faculityId)")
}
catch FacultyError.InvalidFaculityName(let faculityName)
{
     print("Invalid Faculity Name: \(faculityName)")
}
catch FacultyError.InvalidSalary(let salary)
{
    print("Invalid Salary: \(salary)")
}



