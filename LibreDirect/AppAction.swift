//
//  AppAction.swift
//  LibreDirect
//

import Foundation
import OSLog

enum AppAction {
    case addCalibration(glucoseValue: Int)
    case addGlucoseValues(glucoseValues: [Glucose])
    case addMissedReading
    case addSensorReadings(trendReadings: [SensorReading], historyReadings: [SensorReading])
    
    case clearCalibrations
    case clearGlucoseValues
    
    case connectSensor
    case disconnectSensor
    case pairSensor
    
    case registerConnectionInfo(infos: [SensorConnectionInfo])
    
    case removeCalibration(id: UUID)
    case removeGlucose(id: UUID)
    
    case resetSensor
    case resetTransmitter
    
    case selectCalendarTarget(id: String?)
    case selectConnection(id: String, connection: SensorConnection)
    case selectConnectionId(id: String)
    case selectView(viewTag: Int)
    
    case deleteLogs
    case sendLogs
    
    case setAlarmHigh(upperLimit: Int)
    case setAlarmLow(lowerLimit: Int)
    case setAlarmSnoozeUntil(untilDate: Date?, autosnooze: Bool = false)
    case setCalendarExport(enabled: Bool)
    case setChartShowLines(enabled: Bool)
    case setConnectionAlarm(enabled: Bool)
    case setConnectionError(errorMessage: String, errorTimestamp: Date, errorIsCritical: Bool)
    case setConnectionState(connectionState: SensorConnectionState)
    case setExpiringAlarm(enabled: Bool)
    case setGlucoseAlarm(enabled: Bool)
    case setGlucoseBadge(enabled: Bool)
    case setGlucoseUnit(unit: GlucoseUnit)
    case setNightscoutUrl(url: String)
    case setNightscoutSecret(apiSecret: String)
    case setNightscoutUpload(enabled: Bool)
    case setReadGlucose(enabled: Bool)
    case setSensor(sensor: Sensor)
    case setSensorState(sensorAge: Int, sensorState: SensorState?)
    case setTransmitter(transmitter: Transmitter)
    
    case startup
}
