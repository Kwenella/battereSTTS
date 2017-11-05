//
//  main.swift
//  BatteSTTS
//
//  Created by K_R on 11/5/17.
//  Copyright © 2017 K_R. All rights reserved.
//

import Foundation

var battery = Battery()
if battery.open() != kIOReturnSuccess { exit(0) }

print("\n-- BATTERY --\n")
print("\tAC POWERED:      \(battery.isACPowered())")
print("\tCHARGED:         \(battery.isCharged())")
print("\tCHARGING:        \(battery.isCharging())")
print("\tCHARGE:          \(battery.charge())%")
print("\tCAPACITY:        \(battery.currentCapacity()) mAh")
print("\tMAX CAPACITY:    \(battery.maxCapactiy()) mAh")
print("\tDESGIN CAPACITY: \(battery.designCapacity()) mAh")
print("\tCYCLES:          \(battery.cycleCount())")
print("\tMAX CYCLES:      \(battery.designCycleCount())")
print("\tTEMPERATURE:     \(battery.temperature())°C")
print("\tBATTERY LIFE:    \(battery.maxCapactiy() * 100/battery.designCapacity()) %")
print("\tTIME REMAINING:  \(battery.timeRemainingFormatted())")
print("\n\n")

_ = battery.close()
