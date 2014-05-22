;; Compile Options : /TML610112 /MS /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Iuart /Ii2c /SS 256 /SD /Oa /Ot /W 3 /Wc /Fa_output\_obj\ 
;; Version Number  : Ver.3.41.8
;; File Name       : main.c

	type (ML610112) 
	model small, near
	$$NVARmain segment data 2h #0h
	$$NINITVAR segment data 2h #0h
	$$NINITTAB segment table 2h any
	$$AccelGyroDataReady_ISR$main segment code 2h #0h
	$$AccelSensorControlPID$main segment code 2h #0h
	$$CalibrateAccel$main segment code 2h #0h
	$$CalibrateGyro$main segment code 2h #0h
	$$CalibrateMotors$main segment code 2h #0h
	$$CheckSafetyLimit$main segment code 2h #0h
	$$CheckSafetyLimitUnscaled$main segment code 2h #0h
	$$ClearVariables$main segment code 2h #0h
	$$DistanceSensorControl$main segment code 2h #0h
	$$ESC1_PWM$main segment code 2h #0h
	$$ESC2_PWM$main segment code 2h #0h
	$$ESC3_PWM$main segment code 2h #0h
	$$ESC4_PWM$main segment code 2h #0h
	$$Get_AccGyroData$main segment code 2h #0h
	$$Get_MagData$main segment code 2h #0h
	$$Get_PingData$main segment code 2h #0h
	$$Get_RangeData$main segment code 2h #0h
	$$Initialization$main segment code 2h #0h
	$$MagSensorControl$main segment code 2h #0h
	$$MagSensorControlPID$main segment code 2h #0h
	$$NOP$main segment code 2h #0h
	$$NOP1000$main segment code 2h #0h
	$$NOPms$main segment code 2h #0h
	$$NOPus$main segment code 2h #0h
	$$PortA_Digital_Inputs$main segment code 2h #0h
	$$PortA_Low$main segment code 2h #0h
	$$PortB_Low$main segment code 2h #0h
	$$PortC_Low$main segment code 2h #0h
	$$PortD_Low$main segment code 2h #0h
	$$RampUpMotorTest$main segment code 2h #0h
	$$RangeSensorControlPID$main segment code 2h #0h
	$$ReturnAccelData$main segment code 2h #0h
	$$ReturnMagData$main segment code 2h #0h
	$$ReturnSensorData$main segment code 2h #0h
	$$Run_AccGyroCF$main segment code 2h #0h
	$$SerialOutCoefficients$main segment code 2h #0h
	$$SetOSC$main segment code 2h #0h
	$$Shutdown$main segment code 2h #0h
	$$SoftStart$main segment code 2h #0h
	$$TAB$$S178$main segment table 2h #0h
	$$TAB$$S191$main segment table 2h #0h
	$$TAB$$S204$main segment table 2h #0h
	$$TAB$$S217$main segment table 2h #0h
	$$TAB$$S228$main segment table 2h #0h
	$$TAB$$S242$main segment table 2h #0h
	$$TAB$$S267$main segment table 2h #0h
	$$TAB$$S283$main segment table 2h #0h
	$$TAB$$S314$main segment table 2h #0h
	$$TAB$$S339$main segment table 2h #0h
	$$TAB$$S364$main segment table 2h #0h
	$$TAB$$S386$main segment table 2h #0h
	$$TAB$$S414$main segment table 2h #0h
	$$TAB$$S431$main segment table 2h #0h
	$$TAB$$S462$main segment table 2h #0h
	$$TAB$$S530$main segment table 2h #0h
	$$TAB_uartSetParam$main segment table 2h #0h
	$$TBC_ISR$main segment code 2h #0h
	$$TMR89_ISR$main segment code 2h #0h
	$$UARTTunePID$main segment code 2h #0h
	$$_funcI2CFin$main segment code 2h #0h
	$$_funcUartFin$main segment code 2h #0h
	$$_intI2c$main segment code 2h #0h
	$$_intUart$main segment code 2h #0h
	$$analog_comparator$main segment code 2h #0h
	$$approx_arctan2$main segment code 2h #0h
	$$checkI2C$main segment code 2h #0h
	$$main$main segment code 2h #0h
	$$main_clrWDT$main segment code 2h #0h
	$$main_reqNotHalt$main segment code 2h #0h
	STACKSEG 0100h
CVERSION 3.41.8
CGLOBAL 01H 03H 0000H "Shutdown" 08H 02H 0F2H 00H 81H 02H 00H 00H 07H
CSGLOBAL 03H 0000H "TBC_ISR" 08H 02H 0FEH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "NOPms" 08H 02H 0FAH 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "NOPus" 08H 02H 0FBH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "approx_arctan2" 08H 02H 0FDH 00H 83H 40H 00H 00H 03H
CGLOBAL 01H 03H 0000H "checkI2C" 08H 02H 0F5H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_clrWDT" 08H 02H 0CEH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcUartFin" 08H 02H 0F3H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_reqNotHalt" 08H 02H 0F6H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ReturnMagData" 08H 02H 0E3H 00H 81H 0eH 00H 00H 07H
CGLOBAL 01H 03H 0000H "DistanceSensorControl" 08H 02H 0EBH 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "AccelSensorControlPID" 08H 02H 0EEH 00H 83H 20H 00H 00H 07H
CSGLOBAL 03H 0000H "Initialization" 08H 02H 0CFH 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "RangeSensorControlPID" 08H 02H 0EFH 00H 81H 20H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Digital_Inputs" 08H 02H 0D6H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "MagSensorControl" 08H 02H 0ECH 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "ESC2_PWM" 08H 02H 0D8H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Get_AccGyroData" 08H 02H 0DDH 00H 81H 0cH 00H 00H 07H
CGLOBAL 01H 03H 0000H "main" 08H 02H 01H 01H 80H 00H 00H 00H 01H
CGLOBAL 01H 03H 0000H "MagSensorControlPID" 08H 02H 0EDH 00H 81H 2aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intUart" 08H 02H 0F7H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ClearVariables" 08H 02H 0E0H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortD_Low" 08H 02H 0D5H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "NOP1000" 08H 02H 0FCH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ESC1_PWM" 08H 02H 0D7H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intI2c" 08H 02H 0F8H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "CheckSafetyLimitUnscaled" 08H 02H 0F1H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "SetOSC" 08H 02H 0D0H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "CalibrateAccel" 08H 02H 0E6H 00H 81H 0cH 00H 00H 07H
CSGLOBAL 03H 0000H "AccelGyroDataReady_ISR" 08H 02H 00H 01H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Get_RangeData" 08H 02H 0DBH 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortC_Low" 08H 02H 0D4H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "TMR89_ISR" 08H 02H 0FFH 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "CheckSafetyLimit" 08H 02H 0F0H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ESC4_PWM" 08H 02H 0DAH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Get_MagData" 08H 02H 0DFH 00H 83H 28H 00H 00H 07H
CGLOBAL 01H 03H 0000H "UARTTunePID" 08H 02H 0E8H 00H 81H 32H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Get_PingData" 08H 02H 0DCH 00H 81H 16H 00H 00H 07H
CGLOBAL 01H 03H 0000H "SerialOutCoefficients" 08H 02H 0E7H 00H 81H 2eH 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortB_Low" 08H 02H 0D3H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "CalibrateMotors" 08H 02H 0E4H 00H 81H 06H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ReturnAccelData" 08H 02H 0E2H 00H 81H 0cH 00H 00H 07H
CGLOBAL 01H 03H 0000H "ESC3_PWM" 08H 02H 0D9H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "CalibrateGyro" 08H 02H 0E5H 00H 81H 0cH 00H 00H 07H
CGLOBAL 01H 03H 0000H "RampUpMotorTest" 08H 02H 0EAH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "NOP" 08H 02H 0F9H 00H 81H 08H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Low" 08H 02H 0D2H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "analog_comparator" 08H 02H 0D1H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Run_AccGyroCF" 08H 02H 0DEH 00H 83H 24H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcI2CFin" 08H 02H 0F4H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "SoftStart" 08H 02H 0E9H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ReturnSensorData" 08H 02H 0E1H 00H 81H 1cH 00H 00H 07H
CSTRUCTTAG 0000H 0000H 0005H 000CH 00000016H "_Notag"
CSTRUCTMEM 42H 00000002H 00000000H "_Mode" 02H 00H 08H
CSTRUCTMEM 43H 00000002H 00000002H "_Handle" 02H 00H 08H
CSTRUCTMEM 42H 00000002H 00000004H "_Buf" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000006H "_Bend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000008H "_Next" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000AH "_Rend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000CH "_Rsave" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000EH "_Wend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000010H "_Back" 05H 01H 02H 00H 00H 00H
CSTRUCTMEM 42H 00000001H 00000012H "_Cbuf" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000013H "_Nback" 02H 00H 00H
CSTRUCTMEM 43H 00000002H 00000014H "_Tmpnam" 04H 03H 00H 00H 00H
CSTRUCTTAG 0000H 0000H 0004H 0001H 00000004H "_Notag"
CSTRUCTMEM 42H 00000004H 00000000H "_Off" 02H 00H 02H
CSTRUCTTAG 0000H 0000H 0003H 0006H 0000000AH "_Notag"
CSTRUCTMEM 42H 00000004H 00000000H "br" 02H 00H 02H
CSTRUCTMEM 42H 00000001H 00000004H "lg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000005H "pt" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000006H "stp" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000007H "neg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000008H "dir" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 0002H 0002H 00000008H "_Notag"
CSTRUCTMEM 43H 00000004H 00000000H "quot" 02H 00H 02H
CSTRUCTMEM 43H 00000004H 00000004H "rem" 02H 00H 02H
CSTRUCTTAG 0000H 0000H 0001H 0002H 00000004H "_Notag"
CSTRUCTMEM 43H 00000002H 00000000H "quot" 02H 00H 01H
CSTRUCTMEM 43H 00000002H 00000002H "rem" 02H 00H 01H
CSTRUCTTAG 0000H 0000H 0000H 0008H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "b0" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000001H "b1" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000002H "b2" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000003H "b3" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000004H "b4" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000005H "b5" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000006H "b6" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000007H "b7" 02H 00H 00H
CUNIONTAG 0000H 0000H 0006H 0002H 00000008H "_Notag"
CUNIONMEM 42H 00000008H "_W" 05H 01H 04H 00H 00H 08H
CUNIONMEM 43H 00000008H "_D" 02H 00H 04H
CTYPEDEF 0000H 0000H 01H "_Dconst" 04H 00H 06H 06H 00H
CTYPEDEF 0000H 0000H 43H "_Ptrdifft" 02H 00H 01H
CTYPEDEF 0000H 0000H 42H "_Sizet" 02H 00H 01H
CTYPEDEF 0000H 0000H 43H "tUartSetParam" 04H 00H 05H 03H 00H
CTYPEDEF 0000H 0000H 42H "size_t" 02H 00H 01H
CTYPEDEF 0000H 0000H 43H "cbfUart" 0AH 03H 00H 02H 2EH 00H 00H 00H 00H 00H 07H
CTYPEDEF 0000H 0000H 43H "fpos_t" 04H 00H 05H 04H 00H
CTYPEDEF 0000H 0000H 43H "cbfI2c" 0AH 03H 00H 02H 43H 00H 00H 00H 00H 00H 07H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_nf" 08H 02H 01H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_nn" 08H 02H 00H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_ff" 08H 02H 03H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_fn" 08H 02H 02H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 43H "FILE" 04H 00H 05H 05H 00H
CTYPEDEF 0000H 0000H 43H "div_t" 04H 00H 05H 01H 00H
CTYPEDEF 0000H 0000H 43H "ldiv_t" 04H 00H 05H 02H 00H
CTYPEDEF 0000H 0000H 43H "_BYTE_FIELD" 04H 00H 05H 00H 00H
CSGLOBAL 43H 0004H "CF_LPF" 02H 00H 03H
CSGLOBAL 43H 0004H "Mag_OpposingPole" 02H 00H 03H
CSGLOBAL 42H 0001H "AccGyro_GyroAccel_SMPRTDIV" 02H 00H 00H
CSGLOBAL 43H 0004H "Mag_PIDOutput" 02H 00H 03H
CSGLOBAL 42H 0008H "RecWorld" 05H 01H 08H 00H 00H 00H
CGLOBAL 00H 42H 0001H "_flgUartFin" 02H 00H 00H
CSGLOBAL 42H 0002H "Accel_PID_Motor4" 02H 00H 01H
CSGLOBAL 42H 0002H "Accel_PID_Motor1" 02H 00H 01H
CSGLOBAL 42H 0002H "Accel_PID_Motor2" 02H 00H 01H
CSGLOBAL 42H 0002H "Accel_PID_Motor3" 02H 00H 01H
CSGLOBAL 42H 0002H "Mag_PIDCounter" 02H 00H 01H
CSGLOBAL 43H 0004H "CF_YPitch_high" 02H 00H 03H
CSGLOBAL 43H 0004H "Mag_CWThres" 02H 00H 03H
CSGLOBAL 43H 0004H "Ping_out" 02H 00H 03H
CSGLOBAL 42H 00C8H "SensorReturn" 05H 01H 0C8H 00H 00H 00H
CSGLOBAL 42H 0001H "PWMCounter" 02H 00H 00H
CSGLOBAL 42H 0001H "AccGyro_PWRMGMT1REG_Contents" 02H 00H 00H
CSGLOBAL 42H 0001H "Accel_RetIndex" 02H 00H 00H
CSGLOBAL 42H 0001H "Accel_SavIndex" 02H 00H 00H
CSGLOBAL 42H 0001H "AccGyro_ReadData" 02H 00H 00H
CSGLOBAL 43H 0004H "Mag_PIDError" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_Gyro_YPitch" 02H 00H 03H
CSGLOBAL 43H 0004H "Mag_PID_kd" 02H 00H 03H
CSGLOBAL 43H 0004H "Mag_PID_ki" 02H 00H 03H
CSGLOBAL 43H 0004H "Mag_PID_kp" 02H 00H 03H
CSGLOBAL 43H 0004H "Mag_Xout" 02H 00H 03H
CSGLOBAL 42H 0002H "PWMPeriod" 02H 00H 01H
CSGLOBAL 43H 0004H "CF_YPitch_low" 02H 00H 03H
CSGLOBAL 43H 0028H "Gyro_Zout" 05H 01H 0AH 00H 00H 03H
CSGLOBAL 43H 0004H "Accel_PID_XRollErrPrev" 02H 00H 03H
CSGLOBAL 42H 0002H "Range_out" 02H 00H 01H
CSGLOBAL 42H 0002H "Accel_PID_YPitchCounter" 02H 00H 01H
CSGLOBAL 43H 0004H "Range_PIDError" 02H 00H 03H
CSGLOBAL 43H 0028H "Gyro_Yout" 05H 01H 0AH 00H 00H 03H
CSGLOBAL 43H 0004H "Range_PIDOutput" 02H 00H 03H
CSGLOBAL 42H 0006H "NewVar_Str" 05H 01H 06H 00H 00H 00H
CSGLOBAL 42H 0001H "AccGyro_AccelConfig" 02H 00H 00H
CSGLOBAL 42H 0002H "PWMLowerDutyLimitCalib" 02H 00H 01H
CSGLOBAL 43H 0004H "Accel_PID_XRoll_ki" 02H 00H 03H
CGLOBAL 01H 42H 0001H "Accel_PID_XYChangeFlag" 02H 00H 00H
CSGLOBAL 43H 0004H "Accel_PID_XRoll_kd" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_PID_XRoll_kp" 02H 00H 03H
CSGLOBAL 42H 0001H "AccGyro_CF_FlagCounter" 02H 00H 00H
CSGLOBAL 42H 0001H "AccGyro_ReadFlag" 02H 00H 00H
CSGLOBAL 43H 0004H "Mag_PIDErrSum" 02H 00H 03H
CSGLOBAL 43H 0004H "Range_PIDSetpoint" 02H 00H 03H
CSGLOBAL 42H 0001H "Mag_ModeReg_Contents" 02H 00H 00H
CSGLOBAL 43H 0004H "NewVar" 02H 00H 03H
CSGLOBAL 43H 0004H "Mag_Yout" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_Gyro_Counter" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_XRoll" 02H 00H 03H
CSGLOBAL 42H 0002H "Mag_MotorStep" 02H 00H 01H
CSGLOBAL 42H 0001H "AccGyro_GyroAccelLPF_SMPRTDIVCo" 02H 00H 00H
CSGLOBAL 43H 0004H "CF_Accel_ForceMagApprox" 02H 00H 03H
CSGLOBAL 43H 0004H "Mag_Zout" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_PID_XRollErrSum" 02H 00H 03H
CSGLOBAL 42H 0001H "Accel_PID_GoCounter" 02H 00H 00H
CSGLOBAL 43H 0004H "CF_StdDev_Mtmp_X" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_StdDev_Mtmp_Y" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_StdDev_K" 02H 00H 03H
CSGLOBAL 42H 0348H "KeyMOTData" 08H 01H 04H 00H 01H 69H 00H 00H 01H
CSGLOBAL 43H 0004H "Mag_PIDCurrentCount" 02H 00H 03H
CSGLOBAL 42H 000EH "AccGyro_Data" 05H 01H 0EH 00H 00H 00H
CSGLOBAL 43H 0004H "CF_XRoll_avg" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_PID_YPitch_kp" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_PID_YPitch_ki" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_PID_YPitch_kd" 02H 00H 03H
CSGLOBAL 43H 0004H "Mag_PIDdErr" 02H 00H 03H
CSGLOBAL 42H 0001H "PWMflag" 02H 00H 00H
CSGLOBAL 42H 0001H "AccGyro_INTENABLEReg_contents" 02H 00H 00H
CSGLOBAL 42H 0001H "AccGyro_GyroConfig_Contents" 02H 00H 00H
CSGLOBAL 42H 0001H "HMC5883Address" 02H 00H 00H
CSGLOBAL 42H 0001H "PWMSensorResPerInc" 02H 00H 00H
CSGLOBAL 43H 0004H "CF_Gyro_XRoll" 02H 00H 03H
CSGLOBAL 42H 0001H "MPU6050Address" 02H 00H 00H
CSGLOBAL 42H 0002H "PWMUpperLowerDiff" 02H 00H 01H
CSGLOBAL 01H 000AH "_uartSetParam" 04H 00H 05H 03H 00H
CSGLOBAL 43H 0004H "Range_PIDdErr" 02H 00H 03H
CSGLOBAL 42H 0002H "PWMSafeDuty" 02H 00H 01H
CSGLOBAL 43H 0004H "CF_StdDev_M_X" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_StdDev_M_Y" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_PID_YPitchErrPrev" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_XRoll_low" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_StdDev_S_X" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_StdDev_S_Y" 02H 00H 03H
CSGLOBAL 42H 0002H "Accel_PID_XRollCounter" 02H 00H 01H
CSGLOBAL 42H 0001H "Mag_ModeReg" 02H 00H 00H
CSGLOBAL 42H 0001H "Mag_ConfigB_Contents" 02H 00H 00H
CSGLOBAL 43H 0004H "Temp_out" 02H 00H 03H
CSGLOBAL 42H 0001H "AccGyro_PWRMGMT1REG" 02H 00H 00H
CSGLOBAL 42H 0001H "Mag_ConfigA_Contents" 02H 00H 00H
CSGLOBAL 42H 0001H "AccGyro_GyroConfig" 02H 00H 00H
CSGLOBAL 43H 0004H "Range_PIDErrSum" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_YPitch" 02H 00H 03H
CSGLOBAL 42H 0002H "Range_Output" 05H 01H 02H 00H 00H 00H
CSGLOBAL 42H 0002H "PWMLowerDutyLimitRun" 02H 00H 01H
CSGLOBAL 43H 0004H "CF_avgCnt" 02H 00H 03H
CSGLOBAL 42H 0001H "AccGyro_GyroAccelLPF" 02H 00H 00H
CSGLOBAL 42H 0001H "Range_Address" 02H 00H 00H
CSGLOBAL 43H 0004H "Mag_DeclinationAngle" 02H 00H 03H
CSGLOBAL 42H 0001H "CF_Counter" 02H 00H 00H
CSGLOBAL 43H 0004H "Range_PIDCurrentCount" 02H 00H 03H
CSGLOBAL 43H 0004H "Range_ZHiThres" 02H 00H 03H
CSGLOBAL 43H 0004H "Range_ZLoThres" 02H 00H 03H
CSGLOBAL 43H 0004H "Mag_PIDAngleScaled" 02H 00H 03H
CSGLOBAL 42H 0002H "Range_PIDCounter" 02H 00H 01H
CSGLOBAL 42H 0002H "PWMUpperDutyLimitRun" 02H 00H 01H
CSGLOBAL 43H 0004H "Range_Ceiling" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_PID_YPitchErrSum" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_XRoll_high" 02H 00H 03H
CSGLOBAL 43H 0004H "Mag_CCWThres" 02H 00H 03H
CSGLOBAL 43H 000CH "Accel_Zcal" 05H 01H 03H 00H 00H 03H
CSGLOBAL 42H 0001H "Mag_Status" 02H 00H 00H
CSGLOBAL 42H 0001H "AccGyro_AccelConfig_Contents" 02H 00H 00H
CSGLOBAL 43H 0004H "Mag_PIDCorrectionFactor" 02H 00H 03H
CGLOBAL 00H 42H 0001H "_flgI2CFin" 02H 00H 00H
CSGLOBAL 43H 000CH "Accel_Xcal" 05H 01H 03H 00H 00H 03H
CSGLOBAL 43H 0004H "AccGyro_GyroScaling" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_Accel_XRoll" 02H 00H 03H
CSGLOBAL 42H 0006H "Mag_Data" 05H 01H 06H 00H 00H 00H
CSGLOBAL 43H 0028H "Accel_Xout" 05H 01H 0AH 00H 00H 03H
CSGLOBAL 42H 0001H "CF_highlow_flag" 02H 00H 00H
CSGLOBAL 43H 000CH "Accel_Ycal" 05H 01H 03H 00H 00H 03H
CSGLOBAL 42H 0001H "AccGYRO_Test" 02H 00H 00H
CSGLOBAL 42H 0032H "SensorReturnSM" 05H 01H 32H 00H 00H 00H
CSGLOBAL 42H 0276H "KeyCFData" 08H 01H 03H 00H 01H 69H 00H 00H 01H
CSGLOBAL 43H 0004H "CF_Gyro_CurrentCount" 02H 00H 03H
CSGLOBAL 43H 0004H "Mag_PIDErrPrev" 02H 00H 03H
CGLOBAL 00H 42H 0001H "_reqNotHalt" 02H 00H 00H
CSGLOBAL 42H 0001H "CF_UseFlag" 02H 00H 00H
CSGLOBAL 42H 0002H "TestingEndTimer" 02H 00H 01H
CSGLOBAL 43H 0004H "CF_Accel_YPitch" 02H 00H 03H
CSGLOBAL 43H 0004H "Mag_Angle" 02H 00H 03H
CSGLOBAL 43H 0004H "Mag_GainFactor" 02H 00H 03H
CSGLOBAL 42H 0001H "AccGyro_INTENABLEReg" 02H 00H 00H
CSGLOBAL 42H 0002H "PWMUpperDutyLimitCalib" 02H 00H 01H
CSGLOBAL 43H 0004H "Mag_PIDSetpoint" 02H 00H 03H
CSGLOBAL 43H 0004H "AccGyro_AccelScaling" 02H 00H 03H
CSGLOBAL 42H 0002H "ArrayCounter" 02H 00H 01H
CSGLOBAL 43H 0004H "Accel_XLoThres" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_YHiThres" 02H 00H 03H
CSGLOBAL 43H 0004H "Range_PID_kp" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_XHiThres" 02H 00H 03H
CSGLOBAL 42H 0001H "Range_TakeRangeReading" 02H 00H 00H
CSGLOBAL 43H 0004H "Range_PID_kd" 02H 00H 03H
CSGLOBAL 43H 0028H "Accel_Yout" 05H 01H 0AH 00H 00H 03H
CSGLOBAL 43H 0004H "Range_PID_ki" 02H 00H 03H
CSGLOBAL 42H 0002H "MotorStep" 02H 00H 01H
CSGLOBAL 43H 0028H "Accel_Zout" 05H 01H 0AH 00H 00H 03H
CSGLOBAL 42H 0002H "Timer8Counter" 02H 00H 01H
CSGLOBAL 42H 0001H "AccGyro_GyroAccelLPF_Contents" 02H 00H 00H
CSGLOBAL 43H 0004H "Gyro_Zcal" 02H 00H 03H
CSGLOBAL 42H 0001H "Mag_ConfigA" 02H 00H 00H
CSGLOBAL 42H 0001H "Mag_ConfigB" 02H 00H 00H
CSGLOBAL 42H 0001H "Mag_ReadData" 02H 00H 00H
CSGLOBAL 43H 0004H "Accel_YLoThres" 02H 00H 03H
CSGLOBAL 42H 0002H "Accel_PID_Counter" 02H 00H 01H
CSGLOBAL 43H 0004H "Gyro_Ycal" 02H 00H 03H
CSGLOBAL 42H 0002H "timer_us" 02H 00H 01H
CSGLOBAL 43H 0028H "Gyro_Xout" 05H 01H 0AH 00H 00H 03H
CSGLOBAL 43H 0004H "Gyro_Xcal" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_YPitch_avg" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_HPF" 02H 00H 03H
CSGLOBAL 43H 0004H "Range_PIDErrPrev" 02H 00H 03H
CSGLOBAL 42H 0002H "Ping_timer" 02H 00H 01H
CFILE 0001H 0000085AH "main\\ML610112.H"
CFILE 0002H 000000D8H "main\\stdlib.h"
CFILE 0003H 0000007AH "main\\yvals.h"
CFILE 0004H 0000006BH "uart\\uart.h"
CFILE 0005H 00000027H "common\\common.h"
CFILE 0006H 00000057H "irq\\irq.h"
CFILE 0007H 00000023H "main\\mcu.h"
CFILE 0008H 00000045H "i2c\\i2c.h"
CFILE 0009H 000000EEH "main\\stdio.h"
CFILE 000AH 00000046H "tbc\\tbc.h"
CFILE 000BH 000001B8H "timer\\timer.h"
CFILE 000CH 0000004FH "main\\math.h"
CFILE 0000H 00000E81H "main\\main.c"

	rseg $$main$main
CFUNCTION 257

_main	:
CBLOCK 257 1 511

;;{
CLINEA 0000H 0001H 01FFH 0001H 0001H
CBLOCK 257 2 511
CLOCAL 47H 0002H 0026H 0002H "i" 02H 00H 01H
CLOCAL 4AH 0001H 0000H 0002H "flag" 02H 00H 00H

;;		Initialization(); 			//Ports, UART, Timers, Oscillator, Comparators, etc.
CLINEA 0000H 0001H 0204H 0003H 004BH
	bl	_Initialization

;;		main_clrWDT();				//kick the dog...1.34uS duration
CLINEA 0000H 0001H 0205H 0003H 0034H
	bl	_main_clrWDT

;;		CalibrateGyro();			//Enter Calibration Sequence for Gyro
CLINEA 0000H 0001H 0206H 0003H 003AH
	bl	_CalibrateGyro

;;			Accel_Xcal[0] = 75;
CLINEA 0000H 0001H 020BH 0004H 0016H
	mov	er0,	#0 
	mov	r2,	#096h
	mov	r3,	#042h
	st	er0,	NEAR _Accel_Xcal
	st	er2,	NEAR _Accel_Xcal+02h

;;			Accel_Ycal[0] = -675;
CLINEA 0000H 0001H 020CH 0004H 0018H
	mov	r1,	#0c0h
	mov	r2,	#028h
	mov	r3,	#0c4h
	st	er0,	NEAR _Accel_Ycal
	st	er2,	NEAR _Accel_Ycal+02h

;;			Accel_Zcal[0] = -162;
CLINEA 0000H 0001H 020DH 0004H 0018H
	mov	er0,	#0 
	mov	r2,	#022h
	mov	r3,	#0c3h
	st	er0,	NEAR _Accel_Zcal
	st	er2,	NEAR _Accel_Zcal+02h

;;		CalibrateMotors();			//Time-consuming ~6s
CLINEA 0000H 0001H 0215H 0003H 002BH
	bl	_CalibrateMotors

;;Main_Loop:
CLINEA 0000H 0001H 0217H 0001H 000AH
CLABEL 001FH "Main_Loop"
_$L31 :

;;		SerialOutCoefficients();	//~23ms when PID is Triggered as well..13.8ms otherwise
CLINEA 0000H 0001H 0218H 0003H 0052H
	bl	_SerialOutCoefficients

;;		UARTTunePID();				//Allow PID & CF Constant changes over UART
CLINEA 0000H 0001H 0219H 0003H 003FH
	bl	_UARTTunePID

;;		main_clrWDT();				//kick the dog...1.34uS duration.
CLINEA 0000H 0001H 021AH 0003H 0035H
	bl	_main_clrWDT

;;		SoftStart();				//Smoothly bring up the Motor RPM
CLINEA 0000H 0001H 021BH 0003H 0033H
	bl	_SoftStart

;;		Accel_SavIndex = 0;			//Reset Circular Buffer for Accel/Gyro Measurements
CLINEA 0000H 0001H 021DH 0003H 004BH
	mov	r0,	#00h
	st	r0,	NEAR _Accel_SavIndex

;;		Accel_RetIndex = 0;
CLINEA 0000H 0001H 021EH 0003H 0015H
	st	r0,	NEAR _Accel_RetIndex

;;		for(i=0; i<10; i++){
CLINEA 0000H 0001H 021FH 0003H 0016H
	mov	er4,	#0 
_$L34 :
CBLOCK 257 3 543

;;			Accel_Xout[i] = 0;
CLINEA 0000H 0001H 0220H 0004H 0015H
	mov	er0,	er4
	sllc	r1,	#02h
	sll	r0,	#02h
	mov	er2,	#0 
	st	er2,	NEAR _Accel_Xout[er0]
	st	er2,	NEAR _Accel_Xout+02h[er0]

;;			Accel_Yout[i] = 0;
CLINEA 0000H 0001H 0221H 0004H 0015H
	mov	er0,	er4
	sllc	r1,	#02h
	sll	r0,	#02h
	st	er2,	NEAR _Accel_Yout[er0]
	st	er2,	NEAR _Accel_Yout+02h[er0]

;;			Accel_Zout[i] = 0;
CLINEA 0000H 0001H 0222H 0004H 0015H
	mov	er0,	er4
	sllc	r1,	#02h
	sll	r0,	#02h
	st	er2,	NEAR _Accel_Zout[er0]
	st	er2,	NEAR _Accel_Zout+02h[er0]

;;			Gyro_Xout[i] = 0;
CLINEA 0000H 0001H 0223H 0004H 0014H
	mov	er0,	er4
	sllc	r1,	#02h
	sll	r0,	#02h
	st	er2,	NEAR _Gyro_Xout[er0]
	st	er2,	NEAR _Gyro_Xout+02h[er0]

;;			Gyro_Yout[i] = 0;
CLINEA 0000H 0001H 0224H 0004H 0014H
	mov	er0,	er4
	sllc	r1,	#02h
	sll	r0,	#02h
	st	er2,	NEAR _Gyro_Yout[er0]
	st	er2,	NEAR _Gyro_Yout+02h[er0]

;;			Gyro_Zout[i] = 0;
CLINEA 0000H 0001H 0225H 0004H 0014H
	mov	er0,	er4
	sllc	r1,	#02h
	sll	r0,	#02h
	st	er2,	NEAR _Gyro_Zout[er0]
	st	er2,	NEAR _Gyro_Zout+02h[er0]
CBLOCKEND 257 3 550

;;		for(i=0; i<10; i++){
CLINEA 0000H 0000H 021FH 0003H 0016H
	add	er4,	#1 
	cmp	r4,	#0ah
	cmpc	r5,	#00h
	blts	_$L34

;;		EPB3 = 1;					//Enable Accel/Gyro Interrupt Pin
CLINEA 0000H 0001H 0227H 0003H 0031H
	sb	0f011h.7

;;Fast_Loop:							//This loop takes 22.4ms for this loop as of 3/30/2014		
CLINEA 0000H 0001H 0229H 0001H 0049H
CLABEL 0026H "Fast_Loop"
_$L38 :

;;		main_clrWDT();				//kick the dog...1.34uS duration
CLINEA 0000H 0001H 022BH 0003H 0034H
	bl	_main_clrWDT

;;		ClearVariables();			//Fresh start each loop...
CLINEA 0000H 0001H 022CH 0003H 0030H
	bl	_ClearVariables
CBLOCK 257 4 558
CBLOCKEND 257 4 562

;;		if(AccGyro_ReadFlag >= 1){		//Triggered by External Interrupt (flag set in AccelGyroDataReady_ISR)
CLINEA 0000H 0001H 0240H 0003H 0064H
	l	r0,	NEAR _AccGyro_ReadFlag
	cmp	r0,	#01h
	blt	_$L41
CBLOCK 257 5 576

;;			Get_AccGyroData();
CLINEA 0000H 0001H 0242H 0004H 0015H
	bl	_Get_AccGyroData

;;			AccGyro_ReadFlag = 0;
CLINEA 0000H 0001H 0244H 0004H 0018H
	mov	r0,	#00h
	st	r0,	NEAR _AccGyro_ReadFlag
CBLOCKEND 257 5 581

;;		}
CLINEA 0000H 0000H 0245H 0003H 0003H
_$L41 :

;;		if(AccGyro_CF_FlagCounter > 0){	//This Value is incremented after Get_AccGyroData(); is called
CLINEA 0000H 0001H 0246H 0003H 0060H
	l	r0,	NEAR _AccGyro_CF_FlagCounter
	cmp	r0,	#00h
	ble	_$L43
CBLOCK 257 6 582

;;			Run_AccGyroCF();
CLINEA 0000H 0001H 0248H 0004H 0013H
	bl	_Run_AccGyroCF

;;			AccGyro_CF_FlagCounter--;	//Decremented because this value is not a static 1/0... number shows number of items in buffer that have not gone though the CF yet
CLINEA 0000H 0000H 024AH 0004H 00A0H
	lea	OFFSET _AccGyro_CF_FlagCounter
	dec	[ea]
CBLOCKEND 257 6 587

;;		}
CLINEA 0000H 0000H 024BH 0003H 0003H
_$L43 :

;;		if(Accel_PID_GoCounter>=4){		//This increments in the Run_AccGyroCF()... I don't know if this is the best trigger.. but for now, it works.  Calls GetAccGyroData and AccGyroCF once within the routine.
CLINEA 0000H 0001H 024CH 0003H 00C9H
	l	r0,	NEAR _Accel_PID_GoCounter
	cmp	r0,	#04h
	blt	_$L45
CBLOCK 257 7 588

;;			AccelSensorControlPID(); // This Function takes 8.4ms loop (as of 3/30/2014)			
CLINEA 0000H 0001H 024EH 0004H 0052H
	bl	_AccelSensorControlPID

;;			Accel_PID_GoCounter = 0;
CLINEA 0000H 0001H 0250H 0004H 001BH
	mov	r0,	#00h
	st	r0,	NEAR _Accel_PID_GoCounter
CBLOCKEND 257 7 593

;;		}
CLINEA 0000H 0000H 0251H 0003H 0003H
_$L45 :
CBLOCK 257 8 595
CBLOCKEND 257 8 599

;;		if(TestingEndTimer < 500){		//50 == 3secs = 250 = 15 seconds
CLINEA 0000H 0001H 0261H 0003H 003EH
	l	er0,	NEAR _TestingEndTimer
	cmp	r0,	#0f4h
	cmpc	r1,	#01h
	bge	_$L49
CBLOCK 257 9 609

;;			TestingEndTimer++;			//Comment this out to always loop (i.e.: no shut-down...)
CLINEA 0000H 0000H 0262H 0004H 0051H
	add	er0,	#1 
	st	er0,	NEAR _TestingEndTimer

;;			goto Fast_Loop;
CLINEA 0000H 0001H 0263H 0004H 0012H
	bal	_$L38
CBLOCKEND 257 9 612

;;		else{
CLINEA 0000H 0000H 0265H 0003H 0007H
_$L49 :
CBLOCK 257 10 613

;;			EPB3 = 0;
CLINEA 0000H 0001H 0266H 0004H 000CH
	rb	0f011h.7

;;			Shutdown();
CLINEA 0000H 0001H 0269H 0004H 000EH
	bl	_Shutdown

;;			TestingEndTimer = 0;
CLINEA 0000H 0001H 026AH 0004H 0017H
	mov	er0,	#0 
	st	er0,	NEAR _TestingEndTimer

;;			ArrayCounter = 0;
CLINEA 0000H 0001H 026BH 0004H 0014H
	st	er0,	NEAR _ArrayCounter

;;			goto Main_Loop;
CLINEA 0000H 0001H 026CH 0004H 0012H
	b	_$L31
CBLOCKEND 257 10 621
CBLOCKEND 257 2 623

;;}//end main
CLINEA 0000H 0001H 026FH 0001H 000BH
CBLOCKEND 257 1 623
CFUNCTIONEND 257


	rseg $$main_clrWDT$main
CFUNCTION 206

_main_clrWDT	:
CBLOCK 206 1 804

;;{
CLINEA 0000H 0001H 0324H 0001H 0001H
CBLOCK 206 2 804

;;	do {
CLINEA 0000H 0001H 0328H 0002H 0005H
_$L55 :
CBLOCK 206 3 808

;;		WDTCON = 0x5Au;
CLINEA 0000H 0001H 0329H 0003H 0011H
	mov	r0,	#05ah
	st	r0,	0f00eh
CBLOCKEND 206 3 810

;;	} while (WDP != 1);
CLINEA 0000H 0000H 032AH 0002H 0014H
	tb	0f00eh.0
	beq	_$L55

;;	WDTCON = 0xA5u;
CLINEA 0000H 0001H 032BH 0002H 0010H
	mov	r0,	#0a5h
	st	r0,	0f00eh
CBLOCKEND 206 2 813

;;}
CLINEA 0000H 0001H 032DH 0001H 0001H
	rt
CBLOCKEND 206 1 813
CFUNCTIONEND 206


	rseg $$Initialization$main
CFUNCTION 207

_Initialization	:
CBLOCK 207 1 820

;;static void Initialization(void){
CLINEA 0000H 0001H 0334H 0001H 0021H
	push	lr
CBLOCK 207 2 820
CRET 0000H

;;	DSIO0 = 1; // 0=> Enables Synchronous Serial Port 0 (initial value).
CLINEA 0000H 0001H 0338H 0002H 0045H
	sb	0f02ah.0

;;	DUA0  = 0; // 0=> Enables the operation of UART0 (initial value).
CLINEA 0000H 0001H 0339H 0002H 0042H
	rb	0f02ah.2

;;	DUA1  = 1; // 0=> Enables Uart1 (initial value). 
CLINEA 0000H 0001H 033AH 0002H 0032H
	sb	0f02ah.3

;;	DI2C1 = 1; // 0=> Enables I2C bus Interface (Slave) (initial value).
CLINEA 0000H 0001H 033BH 0002H 0045H
	sb	0f02ah.6

;;	DI2C0 = 0; // 0=> Enables I2C bus Interface (Master) (initial value).	
CLINEA 0000H 0001H 033CH 0002H 0047H
	rb	0f02ah.7

;;	BLKCON4 = 0x00; // 0=> Enables SA-ADC
CLINEA 0000H 0001H 033EH 0002H 0026H
	mov	r0,	#00h
	st	r0,	0f02ch

;;	BLKCON6 = 0x00; // (1=disables; 0=enables) the operation of Timers 8, 9, A, E, F.
CLINEA 0000H 0001H 033FH 0002H 0052H
	st	r0,	0f02eh

;;	BLKCON7 = 0x00; // (1=disables; 0=enables) the operation of PWM (PWMC, PWMD, PWME, PWMF
CLINEA 0000H 0001H 0340H 0002H 0058H
	st	r0,	0f02fh

;;	PortA_Low();	//Initialize all 3 Ports of Port A to GPIO-Low
CLINEA 0000H 0001H 0343H 0002H 003CH
	bl	_PortA_Low

;;	PortB_Low();	//Initialize all 8 Ports of Port B to GPIO-Low
CLINEA 0000H 0001H 0344H 0002H 003CH
	bl	_PortB_Low

;;	PortC_Low();	//Initialize all 8 Ports of Port C to GPIO-Low
CLINEA 0000H 0001H 0345H 0002H 003CH
	bl	_PortC_Low

;;	PortD_Low();	//Initialize all 6 Ports of Port D to GPIO-Low
CLINEA 0000H 0001H 0346H 0002H 003CH
	bl	_PortD_Low

;;    SetOSC();
CLINEA 0000H 0001H 0349H 0005H 000DH
	bl	_SetOSC

;;	irq_di();	// Disable Interrupts
CLINEA 0000H 0001H 034DH 0002H 0020H
	bl	_irq_di

;;	irq_init();	// Initialize Interrupts (All Off and NO Requests)
CLINEA 0000H 0001H 034EH 0002H 003FH
	bl	_irq_init

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_I2CMINT, _intI2c );
CLINEA 0000H 0001H 036BH 0002H 003CH
	mov	r2,	#BYTE1 OFFSET __intI2c
	mov	r3,	#BYTE2 OFFSET __intI2c
	mov	r0,	#0ch
	bl	_irq_setHdr

;;		EI2CM = 1;
CLINEA 0000H 0001H 036CH 0003H 000CH
	sb	0f012h.7

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_UA0INT, _intUart );		
CLINEA 0000H 0001H 0370H 0002H 003EH
	mov	r2,	#BYTE1 OFFSET __intUart
	mov	r3,	#BYTE2 OFFSET __intUart
	mov	r0,	#0fh
	bl	_irq_setHdr

;;		EUA0 = 1; // EUA0 is the enable flag for the UART0 interrupt (1=ENABLED)
CLINEA 0000H 0001H 0371H 0003H 004AH
	sb	0f014h.0

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_TM9INT, TMR89_ISR );  //Clear interrupt request flag
CLINEA 0000H 0001H 037EH 0002H 005DH
	mov	r2,	#BYTE1 OFFSET _TMR89_ISR
	mov	r3,	#BYTE2 OFFSET _TMR89_ISR
	mov	r0,	#0eh
	bl	_irq_setHdr

;;		ETM8 = 1;	  	// Enable timer 8 Interrupt (1=ENABLED
CLINEA 0000H 0001H 037FH 0003H 0035H
	sb	0f013h.2

;;		ETM9 = 1;	  	// Enable timer 9 Interrupt (1=ENABLED)
CLINEA 0000H 0001H 0380H 0003H 0036H
	sb	0f013h.3

;;		QTM8 = 1;		// timer 8 IRQ request flag
CLINEA 0000H 0001H 0381H 0003H 0028H
	sb	0f01bh.2

;;		QTM9 = 1;		// timer 9 IRQ request flag
CLINEA 0000H 0001H 0382H 0003H 0028H
	sb	0f01bh.3

;;		T8CS0 = 1;
CLINEA 0000H 0001H 0383H 0003H 000CH
	sb	0f8e2h.0

;;		T8CS1 = 1;
CLINEA 0000H 0001H 0384H 0003H 000CH
	sb	0f8e2h.1

;;		T8CS2 = 0;
CLINEA 0000H 0001H 0385H 0003H 000CH
	rb	0f8e2h.2

;;		T9CS0 = 1;
CLINEA 0000H 0001H 0386H 0003H 000CH
	sb	0f8e6h.0

;;		T9CS1 = 1;
CLINEA 0000H 0001H 0387H 0003H 000CH
	sb	0f8e6h.1

;;		T9CS2 = 0;
CLINEA 0000H 0001H 0388H 0003H 000CH
	rb	0f8e6h.2

;;		tm_init(TM_CH_NO_89);
CLINEA 0000H 0001H 0389H 0003H 0017H
	mov	r0,	#00h
	bl	_tm_init

;;		tm_set89Data(8192);				//A value of 1023 should yield 125us interrupts at 8.192 MHz
CLINEA 0000H 0000H 0150H 0002H 0025H
	mov	r0,	#00h
	st	r0,	0f8e0h

;;		tm_set89Data(8192);				//A value of 1023 should yield 125us interrupts at 8.192 MHz
CLINEA 0000H 0000H 0151H 0002H 0023H
	mov	r0,	#020h
	st	r0,	0f8e4h

;;		tm_set89Source(TM_CS_HTBCLK);
CLINEA 0000H 0000H 0186H 0002H 0015H
	sb	0f8e2h.0

;;		tm_set89Source(TM_CS_HTBCLK);
CLINEA 0000H 0000H 0187H 0002H 001AH
	rb	0f8e2h.1

;;		tm_start89();
CLINEA 0000H 0001H 00CAH 0002H 000AH
	mov	r0,	#00h
	st	r0,	0f8e1h

;;		tm_start89();
CLINEA 0000H 0000H 00CBH 0002H 000BH
	sb	0f8e3h.0

;;		T89M16 = 1;
CLINEA 0000H 0001H 038DH 0003H 000DH
	sb	0f8e2h.5

;;		HTD3 = 1;
CLINEA 0000H 0001H 038FH 0003H 000BH
	sb	0f00bh.3

;;		HTD2 = 1;
CLINEA 0000H 0001H 0390H 0003H 000BH
	sb	0f00bh.2

;;		HTD1 = 1;
CLINEA 0000H 0001H 0391H 0003H 000BH
	sb	0f00bh.1

;;		HTD0 = 1; 
CLINEA 0000H 0001H 0392H 0003H 000CH
	sb	0f00bh.0

;;	PB3DIR = 1;
CLINEA 0000H 0001H 0395H 0002H 000CH
	sb	0f259h.3

;;	PB3C1 = 0;
CLINEA 0000H 0001H 0396H 0002H 000BH
	rb	0f25bh.3

;;	PB3C0 = 0;
CLINEA 0000H 0001H 0397H 0002H 000BH
	rb	0f25ah.3

;;	PB3MD1 = 0;
CLINEA 0000H 0001H 0398H 0002H 000CH
	rb	0f25dh.3

;;	PB3MD0 = 0;
CLINEA 0000H 0001H 0399H 0002H 000CH
	rb	0f25ch.3

;;	PB3E1 = 1;
CLINEA 0000H 0001H 039AH 0002H 000BH
	sb	0f025h.7

;;	PB3E0 = 0;		//PBnE0-1 are used to choose the Rising-Edge Mode for this interrupt
CLINEA 0000H 0001H 039CH 0002H 0051H
	rb	0f024h.7

;;	PB3SM = 0;
CLINEA 0000H 0001H 039DH 0002H 000BH
	rb	0f026h.7

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_PB3INT, AccelGyroDataReady_ISR );  //Clear interrupt request flag
CLINEA 0000H 0001H 039FH 0002H 006AH
	mov	r2,	#BYTE1 OFFSET _AccelGyroDataReady_ISR
	mov	r3,	#BYTE2 OFFSET _AccelGyroDataReady_ISR
	mov	r0,	#08h
	bl	_irq_setHdr

;;	EPB3 = 0;	//Enables Interrupt
CLINEA 0000H 0001H 03A1H 0002H 001EH
	rb	0f011h.7

;;	QPB3 = 0;	//Enables Request Flag (need to set to start using... this is set after the UART control Stuff!)
CLINEA 0000H 0001H 03A2H 0002H 006BH
	rb	0f019h.7

;;	WDTMOD = 0x03; 	// 0x03=overflow 8sec...
CLINEA 0000H 0001H 03A6H 0002H 0029H
	mov	r0,	#03h
	st	r0,	0f00fh

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 03A7H 0002H 001DH
	bl	_main_clrWDT

;;	(void)i2c_init(I2C_MOD_FST, (unsigned short)HSCLK_KHZ, I2C_SYN_ON);
CLINEA 0000H 0001H 03ABH 0002H 0044H
	mov	r0,	#01h
	push	r0
	mov	r2,	#040h
	mov	r3,	#01fh
	bl	_i2c_init
	add	sp,	#2 

;;			     &_uartSetParam );				/* Param... 	 */
CLINEA 0000H 0001H 03B1H 0009H 002DH
	mov	r0,	#BYTE1 OFFSET __uartSetParam
	mov	r1,	#BYTE2 OFFSET __uartSetParam
	push	er0
	mov	r2,	#040h
	mov	r3,	#01fh
	mov	r0,	#02h
	bl	_uart_init
	add	sp,	#2 

;;		uart_PortSet();
CLINEA 0000H 0001H 03B2H 0003H 0011H
	bl	_uart_PortSet

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 03B3H 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 03B4H 0003H 000EH
	bl	_uart_stop

;;	irq_ei(); // Enable Interrupts
CLINEA 0000H 0001H 03B6H 0002H 001FH
	bl	_irq_ei

;;		ESC1_PWM();
CLINEA 0000H 0001H 03BAH 0003H 000DH
	bl	_ESC1_PWM

;;		ESC2_PWM();
CLINEA 0000H 0001H 03BBH 0003H 000DH
	bl	_ESC2_PWM

;;		ESC3_PWM();
CLINEA 0000H 0001H 03BCH 0003H 000DH
	bl	_ESC3_PWM

;;		ESC4_PWM();
CLINEA 0000H 0001H 03BDH 0003H 000DH
	bl	_ESC4_PWM

;;		PD0DIR = 1;
CLINEA 0000H 0001H 03BFH 0003H 000DH
	sb	0f269h.0

;;		PD1DIR = 1;
CLINEA 0000H 0001H 03C0H 0003H 000DH
	sb	0f269h.1

;;		PD2DIR = 0;
CLINEA 0000H 0001H 03C1H 0003H 000DH
	rb	0f269h.2

;;		PWMUpperLowerDiff = PWMUpperDutyLimitRun-PWMLowerDutyLimitRun;
CLINEA 0000H 0001H 03C3H 0003H 0040H
	l	er0,	NEAR _PWMUpperDutyLimitRun
	l	er2,	NEAR _PWMLowerDutyLimitRun
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	NEAR _PWMUpperLowerDiff

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 03C6H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 03C7H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( MPU6050Address, &AccGyro_PWRMGMT1REG, 1, &AccGyro_PWRMGMT1REG_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 03C8H 0002H 008DH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _AccGyro_PWRMGMT1REG_Contents
	mov	r1,	#BYTE2 OFFSET _AccGyro_PWRMGMT1REG_Contents
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _AccGyro_PWRMGMT1REG
	mov	r3,	#BYTE2 OFFSET _AccGyro_PWRMGMT1REG
	l	r0,	NEAR _MPU6050Address
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03C9H 0001H 0015H
	bal	_$L98

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03C9H 0002H 004EH
_$L60 :
CBLOCK 207 3 969

;;		main_clrWDT();
CLINEA 0000H 0001H 03CAH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 3 971

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03C9H 0001H 0015H
_$L98 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L60

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 03CDH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 03CEH 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( MPU6050Address, &AccGyro_AccelConfig, 1, &AccGyro_AccelConfig_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 03CFH 0002H 008DH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _AccGyro_AccelConfig_Contents
	mov	r1,	#BYTE2 OFFSET _AccGyro_AccelConfig_Contents
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _AccGyro_AccelConfig
	mov	r3,	#BYTE2 OFFSET _AccGyro_AccelConfig
	l	r0,	NEAR _MPU6050Address
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03D0H 0001H 0015H
	bal	_$L99

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03D0H 0002H 004EH
_$L64 :
CBLOCK 207 4 976

;;		main_clrWDT();
CLINEA 0000H 0001H 03D1H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 4 978

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03D0H 0001H 0015H
_$L99 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L64

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 03D4H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 03D5H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( MPU6050Address, &AccGyro_GyroConfig, 1, &AccGyro_GyroConfig_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 03D6H 0002H 008BH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _AccGyro_GyroConfig_Contents
	mov	r1,	#BYTE2 OFFSET _AccGyro_GyroConfig_Contents
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _AccGyro_GyroConfig
	mov	r3,	#BYTE2 OFFSET _AccGyro_GyroConfig
	l	r0,	NEAR _MPU6050Address
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03D7H 0001H 0015H
	bal	_$L100

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03D7H 0002H 004EH
_$L68 :
CBLOCK 207 5 983

;;		main_clrWDT();
CLINEA 0000H 0001H 03D8H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 5 985

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03D7H 0001H 0015H
_$L100 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L68

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 03DCH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 03DDH 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( MPU6050Address, &AccGyro_GyroAccel_SMPRTDIV, 1, &AccGyro_GyroAccelLPF_SMPRTDIVContents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 03DEH 0002H 009DH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _AccGyro_GyroAccelLPF_SMPRTDIVCo
	mov	r1,	#BYTE2 OFFSET _AccGyro_GyroAccelLPF_SMPRTDIVCo
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _AccGyro_GyroAccel_SMPRTDIV
	mov	r3,	#BYTE2 OFFSET _AccGyro_GyroAccel_SMPRTDIV
	l	r0,	NEAR _MPU6050Address
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03DFH 0001H 0015H
	bal	_$L101

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03DFH 0002H 004EH
_$L72 :
CBLOCK 207 6 991

;;		main_clrWDT();
CLINEA 0000H 0001H 03E0H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 6 993

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03DFH 0001H 0015H
_$L101 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L72

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 03E4H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 03E5H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( MPU6050Address, &AccGyro_GyroAccelLPF, 1, &AccGyro_GyroAccelLPF_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 03E6H 0002H 008FH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _AccGyro_GyroAccelLPF_Contents
	mov	r1,	#BYTE2 OFFSET _AccGyro_GyroAccelLPF_Contents
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _AccGyro_GyroAccelLPF
	mov	r3,	#BYTE2 OFFSET _AccGyro_GyroAccelLPF
	l	r0,	NEAR _MPU6050Address
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03E7H 0001H 0015H
	bal	_$L102

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03E7H 0002H 004EH
_$L76 :
CBLOCK 207 7 999

;;		main_clrWDT();
CLINEA 0000H 0001H 03E8H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 7 1001

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03E7H 0001H 0015H
_$L102 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L76

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 03ECH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 03EDH 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( MPU6050Address, &AccGyro_INTENABLEReg, 1, &AccGyro_INTENABLEReg_contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 03EEH 0002H 008FH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _AccGyro_INTENABLEReg_contents
	mov	r1,	#BYTE2 OFFSET _AccGyro_INTENABLEReg_contents
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _AccGyro_INTENABLEReg
	mov	r3,	#BYTE2 OFFSET _AccGyro_INTENABLEReg
	l	r0,	NEAR _MPU6050Address
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03EFH 0001H 0015H
	bal	_$L103

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03EFH 0002H 004EH
_$L80 :
CBLOCK 207 8 1007

;;		main_clrWDT();
CLINEA 0000H 0001H 03F0H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 8 1009

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03EFH 0001H 0015H
_$L103 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L80

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 03F4H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 03F5H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( HMC5883Address, &Mag_ConfigA, 1, &Mag_ConfigA_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 03F6H 0002H 007DH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _Mag_ConfigA_Contents
	mov	r1,	#BYTE2 OFFSET _Mag_ConfigA_Contents
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _Mag_ConfigA
	mov	r3,	#BYTE2 OFFSET _Mag_ConfigA
	l	r0,	NEAR _HMC5883Address
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03F7H 0001H 0015H
	bal	_$L104

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03F7H 0002H 004EH
_$L84 :
CBLOCK 207 9 1015

;;		main_clrWDT();
CLINEA 0000H 0001H 03F8H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 9 1017

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03F7H 0001H 0015H
_$L104 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L84

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 03FBH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 03FCH 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( HMC5883Address, &Mag_ConfigB, 1, &Mag_ConfigB_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 03FDH 0002H 007DH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _Mag_ConfigB_Contents
	mov	r1,	#BYTE2 OFFSET _Mag_ConfigB_Contents
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _Mag_ConfigB
	mov	r3,	#BYTE2 OFFSET _Mag_ConfigB
	l	r0,	NEAR _HMC5883Address
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03FEH 0001H 0015H
	bal	_$L105

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03FEH 0002H 004EH
_$L88 :
CBLOCK 207 10 1022

;;		main_clrWDT();
CLINEA 0000H 0001H 03FFH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 10 1024

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03FEH 0001H 0015H
_$L105 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L88

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 0402H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 0403H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( HMC5883Address, &Mag_ModeReg, 1, &Mag_ModeReg_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 0404H 0002H 007DH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _Mag_ModeReg_Contents
	mov	r1,	#BYTE2 OFFSET _Mag_ModeReg_Contents
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _Mag_ModeReg
	mov	r3,	#BYTE2 OFFSET _Mag_ModeReg
	l	r0,	NEAR _HMC5883Address
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0405H 0001H 0015H
	bal	_$L106

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0405H 0002H 004EH
_$L92 :
CBLOCK 207 11 1029

;;		main_clrWDT();
CLINEA 0000H 0001H 0406H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 11 1031

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0405H 0001H 0015H
_$L106 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L92

;;	EPB3 = 0;
CLINEA 0000H 0001H 040AH 0002H 000AH
	rb	0f011h.7

;;	_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 040DH 0002H 003BH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 040EH 0002H 0046H
	bl	_i2c_stop

;;	I20MD = 1;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 040FH 0002H 0035H
	sb	0f2a4h.1

;;	i2c_startReceive(MPU6050Address, &AccGyro_ReadData, 1, &AccGyro_Data, 14, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 0410H 0002H 007CH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#14
	push	er0
	mov	r0,	#BYTE1 OFFSET _AccGyro_Data
	mov	r1,	#BYTE2 OFFSET _AccGyro_Data
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _AccGyro_ReadData
	mov	r3,	#BYTE2 OFFSET _AccGyro_ReadData
	l	r0,	NEAR _MPU6050Address
	bl	_i2c_startReceive
	add	sp,	#8 

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0411H 0001H 0015H
	bal	_$L107

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0411H 0002H 0051H
_$L96 :
CBLOCK 207 12 1041

;;		main_clrWDT();
CLINEA 0000H 0001H 0412H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 12 1047

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0411H 0001H 0015H
_$L107 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L96

;;	PD1C1 = 1;
CLINEA 0000H 0001H 041BH 0002H 000BH
	sb	0f26bh.1

;;	PD1C0 = 1;
CLINEA 0000H 0001H 041CH 0002H 000BH
	sb	0f26ah.1

;;	PC6DIR = 1;
CLINEA 0000H 0001H 041FH 0002H 000CH
	sb	0f261h.6

;;	PC6C0 = 1;
CLINEA 0000H 0001H 0420H 0002H 000BH
	sb	0f262h.6

;;	PC6C1 = 1;
CLINEA 0000H 0001H 0421H 0002H 000BH
	sb	0f263h.6

;;	PC6MD0 = 0;
CLINEA 0000H 0001H 0422H 0002H 000CH
	rb	0f264h.6

;;	PC6MD1 = 0;
CLINEA 0000H 0001H 0423H 0002H 000CH
	rb	0f265h.6
CBLOCKEND 207 2 1063

;;}//End Initialization
CLINEA 0000H 0001H 0427H 0001H 0015H
	pop	pc
CBLOCKEND 207 1 1063
CFUNCTIONEND 207


	rseg $$Get_RangeData$main
CFUNCTION 219

_Get_RangeData	:
CBLOCK 219 1 1069

;;void Get_RangeData(void){
CLINEA 0000H 0001H 042DH 0001H 0019H
	push	lr
CBLOCK 219 2 1069
CRET 0000H

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 042FH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 0430H 0002H 0043H
	bl	_i2c_stop

;;	I20MD = 0;		//Switch to I2C Standard Operation (100kbps)
CLINEA 0000H 0001H 0431H 0002H 0039H
	rb	0f2a4h.1

;;	i2c_startSend( Range_Address, &Range_TakeRangeReading, 1, &AccGyro_PWRMGMT1REG_Contents, 0, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 0432H 0002H 008FH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#0 
	push	er0
	mov	r0,	#BYTE1 OFFSET _AccGyro_PWRMGMT1REG_Contents
	mov	r1,	#BYTE2 OFFSET _AccGyro_PWRMGMT1REG_Contents
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _Range_TakeRangeReading
	mov	r3,	#BYTE2 OFFSET _Range_TakeRangeReading
	l	r0,	NEAR _Range_Address
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0433H 0001H 0001H
	bal	_$L121

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0433H 0002H 004EH
_$L111 :
CBLOCK 219 3 1075

;;		main_clrWDT();
CLINEA 0000H 0001H 0434H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 219 3 1077

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0433H 0001H 0001H
_$L121 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L111

;;	}
CLINEA 0000H 0000H 0435H 0002H 0002H
_$L110 :

;;	while(RANGE_STAT==1);
CLINEA 0000H 0000H 0436H 0000H 0000H
	tb	0f260h.6
	bne	_$L110

;;	_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 0439H 0002H 003BH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 043AH 0002H 0046H
	bl	_i2c_stop

;;	i2c_startReceive(Range_Address, &Range_TakeRangeReading, 0, &Range_Output, 2, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 043BH 0002H 0080H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#2 
	push	er0
	mov	r0,	#BYTE1 OFFSET _Range_Output
	mov	r1,	#BYTE2 OFFSET _Range_Output
	push	er0
	mov	er0,	#0 
	push	er0
	mov	r2,	#BYTE1 OFFSET _Range_TakeRangeReading
	mov	r3,	#BYTE2 OFFSET _Range_TakeRangeReading
	l	r0,	NEAR _Range_Address
	bl	_i2c_startReceive
	add	sp,	#8 

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 043CH 0001H 0001H
	bal	_$L122

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 043CH 0002H 0051H
_$L119 :
CBLOCK 219 4 1084

;;		main_clrWDT();
CLINEA 0000H 0001H 043DH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 219 4 1086

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 043CH 0001H 0001H
_$L122 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L119

;;	Range_out = (Range_Output[0]<<8)+(Range_Output[1]);
CLINEA 0000H 0001H 0440H 0002H 0034H
	l	r0,	NEAR _Range_Output+01h
	mov	r1,	#00h
	l	r2,	NEAR _Range_Output
	mov	r3,	r2
	mov	r2,	#00h
	add	er0,	er2
	st	er0,	NEAR _Range_out

;;	I20MD = 1;		//Switch Back to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 0441H 0002H 003AH
	sb	0f2a4h.1
CBLOCKEND 219 2 1090

;;}
CLINEA 0000H 0001H 0442H 0001H 0001H
	pop	pc
CBLOCKEND 219 1 1090
CFUNCTIONEND 219


	rseg $$Get_PingData$main
CFUNCTION 220

_Get_PingData	:
CBLOCK 220 1 1092

;;void Get_PingData(void){
CLINEA 0000H 0001H 0444H 0001H 0018H
	push	lr
	push	xr4
CBLOCK 220 2 1092
CRET 0004H

;;	PD1DIR = 0;		// PortD Bit0 set to Output Mode...
CLINEA 0000H 0001H 0447H 0002H 0031H
	rb	0f269h.1

;;	PingSensor = 1;
CLINEA 0000H 0001H 0448H 0002H 0010H
	sb	0f268h.1

;;	NOPus();
CLINEA 0000H 0001H 0449H 0002H 0009H
	bl	_NOPus

;;	PingSensor = 0;
CLINEA 0000H 0001H 044AH 0002H 0010H
	rb	0f268h.1

;;	PD1DIR = 1;		// PortD Bit0 set to Input Mode...
CLINEA 0000H 0001H 044DH 0002H 0030H
	sb	0f269h.1

;;	while(PingSensor == 0){
CLINEA 0000H 0001H 044EH 0002H 0018H
	bal	_$L124
_$L126 :
CBLOCK 220 3 1102

;;		NOPus();
CLINEA 0000H 0001H 044FH 0003H 000AH
	bl	_NOPus
CBLOCKEND 220 3 1104

;;	}
CLINEA 0000H 0000H 0450H 0002H 0002H
_$L124 :

;;	while(PingSensor == 0){
CLINEA 0000H 0000H 044EH 0000H 0000H
	tb	0f268h.1
	beq	_$L126

;;	while(PingSensor ==1){
CLINEA 0000H 0001H 0451H 0002H 0017H
	bal	_$L128
_$L130 :
CBLOCK 220 4 1105

;;		NOPus();
CLINEA 0000H 0001H 0452H 0003H 000AH
	bl	_NOPus

;;		Ping_timer++;
CLINEA 0000H 0000H 0453H 0003H 000FH
	l	er0,	NEAR _Ping_timer
	add	er0,	#1 
	st	er0,	NEAR _Ping_timer
CBLOCKEND 220 4 1108

;;	}
CLINEA 0000H 0000H 0454H 0002H 0002H
_$L128 :

;;	while(PingSensor ==1){
CLINEA 0000H 0000H 0451H 0000H 0000H
	tb	0f268h.1
	bne	_$L130

;;	Ping_timer *= 11;	//Convert the ping timer response to us
CLINEA 0000H 0001H 0455H 0002H 003AH
	l	er0,	NEAR _Ping_timer
	mov	er2,	er0
	sllc	r1,	#02h
	sll	r0,	#02h
	add	er0,	er2
	add	er0,	er0
	add	er0,	er2
	st	er0,	NEAR _Ping_timer

;;	Ping_out = (0.0162*Ping_timer) + 0.1359; //Convert us to distance based on Datasheet
CLINEA 0000H 0001H 0456H 0002H 0055H
	mov	er2,	#0 
	push	xr0
	add	sp,	#-4
	bl	__dildu8sw
	mov	r0,	#082h
	mov	r1,	#0e2h
	mov	r2,	#0c7h
	mov	r3,	#098h
	mov	r4,	#0bbh
	mov	r5,	#096h
	mov	r6,	#090h
	mov	r7,	#03fh
	push	qr0
	bl	__dmulu8sw
	add	sp,	#8 
	mov	r0,	#013h
	mov	r1,	#061h
	mov	r2,	#0c3h
	mov	r3,	#0d3h
	mov	r4,	#02bh
	mov	r5,	#065h
	mov	r6,	#0c1h
	push	qr0
	bl	__daddu8sw
	add	sp,	#8 
	bl	__dtofu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Ping_out
	st	er2,	NEAR _Ping_out+02h
CBLOCKEND 220 2 1112

;;}
CLINEA 0000H 0001H 0458H 0001H 0001H
	pop	xr4
	pop	pc
CBLOCKEND 220 1 1112
CFUNCTIONEND 220


	rseg $$Get_AccGyroData$main
CFUNCTION 221

_Get_AccGyroData	:
CBLOCK 221 1 1114

;;void Get_AccGyroData(void){
CLINEA 0000H 0001H 045AH 0001H 001BH
	push	lr
	push	er4
CBLOCK 221 2 1114
CRET 0002H

;;	LED_4 = 1;		//C2, Pin 14
CLINEA 0000H 0001H 045EH 0002H 0019H
	sb	0f260h.2

;;	EPB3 = 0;		//Turn off Accel/Gyro Interrupt.  This can probably be removed...
CLINEA 0000H 0001H 0460H 0002H 004DH
	rb	0f011h.7

;;	_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 0462H 0002H 003BH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 0463H 0002H 0046H
	bl	_i2c_stop

;;	I20MD = 1;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 0464H 0002H 0035H
	sb	0f2a4h.1

;;	i2c_startReceive(MPU6050Address, &AccGyro_ReadData, 1, &AccGyro_Data, 14, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 0465H 0002H 007CH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#14
	push	er0
	mov	r0,	#BYTE1 OFFSET _AccGyro_Data
	mov	r1,	#BYTE2 OFFSET _AccGyro_Data
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _AccGyro_ReadData
	mov	r3,	#BYTE2 OFFSET _AccGyro_ReadData
	l	r0,	NEAR _MPU6050Address
	bl	_i2c_startReceive
	add	sp,	#8 

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0466H 0001H 0001H
	bal	_$L139

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0466H 0002H 0051H
_$L135 :
CBLOCK 221 3 1126

;;		main_clrWDT();
CLINEA 0000H 0001H 0467H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 221 3 1128

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0466H 0001H 0001H
_$L139 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L135

;;	Accel_Xout[Accel_SavIndex] = (AccGyro_Data[0]<<8)+(AccGyro_Data[1]);
CLINEA 0000H 0001H 046BH 0002H 0045H
	l	r0,	NEAR _AccGyro_Data+01h
	mov	r1,	#00h
	l	r2,	NEAR _AccGyro_Data
	mov	r3,	r2
	mov	r2,	#00h
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	pop	xr0
	l	r4,	NEAR _Accel_SavIndex
	mov	r5,	#00h
	sllc	r5,	#02h
	sll	r4,	#02h
	st	er0,	NEAR _Accel_Xout[er4]
	st	er2,	NEAR _Accel_Xout+02h[er4]

;;	Accel_Yout[Accel_SavIndex] = (AccGyro_Data[2]<<8)+(AccGyro_Data[3]);
CLINEA 0000H 0001H 046CH 0002H 0045H
	l	r0,	NEAR _AccGyro_Data+02h
	mov	r1,	#00h
	mov	r3,	r0
	mov	r2,	#00h
	l	r0,	NEAR _AccGyro_Data+03h
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	pop	xr0
	st	er0,	NEAR _Accel_Yout[er4]
	st	er2,	NEAR _Accel_Yout+02h[er4]

;;	Accel_Zout[Accel_SavIndex] = (AccGyro_Data[4]<<8)+(AccGyro_Data[5]);
CLINEA 0000H 0001H 046DH 0002H 0045H
	l	r0,	NEAR _AccGyro_Data+04h
	mov	r1,	#00h
	mov	r3,	r0
	mov	r2,	#00h
	l	r0,	NEAR _AccGyro_Data+05h
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	pop	xr0
	st	er0,	NEAR _Accel_Zout[er4]
	st	er2,	NEAR _Accel_Zout+02h[er4]

;;	Gyro_Xout[Accel_SavIndex] = (AccGyro_Data[8]<<8)+(AccGyro_Data[9]);
CLINEA 0000H 0001H 0476H 0002H 0044H
	l	r0,	NEAR _AccGyro_Data+08h
	mov	r1,	#00h
	mov	r3,	r0
	mov	r2,	#00h
	l	r0,	NEAR _AccGyro_Data+09h
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	pop	xr0
	st	er0,	NEAR _Gyro_Xout[er4]
	st	er2,	NEAR _Gyro_Xout+02h[er4]

;;	Gyro_Yout[Accel_SavIndex] = (AccGyro_Data[10]<<8)+(AccGyro_Data[11]);
CLINEA 0000H 0001H 0477H 0002H 0046H
	l	r0,	NEAR _AccGyro_Data+0ah
	mov	r1,	#00h
	mov	r3,	r0
	mov	r2,	#00h
	l	r0,	NEAR _AccGyro_Data+0bh
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	pop	xr0
	st	er0,	NEAR _Gyro_Yout[er4]
	st	er2,	NEAR _Gyro_Yout+02h[er4]

;;	Gyro_Zout[Accel_SavIndex] = (AccGyro_Data[12]<<8)+(AccGyro_Data[13]);
CLINEA 0000H 0001H 0478H 0002H 0046H
	l	r0,	NEAR _AccGyro_Data+0ch
	mov	r1,	#00h
	mov	r3,	r0
	mov	r2,	#00h
	l	r0,	NEAR _AccGyro_Data+0dh
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	pop	xr0
	st	er0,	NEAR _Gyro_Zout[er4]
	st	er2,	NEAR _Gyro_Zout+02h[er4]

;;	Accel_Xout[Accel_SavIndex] -= Accel_Xcal[0];
CLINEA 0000H 0001H 047AH 0002H 002DH
	l	er0,	NEAR _Accel_Xout[er4]
	l	er2,	NEAR _Accel_Xout+02h[er4]
	push	xr0
	l	er0,	NEAR _Accel_Xcal
	l	er2,	NEAR _Accel_Xcal+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Xout[er4]
	st	er2,	NEAR _Accel_Xout+02h[er4]

;;	Accel_Yout[Accel_SavIndex] -= Accel_Ycal[0];
CLINEA 0000H 0001H 047BH 0002H 002DH
	l	er0,	NEAR _Accel_Yout[er4]
	l	er2,	NEAR _Accel_Yout+02h[er4]
	push	xr0
	l	er0,	NEAR _Accel_Ycal
	l	er2,	NEAR _Accel_Ycal+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Yout[er4]
	st	er2,	NEAR _Accel_Yout+02h[er4]

;;	Accel_Zout[Accel_SavIndex] -= Accel_Zcal[0];
CLINEA 0000H 0001H 047CH 0002H 002DH
	l	er0,	NEAR _Accel_Zout[er4]
	l	er2,	NEAR _Accel_Zout+02h[er4]
	push	xr0
	l	er0,	NEAR _Accel_Zcal
	l	er2,	NEAR _Accel_Zcal+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Zout[er4]
	st	er2,	NEAR _Accel_Zout+02h[er4]

;;	Gyro_Xout[Accel_SavIndex] -= Gyro_Xcal;
CLINEA 0000H 0001H 047DH 0002H 0028H
	l	er0,	NEAR _Gyro_Xout[er4]
	l	er2,	NEAR _Gyro_Xout+02h[er4]
	push	xr0
	l	er0,	NEAR _Gyro_Xcal
	l	er2,	NEAR _Gyro_Xcal+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Gyro_Xout[er4]
	st	er2,	NEAR _Gyro_Xout+02h[er4]

;;	Gyro_Yout[Accel_SavIndex] -= Gyro_Ycal;
CLINEA 0000H 0001H 047EH 0002H 0028H
	l	er0,	NEAR _Gyro_Yout[er4]
	l	er2,	NEAR _Gyro_Yout+02h[er4]
	push	xr0
	l	er0,	NEAR _Gyro_Ycal
	l	er2,	NEAR _Gyro_Ycal+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Gyro_Yout[er4]
	st	er2,	NEAR _Gyro_Yout+02h[er4]

;;	Gyro_Zout[Accel_SavIndex] -= Gyro_Zcal;
CLINEA 0000H 0001H 047FH 0002H 0028H
	l	er0,	NEAR _Gyro_Zout[er4]
	l	er2,	NEAR _Gyro_Zout+02h[er4]
	push	xr0
	l	er0,	NEAR _Gyro_Zcal
	l	er2,	NEAR _Gyro_Zcal+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Gyro_Zout[er4]
	st	er2,	NEAR _Gyro_Zout+02h[er4]

;;	Accel_SavIndex++;
CLINEA 0000H 0000H 0481H 0002H 0012H
	lea	OFFSET _Accel_SavIndex
	inc	[ea]
	l	r0,	NEAR _Accel_SavIndex

;;	if(Accel_SavIndex>9){
CLINEA 0000H 0001H 0482H 0002H 0016H
	cmp	r0,	#09h
	ble	_$L137
CBLOCK 221 4 1154

;;		Accel_SavIndex = 0;
CLINEA 0000H 0001H 0483H 0003H 0015H
	mov	r0,	#00h
	st	r0,	NEAR _Accel_SavIndex
CBLOCKEND 221 4 1156

;;	}
CLINEA 0000H 0000H 0484H 0002H 0002H
_$L137 :

;;	LED_4 = 0;		//C2, Pin 14
CLINEA 0000H 0001H 0486H 0002H 0019H
	rb	0f260h.2

;;	EPB3 = 1;		//Turns Accel/Gyro Interrupt back on... again, this may not be necessary
CLINEA 0000H 0001H 0487H 0002H 0054H
	sb	0f011h.7

;;	Accel_PID_GoCounter++;		//Counts up to 4 to trigger the PID loop to start.
CLINEA 0000H 0000H 0488H 0002H 004BH
	lea	OFFSET _Accel_PID_GoCounter
	inc	[ea]

;;	AccGyro_CF_FlagCounter++;	//Counts up to the number of values are in the buffer so main loop can call CF filter function
CLINEA 0000H 0000H 0489H 0002H 0079H
	lea	OFFSET _AccGyro_CF_FlagCounter
	inc	[ea]
CBLOCKEND 221 2 1162

;;}
CLINEA 0000H 0001H 048AH 0001H 0001H
	pop	er4
	pop	pc
CBLOCKEND 221 1 1162
CFUNCTIONEND 221


	rseg $$Run_AccGyroCF$main
CFUNCTION 222

_Run_AccGyroCF	:
CBLOCK 222 1 1164

;;void Run_AccGyroCF(void){
CLINEA 0000H 0001H 048CH 0001H 0019H
	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-08
	push	xr8
	push	xr4
CBLOCK 222 2 1164
CRET 0012H
CSLOCAL 43H 0002H 0000H 0002H "i" 02H 00H 01H
CSLOCAL 43H 0001H 0001H 0002H "I2CCont" 02H 00H 00H

;;	LED_2 = 1;			//B7, Pin 11
CLINEA 0000H 0001H 0490H 0002H 001AH
	sb	0f258h.7

;;	CF_Gyro_CurrentCount = CF_Gyro_Counter * .001;		//Timer in Seconds (.007 used to convert 128Hz TBC to seconds)
CLINEA 0000H 0001H 0494H 0002H 006FH
	l	er0,	NEAR _CF_Gyro_Counter
	l	er2,	NEAR _CF_Gyro_Counter+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	mov	r0,	#0fch
	mov	r1,	#0a9h
	mov	r2,	#0f1h
	mov	r3,	#0d2h
	mov	r4,	#04dh
	mov	r5,	#062h
	mov	r6,	#050h
	mov	r7,	#03fh
	push	qr0
	bl	__dmulu8sw
	add	sp,	#8 
	bl	__dtofu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _CF_Gyro_CurrentCount
	st	er2,	NEAR _CF_Gyro_CurrentCount+02h

;;	CF_Gyro_Counter = 0;
CLINEA 0000H 0001H 0495H 0002H 0015H
	mov	er0,	#0 
	st	er0,	NEAR _CF_Gyro_Counter
	st	er0,	NEAR _CF_Gyro_Counter+02h

;;	CF_Gyro_YPitch = CF_YPitch + ((Gyro_Xout[Accel_RetIndex]/AccGyro_GyroScaling) * CF_Gyro_CurrentCount);
CLINEA 0000H 0001H 0497H 0002H 0067H
	l	r0,	NEAR _Accel_RetIndex
	sllc	r1,	#02h
	sll	r0,	#02h
	mov	er4,	er0
	l	er8,	NEAR _Gyro_Xout[er0]
	l	er10,	NEAR _Gyro_Xout+02h[er0]
	push	xr8
	l	er0,	NEAR _AccGyro_GyroScaling
	l	er2,	NEAR _AccGyro_GyroScaling+02h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	l	er0,	NEAR _CF_Gyro_CurrentCount
	l	er2,	NEAR _CF_Gyro_CurrentCount+02h
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	l	er0,	NEAR _CF_YPitch
	l	er2,	NEAR _CF_YPitch+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _CF_Gyro_YPitch
	st	er2,	NEAR _CF_Gyro_YPitch+02h

;;	CF_Gyro_XRoll = CF_XRoll - ((Gyro_Yout[Accel_RetIndex]/AccGyro_GyroScaling) * CF_Gyro_CurrentCount);	
CLINEA 0000H 0001H 0498H 0002H 0066H
	l	er8,	NEAR _Gyro_Yout[er4]
	l	er10,	NEAR _Gyro_Yout+02h[er4]
	push	xr8
	l	er0,	NEAR _AccGyro_GyroScaling
	l	er2,	NEAR _AccGyro_GyroScaling+02h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	l	er0,	NEAR _CF_Gyro_CurrentCount
	l	er2,	NEAR _CF_Gyro_CurrentCount+02h
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr0
	l	er8,	NEAR _CF_XRoll
	l	er10,	NEAR _CF_XRoll+02h
	push	xr8
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _CF_Gyro_XRoll
	st	er2,	NEAR _CF_Gyro_XRoll+02h

;;	CF_Accel_ForceMagApprox = abs(Accel_Xout[Accel_RetIndex]) + abs(Accel_Yout[Accel_RetIndex]) + abs(Accel_Zout[Accel_RetIndex]);
CLINEA 0000H 0000H 049AH 0002H 007FH
	l	er0,	NEAR _Accel_Xout[er4]
	l	er2,	NEAR _Accel_Xout+02h[er4]
	push	xr0
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	bl	_abs
	mov	er8,	er0
	l	r0,	NEAR _Accel_RetIndex
	mov	r1,	#00h
	sllc	r1,	#02h
	sll	r0,	#02h
	l	er4,	NEAR _Accel_Yout[er0]
	l	er6,	NEAR _Accel_Yout+02h[er0]
	push	xr4
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	bl	_abs
	add	er8,	er0
	l	r0,	NEAR _Accel_RetIndex
	mov	r1,	#00h
	sllc	r1,	#02h
	sll	r0,	#02h
	l	er4,	NEAR _Accel_Zout[er0]
	l	er6,	NEAR _Accel_Zout+02h[er0]
	push	xr4
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	bl	_abs
	mov	er2,	er0
	mov	er0,	er8
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	pop	xr0
	st	er0,	NEAR _CF_Accel_ForceMagApprox
	st	er2,	NEAR _CF_Accel_ForceMagApprox+02h

;;	if (CF_Accel_ForceMagApprox > 16384 && CF_Accel_ForceMagApprox < 32768)
CLINEA 0000H 0001H 049BH 0002H 0048H
	push	xr0
	mov	er0,	#0 
	mov	r2,	#080h
	mov	r3,	#046h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bgt	_$M7
	b	_$L141
_$M7 :
	l	er0,	NEAR _CF_Accel_ForceMagApprox
	l	er2,	NEAR _CF_Accel_ForceMagApprox+02h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#00h
	mov	r3,	#047h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$M8
	b	_$L141
_$M8 :
CBLOCK 222 3 1180

;;        CF_Accel_YPitch = atan2(Accel_Yout[Accel_RetIndex], Accel_Zout[Accel_RetIndex]) * (57.29);	//57.29 = 180deg/pi
CLINEA 0000H 0000H 049EH 0009H 0076H
	l	r0,	NEAR _Accel_RetIndex
	mov	r1,	#00h
	sllc	r1,	#02h
	sll	r0,	#02h
	l	er4,	NEAR _Accel_Zout[er0]
	l	er6,	NEAR _Accel_Zout+02h[er0]
	push	xr4
	add	sp,	#-4
	bl	__ftodu8sw
	l	er4,	NEAR _Accel_Yout[er0]
	l	er6,	NEAR _Accel_Yout+02h[er0]
	push	xr4
	add	sp,	#-4
	bl	__ftodu8sw
	mov	er0,	fp
	add	er0,	#-8
	bl	_atan2
	add	sp,	#16
	lea	-8[fp]
	l	qr0,	[ea]
	push	qr0
	mov	r0,	#085h
	mov	r1,	#0ebh
	mov	r2,	#051h
	mov	r3,	#0b8h
	mov	r4,	#01eh
	mov	r5,	#0a5h
	mov	r6,	#04ch
	mov	r7,	#040h
	push	qr0
	bl	__dmulu8sw
	add	sp,	#8 
	bl	__dtofu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _CF_Accel_YPitch
	st	er2,	NEAR _CF_Accel_YPitch+02h

;;        CF_YPitch = (CF_Gyro_YPitch * CF_HPF) + (CF_Accel_YPitch * CF_LPF);
CLINEA 0000H 0001H 049FH 0009H 004BH
	l	er0,	NEAR _CF_Gyro_YPitch
	l	er2,	NEAR _CF_Gyro_YPitch+02h
	push	xr0
	l	er0,	NEAR _CF_HPF
	l	er2,	NEAR _CF_HPF+02h
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr0
	l	er4,	NEAR _CF_Accel_YPitch
	l	er6,	NEAR _CF_Accel_YPitch+02h
	push	xr4
	l	er4,	NEAR _CF_LPF
	l	er6,	NEAR _CF_LPF+02h
	push	xr4
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr4
	push	xr0
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _CF_YPitch
	st	er2,	NEAR _CF_YPitch+02h

;;        CF_Accel_XRoll = atan2(Accel_Xout[Accel_RetIndex], Accel_Zout[Accel_RetIndex]) * (57.29);
CLINEA 0000H 0000H 04A2H 0009H 0061H
	l	r0,	NEAR _Accel_RetIndex
	mov	r1,	#00h
	sllc	r1,	#02h
	sll	r0,	#02h
	l	er4,	NEAR _Accel_Zout[er0]
	l	er6,	NEAR _Accel_Zout+02h[er0]
	push	xr4
	add	sp,	#-4
	bl	__ftodu8sw
	l	er4,	NEAR _Accel_Xout[er0]
	l	er6,	NEAR _Accel_Xout+02h[er0]
	push	xr4
	add	sp,	#-4
	bl	__ftodu8sw
	mov	er0,	fp
	add	er0,	#-8
	bl	_atan2
	add	sp,	#16
	lea	-8[fp]
	l	qr0,	[ea]
	push	qr0
	mov	r0,	#085h
	mov	r1,	#0ebh
	mov	r2,	#051h
	mov	r3,	#0b8h
	mov	r4,	#01eh
	mov	r5,	#0a5h
	mov	r6,	#04ch
	mov	r7,	#040h
	push	qr0
	bl	__dmulu8sw
	add	sp,	#8 
	bl	__dtofu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _CF_Accel_XRoll
	st	er2,	NEAR _CF_Accel_XRoll+02h

;;        CF_XRoll = (CF_Gyro_XRoll * CF_HPF) + (CF_Accel_XRoll * CF_LPF);
CLINEA 0000H 0001H 04A3H 0009H 0048H
	l	er0,	NEAR _CF_Gyro_XRoll
	l	er2,	NEAR _CF_Gyro_XRoll+02h
	push	xr0
	l	er0,	NEAR _CF_HPF
	l	er2,	NEAR _CF_HPF+02h
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr0
	l	er4,	NEAR _CF_Accel_XRoll
	l	er6,	NEAR _CF_Accel_XRoll+02h
	push	xr4
	l	er4,	NEAR _CF_LPF
	l	er6,	NEAR _CF_LPF+02h
	push	xr4
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr4
	push	xr0
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
CBLOCKEND 222 3 1188

;;	else{
CLINEA 0000H 0001H 04A5H 0002H 0006H
	bal	_$L148
_$L141 :
CBLOCK 222 4 1189

;;		CF_YPitch = CF_Gyro_YPitch;
CLINEA 0000H 0001H 04A6H 0003H 001DH
	l	er0,	NEAR _CF_Gyro_YPitch
	l	er2,	NEAR _CF_Gyro_YPitch+02h
	st	er0,	NEAR _CF_YPitch
	st	er2,	NEAR _CF_YPitch+02h

;;		CF_XRoll = CF_Gyro_XRoll;
CLINEA 0000H 0001H 04A7H 0003H 001BH
	l	er0,	NEAR _CF_Gyro_XRoll
	l	er2,	NEAR _CF_Gyro_XRoll+02h
CBLOCKEND 222 4 1192

;;	}
CLINEA 0000H 0000H 04A8H 0002H 0002H
_$L148 :
	st	er0,	NEAR _CF_XRoll
	st	er2,	NEAR _CF_XRoll+02h

;;	Accel_RetIndex++;
CLINEA 0000H 0000H 04AAH 0002H 0012H
	lea	OFFSET _Accel_RetIndex
	inc	[ea]
	l	r0,	NEAR _Accel_RetIndex

;;	if(Accel_RetIndex > 9){
CLINEA 0000H 0001H 04ABH 0002H 0018H
	cmp	r0,	#09h
	ble	_$L149
CBLOCK 222 5 1195

;;		Accel_RetIndex = 0;
CLINEA 0000H 0001H 04ACH 0003H 0015H
	mov	r0,	#00h
	st	r0,	NEAR _Accel_RetIndex
CBLOCKEND 222 5 1197

;;	}
CLINEA 0000H 0000H 04ADH 0002H 0002H
_$L149 :

;;	LED_2 = 0;			//B7, Pin 11
CLINEA 0000H 0001H 04C4H 0002H 001AH
	rb	0f258h.7
CBLOCKEND 222 2 1221

;;}
CLINEA 0000H 0001H 04C5H 0001H 0001H
	pop	xr4
	pop	xr8
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 222 1 1221
CFUNCTIONEND 222


	rseg $$Get_MagData$main
CFUNCTION 223

_Get_MagData	:
CBLOCK 223 1 1224

;;void Get_MagData(void){
CLINEA 0000H 0001H 04C8H 0001H 0017H
	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-08
	push	xr4
CBLOCK 223 2 1224
CRET 000EH

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 04CAH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 04CBH 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( HMC5883Address, &Mag_ModeReg, 1, &Mag_ModeReg_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 04CCH 0002H 007DH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _Mag_ModeReg_Contents
	mov	r1,	#BYTE2 OFFSET _Mag_ModeReg_Contents
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _Mag_ModeReg
	mov	r3,	#BYTE2 OFFSET _Mag_ModeReg
	l	r0,	NEAR _HMC5883Address
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04CDH 0001H 0001H
	bal	_$L168

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04CDH 0002H 004EH
_$L154 :
CBLOCK 223 3 1229

;;		main_clrWDT();
CLINEA 0000H 0001H 04CEH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 223 3 1231

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04CDH 0001H 0001H
_$L168 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L154

;;	_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 04D1H 0002H 003BH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 04D2H 0002H 0046H
	bl	_i2c_stop

;;	i2c_startReceive(HMC5883Address, &Mag_ReadData, 1, &Mag_Data, 6, (cbfI2c)_funcI2CFin);	//Begin I2C Recieve Command
CLINEA 0000H 0001H 04D3H 0002H 0073H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#6 
	push	er0
	mov	r0,	#BYTE1 OFFSET _Mag_Data
	mov	r1,	#BYTE2 OFFSET _Mag_Data
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _Mag_ReadData
	mov	r3,	#BYTE2 OFFSET _Mag_ReadData
	l	r0,	NEAR _HMC5883Address
	bl	_i2c_startReceive
	add	sp,	#8 

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04D4H 0001H 0001H
	bal	_$L169

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04D4H 0002H 0051H
_$L158 :
CBLOCK 223 4 1236

;;		main_clrWDT();
CLINEA 0000H 0001H 04D5H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 223 4 1238

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04D4H 0001H 0001H
_$L169 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L158

;;	Mag_Zout = (Mag_Data[2]<<8)+(Mag_Data[3]);
CLINEA 0000H 0001H 04DAH 0002H 002BH
	l	r0,	NEAR _Mag_Data+02h
	mov	r1,	#00h
	mov	r3,	r0
	mov	r2,	#00h
	l	r0,	NEAR _Mag_Data+03h
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	pop	xr0
	st	er0,	NEAR _Mag_Zout
	st	er2,	NEAR _Mag_Zout+02h

;;	Mag_Xout *= Mag_GainFactor;
CLINEA 0000H 0001H 04DCH 0002H 001CH
	l	r0,	NEAR _Mag_Data+01h
	mov	r1,	#00h
	l	r2,	NEAR _Mag_Data
	mov	r3,	r2
	mov	r2,	#00h
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	l	er0,	NEAR _Mag_GainFactor
	l	er2,	NEAR _Mag_GainFactor+02h
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Mag_Xout
	st	er2,	NEAR _Mag_Xout+02h

;;	Mag_Yout *= Mag_GainFactor;
CLINEA 0000H 0001H 04DDH 0002H 001CH
	l	r0,	NEAR _Mag_Data+04h
	mov	r1,	#00h
	mov	r3,	r0
	mov	r2,	#00h
	l	r0,	NEAR _Mag_Data+05h
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	l	er0,	NEAR _Mag_GainFactor
	l	er2,	NEAR _Mag_GainFactor+02h
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Mag_Yout
	st	er2,	NEAR _Mag_Yout+02h

;;	if(Mag_Yout >= 0){
CLINEA 0000H 0001H 04DFH 0002H 0013H
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$L160
CBLOCK 223 5 1247

;;		Mag_Angle = 90 - (atan(Mag_Xout/Mag_Yout)) * (180/3.1415927);
CLINEA 0000H 0000H 04E0H 0003H 003FH
	l	er0,	NEAR _Mag_Xout
	l	er2,	NEAR _Mag_Xout+02h
	push	xr0
	l	er0,	NEAR _Mag_Yout
	l	er2,	NEAR _Mag_Yout+02h
	push	xr0
	bl	__fdivu8sw
	bl	__ftodu8sw
	mov	er0,	fp
	add	er0,	#-8
	bl	_atan
	add	sp,	#8 
	mov	er0,	#0 
	mov	er2,	#0 
	mov	r4,	#00h
	mov	r5,	#080h
	mov	r6,	#056h
	mov	r7,	#040h
	push	qr0
	lea	-8[fp]
	l	qr0,	[ea]
	push	qr0
	mov	r0,	#04ah
	mov	r1,	#015h
	mov	r2,	#04ah
	mov	r3,	#013h
	mov	r4,	#0dch
	mov	r5,	#0a5h
	mov	r6,	#04ch
	mov	r7,	#040h
	push	qr0
	bl	__dmulu8sw
	add	sp,	#8 
	bl	__dsubu8sw
	add	sp,	#8 
	bl	__dtofu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Mag_Angle
	st	er2,	NEAR _Mag_Angle+02h
CBLOCKEND 223 5 1249

;;	}
CLINEA 0000H 0000H 04E1H 0002H 0002H
_$L160 :

;;	if(Mag_Yout < 0){
CLINEA 0000H 0001H 04E2H 0002H 0012H
	l	er0,	NEAR _Mag_Yout
	l	er2,	NEAR _Mag_Yout+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$L162
CBLOCK 223 6 1250

;;		Mag_Angle = 270 - (atan(Mag_Xout/Mag_Yout)) * (180/3.1415927);
CLINEA 0000H 0000H 04E3H 0003H 0040H
	l	er0,	NEAR _Mag_Xout
	l	er2,	NEAR _Mag_Xout+02h
	push	xr0
	l	er0,	NEAR _Mag_Yout
	l	er2,	NEAR _Mag_Yout+02h
	push	xr0
	bl	__fdivu8sw
	bl	__ftodu8sw
	mov	er0,	fp
	add	er0,	#-8
	bl	_atan
	add	sp,	#8 
	mov	er0,	#0 
	mov	er2,	#0 
	mov	r4,	#00h
	mov	r5,	#0e0h
	mov	r6,	#070h
	mov	r7,	#040h
	push	qr0
	lea	-8[fp]
	l	qr0,	[ea]
	push	qr0
	mov	r0,	#04ah
	mov	r1,	#015h
	mov	r2,	#04ah
	mov	r3,	#013h
	mov	r4,	#0dch
	mov	r5,	#0a5h
	mov	r6,	#04ch
	mov	r7,	#040h
	push	qr0
	bl	__dmulu8sw
	add	sp,	#8 
	bl	__dsubu8sw
	add	sp,	#8 
	bl	__dtofu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Mag_Angle
	st	er2,	NEAR _Mag_Angle+02h
CBLOCKEND 223 6 1252

;;	}
CLINEA 0000H 0000H 04E4H 0002H 0002H
_$L162 :

;;	Mag_Angle -= 90;  //This will adjust and get the true 
CLINEA 0000H 0001H 04E6H 0002H 0037H
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#0b4h
	mov	r3,	#0c2h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Mag_Angle
	st	er2,	NEAR _Mag_Angle+02h

;;	if(Mag_Angle >=360){
CLINEA 0000H 0001H 04E7H 0002H 0015H
	push	xr0
	mov	er0,	#0 
	mov	r2,	#0b4h
	mov	r3,	#043h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$L164
CBLOCK 223 7 1255

;;		Mag_Angle -= 360;
CLINEA 0000H 0001H 04E8H 0003H 0013H
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#0b4h
	mov	r3,	#0c3h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Mag_Angle
	st	er2,	NEAR _Mag_Angle+02h
CBLOCKEND 223 7 1257

;;	}
CLINEA 0000H 0000H 04E9H 0002H 0002H
_$L164 :

;;	if(Mag_Angle < 0){
CLINEA 0000H 0001H 04EAH 0002H 0013H
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$L166
CBLOCK 223 8 1258

;;		Mag_Angle += 360;
CLINEA 0000H 0001H 04EBH 0003H 0013H
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#0b4h
	mov	r3,	#043h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Mag_Angle
	st	er2,	NEAR _Mag_Angle+02h
CBLOCKEND 223 8 1260

;;	}
CLINEA 0000H 0000H 04ECH 0002H 0002H
_$L166 :
CBLOCKEND 223 2 1261

;;}
CLINEA 0000H 0001H 04EDH 0001H 0001H
	pop	xr4
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 223 1 1261
CFUNCTIONEND 223


	rseg $$ClearVariables$main
CFUNCTION 224

_ClearVariables	:
CBLOCK 224 1 1263

;;void ClearVariables(void){
CLINEA 0000H 0001H 04EFH 0001H 001AH
CBLOCK 224 2 1263

;;	Temp_out = 0;
CLINEA 0000H 0001H 04F0H 0002H 000EH
	mov	er0,	#0 
	st	er0,	NEAR _Temp_out
	st	er0,	NEAR _Temp_out+02h

;;	Mag_Xout = 0;
CLINEA 0000H 0001H 04F1H 0002H 000EH
	st	er0,	NEAR _Mag_Xout
	st	er0,	NEAR _Mag_Xout+02h

;;	Mag_Yout = 0;
CLINEA 0000H 0001H 04F2H 0002H 000EH
	st	er0,	NEAR _Mag_Yout
	st	er0,	NEAR _Mag_Yout+02h

;;	Mag_Zout = 0;
CLINEA 0000H 0001H 04F3H 0002H 000EH
	st	er0,	NEAR _Mag_Zout
	st	er0,	NEAR _Mag_Zout+02h

;;	Mag_Angle = 0;
CLINEA 0000H 0001H 04F4H 0002H 000FH
	st	er0,	NEAR _Mag_Angle
	st	er0,	NEAR _Mag_Angle+02h

;;	Ping_timer = 0;
CLINEA 0000H 0001H 04F5H 0002H 0010H
	st	er0,	NEAR _Ping_timer

;;	Ping_out = 0;
CLINEA 0000H 0001H 04F6H 0002H 000EH
	st	er0,	NEAR _Ping_out
	st	er0,	NEAR _Ping_out+02h

;;	Range_out = 0;
CLINEA 0000H 0001H 04F7H 0002H 000FH
	st	er0,	NEAR _Range_out
CBLOCKEND 224 2 1272

;;}
CLINEA 0000H 0001H 04F8H 0001H 0001H
	rt
CBLOCKEND 224 1 1272
CFUNCTIONEND 224


	rseg $$ReturnSensorData$main
CFUNCTION 225

_ReturnSensorData	:
CBLOCK 225 1 1274

;;void ReturnSensorData(void){
CLINEA 0000H 0001H 04FAH 0001H 001CH
	push	lr
CBLOCK 225 2 1274
CRET 0000H
CLOCAL 47H 0002H 0024H 0002H "i" 02H 00H 01H

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 04FCH 0002H 0017H
	mov	er0,	#0 
_$L174 :
CBLOCK 225 3 1277

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 04FEH 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 225 3 1279

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 04FCH 0002H 0017H
	add	er0,	#1 
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L174

;;	sprintf(SensorReturn, "%f,%f,%f,%f,%f,%f,%f,%u", Accel_Xout, Accel_Yout, Accel_Zout, Gyro_Xout, Gyro_Yout, Gyro_Zout, Mag_Angle,Range_out);
CLINEA 0000H 0001H 0501H 0002H 008CH
	l	er0,	NEAR _Range_out
	push	er0
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	mov	r0,	#BYTE1 OFFSET _Gyro_Zout
	mov	r1,	#BYTE2 OFFSET _Gyro_Zout
	push	er0
	mov	r0,	#BYTE1 OFFSET _Gyro_Yout
	mov	r1,	#BYTE2 OFFSET _Gyro_Yout
	push	er0
	mov	r0,	#BYTE1 OFFSET _Gyro_Xout
	mov	r1,	#BYTE2 OFFSET _Gyro_Xout
	push	er0
	mov	r0,	#BYTE1 OFFSET _Accel_Zout
	mov	r1,	#BYTE2 OFFSET _Accel_Zout
	push	er0
	mov	r0,	#BYTE1 OFFSET _Accel_Yout
	mov	r1,	#BYTE2 OFFSET _Accel_Yout
	push	er0
	mov	r0,	#BYTE1 OFFSET _Accel_Xout
	mov	r1,	#BYTE2 OFFSET _Accel_Xout
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S178
	mov	r1,	#BYTE2 OFFSET $$S178
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#26

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 0503H 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 0504H 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0507H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 0508H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 0509H 0002H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#096h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 050AH 0001H 0001H
	bal	_$L183

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 050AH 0002H 0019H
_$L181 :
CBLOCK 225 4 1290

;;		main_clrWDT();
CLINEA 0000H 0001H 050BH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 225 4 1292

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 050AH 0001H 0001H
_$L183 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L181
CBLOCKEND 225 2 1293

;;}
CLINEA 0000H 0001H 050DH 0001H 0001H
	pop	pc
CBLOCKEND 225 1 1293
CFUNCTIONEND 225


	rseg $$ReturnAccelData$main
CFUNCTION 226

_ReturnAccelData	:
CBLOCK 226 1 1295

;;void ReturnAccelData(void){
CLINEA 0000H 0001H 050FH 0001H 001BH
	push	lr
CBLOCK 226 2 1295
CRET 0000H
CLOCAL 47H 0002H 0024H 0002H "i" 02H 00H 01H

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 0511H 0002H 0017H
	mov	er0,	#0 
_$L187 :
CBLOCK 226 3 1298

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 0513H 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 226 3 1300

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0511H 0002H 0017H
	add	er0,	#1 
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L187

;;	sprintf(SensorReturn, "%f,%f,%f", Accel_Xout, Accel_Yout, Accel_Zout);
CLINEA 0000H 0001H 0517H 0002H 0047H
	mov	r0,	#BYTE1 OFFSET _Accel_Zout
	mov	r1,	#BYTE2 OFFSET _Accel_Zout
	push	er0
	mov	r0,	#BYTE1 OFFSET _Accel_Yout
	mov	r1,	#BYTE2 OFFSET _Accel_Yout
	push	er0
	mov	r0,	#BYTE1 OFFSET _Accel_Xout
	mov	r1,	#BYTE2 OFFSET _Accel_Xout
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S191
	mov	r1,	#BYTE2 OFFSET $$S191
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#10

;;	SensorReturn[148] = 0x0D;	//CR
CLINEA 0000H 0001H 0519H 0002H 001FH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;	//LF
CLINEA 0000H 0001H 051AH 0002H 001FH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 051DH 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 051EH 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 051FH 0002H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#096h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0520H 0001H 0001H
	bal	_$L196

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0520H 0002H 0019H
_$L194 :
CBLOCK 226 4 1312

;;		main_clrWDT();
CLINEA 0000H 0001H 0521H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 226 4 1314

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0520H 0001H 0001H
_$L196 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L194
CBLOCKEND 226 2 1315

;;}
CLINEA 0000H 0001H 0523H 0001H 0001H
	pop	pc
CBLOCKEND 226 1 1315
CFUNCTIONEND 226


	rseg $$ReturnMagData$main
CFUNCTION 227

_ReturnMagData	:
CBLOCK 227 1 1317

;;void ReturnMagData(void){
CLINEA 0000H 0001H 0525H 0001H 0019H
	push	lr
CBLOCK 227 2 1317
CRET 0000H
CLOCAL 47H 0002H 0024H 0002H "i" 02H 00H 01H

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 0527H 0002H 0017H
	mov	er0,	#0 
_$L200 :
CBLOCK 227 3 1320

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 0529H 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 227 3 1322

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0527H 0002H 0017H
	add	er0,	#1 
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L200

;;	sprintf(SensorReturn, "%f", Mag_Angle);
CLINEA 0000H 0001H 052BH 0002H 0028H
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	mov	r0,	#BYTE1 OFFSET $$S204
	mov	r1,	#BYTE2 OFFSET $$S204
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#12

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 052DH 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 052EH 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0531H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 0532H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 0533H 0002H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#096h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0534H 0001H 0001H
	bal	_$L209

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0534H 0002H 0019H
_$L207 :
CBLOCK 227 4 1332

;;		main_clrWDT();
CLINEA 0000H 0001H 0535H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 227 4 1334

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0534H 0001H 0001H
_$L209 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L207
CBLOCKEND 227 2 1335

;;}
CLINEA 0000H 0001H 0537H 0001H 0001H
	pop	pc
CBLOCKEND 227 1 1335
CFUNCTIONEND 227


	rseg $$CalibrateMotors$main
CFUNCTION 228

_CalibrateMotors	:
CBLOCK 228 1 1343

;;void CalibrateMotors(void){
CLINEA 0000H 0001H 053FH 0001H 001BH
	push	lr
CBLOCK 228 2 1343
CRET 0000H
CLOCAL 47H 0002H 0024H 0002H "i" 02H 00H 01H

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 0542H 0002H 0017H
	mov	er0,	#0 
_$L213 :
CBLOCK 228 3 1347

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 0544H 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 228 3 1349

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0542H 0002H 0017H
	add	er0,	#1 
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L213

;;	sprintf(SensorReturn, "Motor Calibration Started!");
CLINEA 0000H 0001H 0546H 0002H 0035H
	mov	r0,	#BYTE1 OFFSET $$S217
	mov	r1,	#BYTE2 OFFSET $$S217
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#4 

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 0547H 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 0548H 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 054AH 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 054BH 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 054CH 0002H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#096h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 054DH 0001H 0001H
	bal	_$L233

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 054DH 0002H 0019H
_$L220 :
CBLOCK 228 4 1357

;;		NOP1000();
CLINEA 0000H 0001H 054EH 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 054FH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 228 4 1360

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 054DH 0001H 0001H
_$L233 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L220

;;	PWFP = PWMPeriod;
CLINEA 0000H 0001H 0553H 0002H 0012H
	l	er0,	NEAR _PWMPeriod
	st	er0,	0f960h

;;	PWEP = PWMPeriod;
CLINEA 0000H 0001H 0554H 0002H 0012H
	st	er0,	0f930h

;;	PWDP = PWMPeriod;
CLINEA 0000H 0001H 0555H 0002H 0012H
	st	er0,	0f920h

;;	PWCP = PWMPeriod;
CLINEA 0000H 0001H 0556H 0002H 0012H
	st	er0,	0f910h

;;	PWF0D = PWMUpperDutyLimitCalib; //Can't be running to change
CLINEA 0000H 0001H 0558H 0002H 003DH
	l	er0,	NEAR _PWMUpperDutyLimitCalib
	st	er0,	0f962h

;;	PWED = PWMUpperDutyLimitCalib;
CLINEA 0000H 0001H 0559H 0002H 001FH
	st	er0,	0f932h

;;	PWDD = PWMUpperDutyLimitCalib;
CLINEA 0000H 0001H 055AH 0002H 001FH
	st	er0,	0f922h

;;	PWCD = PWMUpperDutyLimitCalib;
CLINEA 0000H 0001H 055BH 0002H 001FH
	st	er0,	0f912h

;;	PFRUN = 1;
CLINEA 0000H 0001H 055DH 0002H 000BH
	sb	0f973h.0

;;	PERUN = 1;
CLINEA 0000H 0001H 055EH 0002H 000BH
	sb	0f937h.0

;;	PDRUN = 1;
CLINEA 0000H 0001H 055FH 0002H 000BH
	sb	0f927h.0

;;	PCRUN = 1;
CLINEA 0000H 0001H 0560H 0002H 000BH
	sb	0f917h.0

;;	NOP(3);
CLINEA 0000H 0001H 0562H 0002H 0008H
	mov	r0,	#03h
	bl	_NOP

;;	main_clrWDT();
CLINEA 0000H 0001H 0564H 0002H 000FH
	bl	_main_clrWDT

;;	PFRUN = 0;
CLINEA 0000H 0001H 0568H 0002H 000BH
	rb	0f973h.0

;;	PERUN = 0;
CLINEA 0000H 0001H 0569H 0002H 000BH
	rb	0f937h.0

;;	PDRUN = 0;
CLINEA 0000H 0001H 056AH 0002H 000BH
	rb	0f927h.0

;;	PCRUN = 0;
CLINEA 0000H 0001H 056BH 0002H 000BH
	rb	0f917h.0

;;	PWF0D = PWMLowerDutyLimitCalib; //Can't be running to change
CLINEA 0000H 0001H 056DH 0002H 003DH
	l	er0,	NEAR _PWMLowerDutyLimitCalib
	st	er0,	0f962h

;;	PWED = PWMLowerDutyLimitCalib;
CLINEA 0000H 0001H 056EH 0002H 001FH
	st	er0,	0f932h

;;	PWDD = PWMLowerDutyLimitCalib;
CLINEA 0000H 0001H 056FH 0002H 001FH
	st	er0,	0f922h

;;	PWCD = PWMLowerDutyLimitCalib;
CLINEA 0000H 0001H 0570H 0002H 001FH
	st	er0,	0f912h

;;	PFRUN = 1;
CLINEA 0000H 0001H 0572H 0002H 000BH
	sb	0f973h.0

;;	PERUN = 1;
CLINEA 0000H 0001H 0573H 0002H 000BH
	sb	0f937h.0

;;	PDRUN = 1;
CLINEA 0000H 0001H 0574H 0002H 000BH
	sb	0f927h.0

;;	PCRUN = 1;
CLINEA 0000H 0001H 0575H 0002H 000BH
	sb	0f917h.0

;;	NOP(3);
CLINEA 0000H 0001H 0577H 0002H 0008H
	mov	r0,	#03h
	bl	_NOP

;;	PFRUN = 0;
CLINEA 0000H 0001H 057AH 0002H 000BH
	rb	0f973h.0

;;	PERUN = 0;
CLINEA 0000H 0001H 057BH 0002H 000BH
	rb	0f937h.0

;;	PDRUN = 0;
CLINEA 0000H 0001H 057CH 0002H 000BH
	rb	0f927h.0

;;	PCRUN = 0;
CLINEA 0000H 0001H 057DH 0002H 000BH
	rb	0f917h.0

;;	PWF0D = PWMSafeDuty; //Can't be running to change
CLINEA 0000H 0001H 057FH 0002H 0032H
	l	er0,	NEAR _PWMSafeDuty
	st	er0,	0f962h

;;	PWED = PWMSafeDuty;
CLINEA 0000H 0001H 0580H 0002H 0014H
	st	er0,	0f932h

;;	PWDD = PWMSafeDuty;
CLINEA 0000H 0001H 0581H 0002H 0014H
	st	er0,	0f922h

;;	PWCD = PWMSafeDuty;
CLINEA 0000H 0001H 0582H 0002H 0014H
	st	er0,	0f912h

;;	PFRUN = 1;
CLINEA 0000H 0001H 0584H 0002H 000BH
	sb	0f973h.0

;;	PERUN = 1;
CLINEA 0000H 0001H 0585H 0002H 000BH
	sb	0f937h.0

;;	PDRUN = 1;
CLINEA 0000H 0001H 0586H 0002H 000BH
	sb	0f927h.0

;;	PCRUN = 1;
CLINEA 0000H 0001H 0587H 0002H 000BH
	sb	0f917h.0

;;	Mag_PIDCounter = 0;
CLINEA 0000H 0001H 0589H 0002H 0014H
	mov	er0,	#0 
	st	er0,	NEAR _Mag_PIDCounter

;;	CF_Gyro_Counter = 0;
CLINEA 0000H 0001H 058AH 0002H 0015H
	st	er0,	NEAR _CF_Gyro_Counter
	st	er0,	NEAR _CF_Gyro_Counter+02h

;;	Accel_PID_XRollCounter = 0;
CLINEA 0000H 0001H 058BH 0002H 001CH
	st	er0,	NEAR _Accel_PID_XRollCounter

;;	Accel_PID_YPitchCounter = 0;
CLINEA 0000H 0001H 058CH 0002H 001DH
	st	er0,	NEAR _Accel_PID_YPitchCounter

;;	Range_PIDCounter = 0;
CLINEA 0000H 0001H 058DH 0002H 0016H
	st	er0,	NEAR _Range_PIDCounter

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 0590H 0002H 0017H
_$L224 :
CBLOCK 228 5 1425

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 0592H 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 228 5 1427

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0590H 0002H 0017H
	add	er0,	#1 
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L224

;;	sprintf(SensorReturn, "Motor Calibration Complete!");
CLINEA 0000H 0001H 0594H 0002H 0036H
	mov	r0,	#BYTE1 OFFSET $$S228
	mov	r1,	#BYTE2 OFFSET $$S228
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#4 

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 0595H 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 0596H 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0598H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 0599H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 059AH 0002H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#096h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 059BH 0001H 0001H
	bal	_$L234

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 059BH 0002H 0019H
_$L231 :
CBLOCK 228 6 1435

;;		NOP1000();
CLINEA 0000H 0001H 059CH 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 059DH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 228 6 1438

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 059BH 0001H 0001H
_$L234 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L231
CBLOCKEND 228 2 1439

;;}
CLINEA 0000H 0001H 059FH 0001H 0001H
	pop	pc
CBLOCKEND 228 1 1439
CFUNCTIONEND 228


	rseg $$CalibrateGyro$main
CFUNCTION 229

_CalibrateGyro	:
CBLOCK 229 1 1442

;;void CalibrateGyro(void){
CLINEA 0000H 0001H 05A2H 0001H 0019H
	push	lr
	push	er4
CBLOCK 229 2 1442
CRET 0002H
CLOCAL 47H 0002H 0026H 0002H "i" 02H 00H 01H

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 05A6H 0002H 0017H
	mov	er0,	#0 
_$L238 :
CBLOCK 229 3 1447

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 05A8H 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 229 3 1449

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 05A6H 0002H 0017H
	add	er0,	#1 
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L238

;;	sprintf(SensorReturn, "Gyro Calibration: Please Keep the Quad Flat and Return Any 2 chars to Start");
CLINEA 0000H 0001H 05AAH 0002H 0066H
	mov	r0,	#BYTE1 OFFSET $$S242
	mov	r1,	#BYTE2 OFFSET $$S242
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#4 

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 05ACH 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 05ADH 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 05AFH 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 05B0H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 05B1H 0002H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#096h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05B2H 0001H 0001H
	bal	_$L272

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05B2H 0002H 0019H
_$L245 :
CBLOCK 229 4 1458

;;		NOP1000();
CLINEA 0000H 0001H 05B3H 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 05B4H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 229 4 1461

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05B2H 0001H 0001H
_$L272 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L245

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 05B8H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 05B9H 0002H 000DH
	bl	_uart_stop

;;	uart_startReceive(RecWorld, 2, _funcUartFin);
CLINEA 0000H 0001H 05BAH 0002H 002EH
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#2 
	mov	r0,	#BYTE1 OFFSET _RecWorld
	mov	r1,	#BYTE2 OFFSET _RecWorld
	bl	_uart_startReceive
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05BBH 0001H 0001H
	bal	_$L273

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05BBH 0002H 0019H
_$L249 :
CBLOCK 229 5 1467

;;		main_clrWDT();
CLINEA 0000H 0001H 05BCH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 229 5 1469

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05BBH 0001H 0001H
_$L273 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05BBH 000DH 0011H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L249

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0001H 05C0H 0006H 000BH
	mov	er4,	#0 

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 05C0H 0013H 0015H
_$L253 :
CBLOCK 229 6 1472

;;		_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 05C4H 0003H 003CH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;		i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 05C5H 0003H 0047H
	bl	_i2c_stop

;;		I20MD = 1;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 05C6H 0003H 0036H
	sb	0f2a4h.1

;;		i2c_startReceive(MPU6050Address, &AccGyro_ReadData, 1, &AccGyro_Data, 14, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 05C7H 0003H 007DH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#14
	push	er0
	mov	r0,	#BYTE1 OFFSET _AccGyro_Data
	mov	r1,	#BYTE2 OFFSET _AccGyro_Data
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _AccGyro_ReadData
	mov	r3,	#BYTE2 OFFSET _AccGyro_ReadData
	l	r0,	NEAR _MPU6050Address
	bl	_i2c_startReceive
	add	sp,	#8 

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 05C8H 0001H 0001H
	bal	_$L274

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 05C8H 0003H 0052H
_$L259 :
CBLOCK 229 7 1480

;;			main_clrWDT();	
CLINEA 0000H 0001H 05C9H 0004H 0012H
	bl	_main_clrWDT
CBLOCKEND 229 7 1482

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 05C8H 0001H 0001H
_$L274 :

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 05C8H 000DH 0011H
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L259

;;		Gyro_Xcal += (AccGyro_Data[8]<<8)+(AccGyro_Data[9]);
CLINEA 0000H 0001H 05CEH 0003H 0036H
	l	r0,	NEAR _AccGyro_Data+08h
	mov	r1,	#00h
	mov	r3,	r0
	mov	r2,	#00h
	l	r0,	NEAR _AccGyro_Data+09h
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	l	er0,	NEAR _Gyro_Xcal
	l	er2,	NEAR _Gyro_Xcal+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Gyro_Xcal
	st	er2,	NEAR _Gyro_Xcal+02h

;;		Gyro_Ycal += (AccGyro_Data[10]<<8)+(AccGyro_Data[11]);
CLINEA 0000H 0001H 05CFH 0003H 0038H
	l	r0,	NEAR _AccGyro_Data+0ah
	mov	r1,	#00h
	mov	r3,	r0
	mov	r2,	#00h
	l	r0,	NEAR _AccGyro_Data+0bh
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	l	er0,	NEAR _Gyro_Ycal
	l	er2,	NEAR _Gyro_Ycal+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Gyro_Ycal
	st	er2,	NEAR _Gyro_Ycal+02h

;;		Gyro_Zcal += (AccGyro_Data[12]<<8)+(AccGyro_Data[13]);
CLINEA 0000H 0001H 05D0H 0003H 0038H
	l	r0,	NEAR _AccGyro_Data+0ch
	mov	r1,	#00h
	mov	r3,	r0
	mov	r2,	#00h
	l	r0,	NEAR _AccGyro_Data+0dh
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	l	er0,	NEAR _Gyro_Zcal
	l	er2,	NEAR _Gyro_Zcal+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Gyro_Zcal
	st	er2,	NEAR _Gyro_Zcal+02h
CBLOCKEND 229 6 1489

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 05C0H 0013H 0015H
	add	er4,	#1 

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 05C0H 000DH 0011H
	cmp	r4,	#0ah
	cmpc	r5,	#00h
	bges	_$M16
	b	_$L253
_$M16 :

;;	Gyro_Xcal /= 10;
CLINEA 0000H 0001H 05D2H 0002H 0011H
	l	er0,	NEAR _Gyro_Xcal
	l	er2,	NEAR _Gyro_Xcal+02h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#020h
	mov	r3,	#041h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Gyro_Xcal
	st	er2,	NEAR _Gyro_Xcal+02h

;;	Gyro_Ycal /= 10;
CLINEA 0000H 0001H 05D3H 0002H 0011H
	l	er0,	NEAR _Gyro_Ycal
	l	er2,	NEAR _Gyro_Ycal+02h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#020h
	mov	r3,	#041h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Gyro_Ycal
	st	er2,	NEAR _Gyro_Ycal+02h

;;	Gyro_Zcal /= 10;
CLINEA 0000H 0001H 05D4H 0002H 0011H
	l	er0,	NEAR _Gyro_Zcal
	l	er2,	NEAR _Gyro_Zcal+02h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#020h
	mov	r3,	#041h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Gyro_Zcal
	st	er2,	NEAR _Gyro_Zcal+02h

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 05D7H 0002H 0017H
	mov	er0,	#0 
_$L263 :
CBLOCK 229 8 1496

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 05D9H 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 229 8 1498

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 05D7H 0002H 0017H
	add	er0,	#1 

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 05D7H 000DH 0011H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L263

;;	sprintf(SensorReturn, "Gyro Calibration Complete!");
CLINEA 0000H 0001H 05DBH 0002H 0035H
	mov	r0,	#BYTE1 OFFSET $$S267
	mov	r1,	#BYTE2 OFFSET $$S267
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#4 

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 05DCH 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 05DDH 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 05DFH 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 05E0H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 05E1H 0002H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#096h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05E2H 0001H 0001H
	bal	_$L275

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05E2H 0002H 0019H
_$L270 :
CBLOCK 229 9 1506

;;		NOP1000();
CLINEA 0000H 0001H 05E3H 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 05E4H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 229 9 1509

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05E2H 0001H 0001H
_$L275 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05E2H 000DH 0011H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L270
CBLOCKEND 229 2 1510

;;}
CLINEA 0000H 0001H 05E6H 0001H 0001H
	pop	er4
	pop	pc
CBLOCKEND 229 1 1510
CFUNCTIONEND 229


	rseg $$CalibrateAccel$main
CFUNCTION 230

_CalibrateAccel	:
CBLOCK 230 1 1512

;;void CalibrateAccel(void){
CLINEA 0000H 0001H 05E8H 0001H 001AH
	push	lr
	push	er8
CBLOCK 230 2 1512
CRET 0002H
CLOCAL 47H 0002H 0028H 0002H "i" 02H 00H 01H

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 05ECH 0002H 0017H
	mov	er0,	#0 
_$L279 :
CBLOCK 230 3 1517

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 05EEH 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 230 3 1519

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 05ECH 0002H 0017H
	add	er0,	#1 

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 05ECH 000DH 0011H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L279

;;	sprintf(SensorReturn, "Accel Calibration: Keep Quad Flat! Return any 2 chars to Start");
CLINEA 0000H 0001H 05F0H 0002H 0059H
	mov	r0,	#BYTE1 OFFSET $$S283
	mov	r1,	#BYTE2 OFFSET $$S283
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#4 

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 05F1H 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 05F2H 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 05F4H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 05F5H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 05F6H 0002H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#096h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05F7H 0001H 0001H
	bal	_$L369

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05F7H 0002H 0019H
_$L286 :
CBLOCK 230 4 1527

;;		NOP1000();
CLINEA 0000H 0001H 05F8H 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 05F9H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 230 4 1530

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05F7H 0001H 0001H
_$L369 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05F7H 000DH 0011H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L286

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 05FCH 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 05FDH 0002H 000DH
	bl	_uart_stop

;;	uart_startReceive(RecWorld, 2, _funcUartFin);
CLINEA 0000H 0001H 05FEH 0002H 002EH
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#2 
	mov	r0,	#BYTE1 OFFSET _RecWorld
	mov	r1,	#BYTE2 OFFSET _RecWorld
	bl	_uart_startReceive
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05FFH 0001H 0001H
	bal	_$L370

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05FFH 0002H 0019H
_$L290 :
CBLOCK 230 5 1535

;;		main_clrWDT();
CLINEA 0000H 0001H 0600H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 230 5 1537

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05FFH 0001H 0001H
_$L370 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 05FFH 000DH 0011H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L290

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0001H 0603H 0006H 000BH
	mov	er8,	#0 

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 0603H 0013H 0015H
_$L294 :
CBLOCK 230 6 1539

;;		_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 0607H 0003H 003CH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;		i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 0608H 0003H 0047H
	bl	_i2c_stop

;;		I20MD = 1;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 0609H 0003H 0036H
	sb	0f2a4h.1

;;		i2c_startReceive(MPU6050Address, &AccGyro_ReadData, 1, &AccGyro_Data, 14, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 060AH 0003H 007DH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#14
	push	er0
	mov	r0,	#BYTE1 OFFSET _AccGyro_Data
	mov	r1,	#BYTE2 OFFSET _AccGyro_Data
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _AccGyro_ReadData
	mov	r3,	#BYTE2 OFFSET _AccGyro_ReadData
	l	r0,	NEAR _MPU6050Address
	bl	_i2c_startReceive
	add	sp,	#8 

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 060BH 0001H 0001H
	bal	_$L371

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 060BH 0003H 0052H
_$L300 :
CBLOCK 230 7 1547

;;			main_clrWDT();	
CLINEA 0000H 0001H 060CH 0004H 0012H
	bl	_main_clrWDT
CBLOCKEND 230 7 1549

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 060BH 0001H 0001H
_$L371 :

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 060BH 000DH 0011H
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L300

;;		Accel_Xcal[1] += (AccGyro_Data[0]<<8)+(AccGyro_Data[1]);
CLINEA 0000H 0001H 0612H 0003H 003AH
	l	r0,	NEAR _AccGyro_Data+01h
	mov	r1,	#00h
	l	r2,	NEAR _AccGyro_Data
	mov	r3,	r2
	mov	r2,	#00h
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	pop	xr0
	push	xr0
	l	er0,	NEAR _Accel_Xcal+04h
	l	er2,	NEAR _Accel_Xcal+06h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Xcal+04h
	st	er2,	NEAR _Accel_Xcal+06h

;;		Accel_Ycal[1] += (AccGyro_Data[2]<<8)+(AccGyro_Data[3]);
CLINEA 0000H 0001H 0613H 0003H 003AH
	l	r0,	NEAR _AccGyro_Data+02h
	mov	r1,	#00h
	mov	r3,	r0
	mov	r2,	#00h
	l	r0,	NEAR _AccGyro_Data+03h
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	pop	xr0
	push	xr0
	l	er0,	NEAR _Accel_Ycal+04h
	l	er2,	NEAR _Accel_Ycal+06h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Ycal+04h
	st	er2,	NEAR _Accel_Ycal+06h
CBLOCKEND 230 6 1556

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 0603H 0013H 0015H
	add	er8,	#1 

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 0603H 000DH 0011H
	cmp	r8,	#0ah
	cmpc	r9,	#00h
	bges	_$M18
	b	_$L294
_$M18 :

;;	Accel_Xcal[1] /= 10;
CLINEA 0000H 0001H 0615H 0002H 0015H
	l	er0,	NEAR _Accel_Xcal+04h
	l	er2,	NEAR _Accel_Xcal+06h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#020h
	mov	r3,	#041h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Xcal+04h
	st	er2,	NEAR _Accel_Xcal+06h

;;	Accel_Ycal[1] /= 10;
CLINEA 0000H 0001H 0616H 0002H 0015H
	l	er0,	NEAR _Accel_Ycal+04h
	l	er2,	NEAR _Accel_Ycal+06h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#020h
	mov	r3,	#041h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Ycal+04h
	st	er2,	NEAR _Accel_Ycal+06h

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 0618H 0002H 0017H
	mov	er0,	#0 
_$L304 :
CBLOCK 230 8 1561

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 061AH 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 230 8 1563

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0618H 0002H 0017H
	add	er0,	#1 

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0618H 000DH 0012H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L304

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 061EH 0006H 000BH
	mov	er0,	#0 

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 061EH 0014H 0016H
_$L310 :
CBLOCK 230 9 1567

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 0620H 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 230 9 1569

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 061EH 0014H 0016H
	add	er0,	#1 

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 061EH 000DH 0012H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L310

;;	sprintf(SensorReturn, "Accel Calibration: Tilt the Quad 90deg in the ROLL Direction! Return any 2 chars to Start");
CLINEA 0000H 0001H 0622H 0002H 0074H
	mov	r0,	#BYTE1 OFFSET $$S314
	mov	r1,	#BYTE2 OFFSET $$S314
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#4 

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 0623H 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 0624H 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0626H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 0627H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 0628H 0002H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#096h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0629H 0001H 0001H
	bal	_$L372

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0629H 0002H 0019H
_$L317 :
CBLOCK 230 10 1577

;;		NOP1000();
CLINEA 0000H 0001H 062AH 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 062BH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 230 10 1580

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0629H 0001H 0001H
_$L372 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0629H 000DH 0012H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L317

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 062EH 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 062FH 0002H 000DH
	bl	_uart_stop

;;	uart_startReceive(RecWorld, 2, _funcUartFin);
CLINEA 0000H 0001H 0630H 0002H 002EH
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#2 
	mov	r0,	#BYTE1 OFFSET _RecWorld
	mov	r1,	#BYTE2 OFFSET _RecWorld
	bl	_uart_startReceive
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0631H 0001H 0001H
	bal	_$L373

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0631H 0002H 0019H
_$L321 :
CBLOCK 230 11 1585

;;		main_clrWDT();
CLINEA 0000H 0001H 0632H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 230 11 1587

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0631H 0001H 0001H
_$L373 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0631H 000DH 0011H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L321

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0001H 0635H 0006H 000BH
	mov	er8,	#0 

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 0635H 0013H 0015H
_$L325 :
CBLOCK 230 12 1589

;;		_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 0639H 0003H 003CH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;		i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 063AH 0003H 0047H
	bl	_i2c_stop

;;		I20MD = 1;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 063BH 0003H 0036H
	sb	0f2a4h.1

;;		i2c_startReceive(MPU6050Address, &AccGyro_ReadData, 1, &AccGyro_Data, 14, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 063CH 0003H 007DH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#14
	push	er0
	mov	r0,	#BYTE1 OFFSET _AccGyro_Data
	mov	r1,	#BYTE2 OFFSET _AccGyro_Data
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _AccGyro_ReadData
	mov	r3,	#BYTE2 OFFSET _AccGyro_ReadData
	l	r0,	NEAR _MPU6050Address
	bl	_i2c_startReceive
	add	sp,	#8 

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 063DH 0001H 0001H
	bal	_$L374

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 063DH 0003H 0052H
_$L331 :
CBLOCK 230 13 1597

;;			main_clrWDT();	
CLINEA 0000H 0001H 063EH 0004H 0012H
	bl	_main_clrWDT
CBLOCKEND 230 13 1599

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 063DH 0001H 0001H
_$L374 :

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 063DH 000DH 0011H
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L331

;;		Accel_Zcal[1] += (AccGyro_Data[4]<<8)+(AccGyro_Data[5]);
CLINEA 0000H 0001H 0644H 0003H 003AH
	l	r0,	NEAR _AccGyro_Data+04h
	mov	r1,	#00h
	mov	r3,	r0
	mov	r2,	#00h
	l	r0,	NEAR _AccGyro_Data+05h
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	pop	xr0
	push	xr0
	l	er0,	NEAR _Accel_Zcal+04h
	l	er2,	NEAR _Accel_Zcal+06h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Zcal+04h
	st	er2,	NEAR _Accel_Zcal+06h

;;		Accel_Ycal[2] += (AccGyro_Data[2]<<8)+(AccGyro_Data[3]);
CLINEA 0000H 0001H 0645H 0003H 003AH
	l	r0,	NEAR _AccGyro_Data+02h
	mov	r1,	#00h
	mov	r3,	r0
	mov	r2,	#00h
	l	r0,	NEAR _AccGyro_Data+03h
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	pop	xr0
	push	xr0
	l	er0,	NEAR _Accel_Ycal+08h
	l	er2,	NEAR _Accel_Ycal+0ah
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Ycal+08h
	st	er2,	NEAR _Accel_Ycal+0ah
CBLOCKEND 230 12 1606

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 0635H 0013H 0015H
	add	er8,	#1 

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 0635H 000DH 0011H
	cmp	r8,	#0ah
	cmpc	r9,	#00h
	bges	_$M19
	b	_$L325
_$M19 :

;;	Accel_Zcal[1] /= 10;
CLINEA 0000H 0001H 0647H 0002H 0015H
	l	er0,	NEAR _Accel_Zcal+04h
	l	er2,	NEAR _Accel_Zcal+06h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#020h
	mov	r3,	#041h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Zcal+04h
	st	er2,	NEAR _Accel_Zcal+06h

;;	Accel_Ycal[2] /= 10;
CLINEA 0000H 0001H 0648H 0002H 0015H
	l	er0,	NEAR _Accel_Ycal+08h
	l	er2,	NEAR _Accel_Ycal+0ah
	push	xr0
	mov	er0,	#0 
	mov	r2,	#020h
	mov	r3,	#041h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Ycal+08h
	st	er2,	NEAR _Accel_Ycal+0ah

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 064BH 0002H 0017H
	mov	er0,	#0 
_$L335 :
CBLOCK 230 14 1612

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 064DH 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 230 14 1614

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 064BH 0002H 0017H
	add	er0,	#1 

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 064BH 000DH 0011H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L335

;;	sprintf(SensorReturn, "Accel Calibration: Tilt the Quad 90deg in the PITCH direction! Return any 2 chars to Start");
CLINEA 0000H 0001H 064FH 0002H 0075H
	mov	r0,	#BYTE1 OFFSET $$S339
	mov	r1,	#BYTE2 OFFSET $$S339
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#4 

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 0650H 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 0651H 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0653H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 0654H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 0655H 0002H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#096h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0656H 0001H 0001H
	bal	_$L375

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0656H 0002H 0019H
_$L342 :
CBLOCK 230 15 1622

;;		NOP1000();
CLINEA 0000H 0001H 0657H 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 0658H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 230 15 1625

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0656H 0001H 0001H
_$L375 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0656H 000DH 0011H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L342

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 065BH 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 065CH 0002H 000DH
	bl	_uart_stop

;;	uart_startReceive(RecWorld, 2, _funcUartFin);
CLINEA 0000H 0001H 065DH 0002H 002EH
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#2 
	mov	r0,	#BYTE1 OFFSET _RecWorld
	mov	r1,	#BYTE2 OFFSET _RecWorld
	bl	_uart_startReceive
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 065EH 0001H 0001H
	bal	_$L376

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 065EH 0002H 0019H
_$L346 :
CBLOCK 230 16 1630

;;		main_clrWDT();
CLINEA 0000H 0001H 065FH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 230 16 1632

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 065EH 0001H 0001H
_$L376 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 065EH 000DH 0011H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L346

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0001H 0662H 0006H 000BH
	mov	er8,	#0 

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 0662H 0013H 0015H
_$L350 :
CBLOCK 230 17 1634

;;		_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 0666H 0003H 003CH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;		i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 0667H 0003H 0047H
	bl	_i2c_stop

;;		I20MD = 1;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 0668H 0003H 0036H
	sb	0f2a4h.1

;;		i2c_startReceive(MPU6050Address, &AccGyro_ReadData, 1, &AccGyro_Data, 14, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 0669H 0003H 007DH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#14
	push	er0
	mov	r0,	#BYTE1 OFFSET _AccGyro_Data
	mov	r1,	#BYTE2 OFFSET _AccGyro_Data
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _AccGyro_ReadData
	mov	r3,	#BYTE2 OFFSET _AccGyro_ReadData
	l	r0,	NEAR _MPU6050Address
	bl	_i2c_startReceive
	add	sp,	#8 

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 066AH 0001H 0001H
	bal	_$L377

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 066AH 0003H 0052H
_$L356 :
CBLOCK 230 18 1642

;;			main_clrWDT();	
CLINEA 0000H 0001H 066BH 0004H 0012H
	bl	_main_clrWDT
CBLOCKEND 230 18 1644

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 066AH 0001H 0001H
_$L377 :

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 066AH 000DH 0011H
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L356

;;		Accel_Zcal[2] += (AccGyro_Data[4]<<8)+(AccGyro_Data[5]);
CLINEA 0000H 0001H 0671H 0003H 003AH
	l	r0,	NEAR _AccGyro_Data+04h
	mov	r1,	#00h
	mov	r3,	r0
	mov	r2,	#00h
	l	r0,	NEAR _AccGyro_Data+05h
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	pop	xr0
	push	xr0
	l	er0,	NEAR _Accel_Zcal+08h
	l	er2,	NEAR _Accel_Zcal+0ah
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Zcal+08h
	st	er2,	NEAR _Accel_Zcal+0ah

;;		Accel_Xcal[2] += (AccGyro_Data[0]<<8)+(AccGyro_Data[1]);
CLINEA 0000H 0001H 0672H 0003H 003AH
	l	r0,	NEAR _AccGyro_Data+01h
	mov	r1,	#00h
	l	r2,	NEAR _AccGyro_Data
	mov	r3,	r2
	mov	r2,	#00h
	add	er0,	er2
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	pop	xr0
	push	xr0
	l	er0,	NEAR _Accel_Xcal+08h
	l	er2,	NEAR _Accel_Xcal+0ah
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Xcal+08h
	st	er2,	NEAR _Accel_Xcal+0ah
CBLOCKEND 230 17 1651

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 0662H 0013H 0015H
	add	er8,	#1 

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 0662H 000DH 0011H
	cmp	r8,	#0ah
	cmpc	r9,	#00h
	bges	_$M20
	b	_$L350
_$M20 :

;;	Accel_Zcal[2] /= 10;
CLINEA 0000H 0001H 0674H 0002H 0015H
	l	er0,	NEAR _Accel_Zcal+08h
	l	er2,	NEAR _Accel_Zcal+0ah
	push	xr0
	mov	er0,	#0 
	mov	r2,	#020h
	mov	r3,	#041h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Zcal+08h
	st	er2,	NEAR _Accel_Zcal+0ah

;;	Accel_Xcal[2] /= 10;
CLINEA 0000H 0001H 0675H 0002H 0015H
	l	er0,	NEAR _Accel_Xcal+08h
	l	er2,	NEAR _Accel_Xcal+0ah
	push	xr0
	mov	er0,	#0 
	mov	r2,	#020h
	mov	r3,	#041h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Xcal+08h
	st	er2,	NEAR _Accel_Xcal+0ah

;;	Accel_Xcal[0] = (Accel_Xcal[1]+Accel_Xcal[2])/2;
CLINEA 0000H 0001H 0678H 0002H 0031H
	l	er0,	NEAR _Accel_Xcal+04h
	l	er2,	NEAR _Accel_Xcal+06h
	push	xr0
	l	er0,	NEAR _Accel_Xcal+08h
	l	er2,	NEAR _Accel_Xcal+0ah
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	mov	er0,	#0 
	mov	r2,	#00h
	mov	r3,	#040h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Xcal
	st	er2,	NEAR _Accel_Xcal+02h

;;	Accel_Ycal[0] = (Accel_Ycal[1]+Accel_Ycal[2])/2;
CLINEA 0000H 0001H 0679H 0002H 0031H
	l	er0,	NEAR _Accel_Ycal+04h
	l	er2,	NEAR _Accel_Ycal+06h
	push	xr0
	l	er0,	NEAR _Accel_Ycal+08h
	l	er2,	NEAR _Accel_Ycal+0ah
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	mov	er0,	#0 
	mov	r2,	#00h
	mov	r3,	#040h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Ycal
	st	er2,	NEAR _Accel_Ycal+02h

;;	Accel_Zcal[0] = (Accel_Zcal[1]+Accel_Zcal[2])/2;
CLINEA 0000H 0001H 067AH 0002H 0031H
	l	er0,	NEAR _Accel_Zcal+04h
	l	er2,	NEAR _Accel_Zcal+06h
	push	xr0
	l	er0,	NEAR _Accel_Zcal+08h
	l	er2,	NEAR _Accel_Zcal+0ah
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	mov	er0,	#0 
	mov	r2,	#00h
	mov	r3,	#040h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Zcal
	st	er2,	NEAR _Accel_Zcal+02h

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 067DH 0002H 0017H
	mov	er0,	#0 
_$L360 :
CBLOCK 230 19 1662

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 067FH 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 230 19 1664

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 067DH 0002H 0017H
	add	er0,	#1 

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 067DH 000DH 0011H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L360

;;	sprintf(SensorReturn, "Accel Calibration Complete!");
CLINEA 0000H 0001H 0681H 0002H 0036H
	mov	r0,	#BYTE1 OFFSET $$S364
	mov	r1,	#BYTE2 OFFSET $$S364
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#4 

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 0682H 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 0683H 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0685H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 0686H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 0687H 0002H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#096h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0688H 0001H 0001H
	bal	_$L378

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0688H 0002H 0019H
_$L367 :
CBLOCK 230 20 1672

;;		NOP1000();
CLINEA 0000H 0001H 0689H 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 068AH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 230 20 1675

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0688H 0001H 0001H
_$L378 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0688H 000DH 0011H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L367
CBLOCKEND 230 2 1676

;;}
CLINEA 0000H 0001H 068CH 0001H 0001H
	pop	er8
	pop	pc
CBLOCKEND 230 1 1676
CFUNCTIONEND 230


	rseg $$SerialOutCoefficients$main
CFUNCTION 231

_SerialOutCoefficients	:
CBLOCK 231 1 1680

;;{
CLINEA 0000H 0001H 0690H 0001H 0001H
	push	lr
CBLOCK 231 2 1680
CRET 0000H
CLOCAL 47H 0002H 0024H 0002H "j" 02H 00H 01H

;;		for(j = 0; j<150; j++)
CLINEA 0000H 0001H 0693H 0003H 0018H
	mov	er0,	#0 
_$L382 :
CBLOCK 231 3 1684

;;			SensorReturn[j] = 0x20;
CLINEA 0000H 0001H 0695H 0004H 001AH
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 231 3 1686

;;		for(j = 0; j<150; j++)
CLINEA 0000H 0000H 0693H 0003H 0018H
	add	er0,	#1 

;;		for(j = 0; j<150; j++)
CLINEA 0000H 0000H 0693H 000DH 0011H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L382

;;		sprintf(SensorReturn, "Current Settings: kp=%f,ki=%f,kd=%f,a1=%f,a2=%f", Accel_PID_XRoll_kp, Accel_PID_XRoll_ki, Accel_PID_XRoll_kd, CF_HPF, CF_LPF);
CLINEA 0000H 0001H 0698H 0003H 0097H
	l	er0,	NEAR _CF_LPF
	l	er2,	NEAR _CF_LPF+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _CF_HPF
	l	er2,	NEAR _CF_HPF+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Accel_PID_XRoll_kd
	l	er2,	NEAR _Accel_PID_XRoll_kd+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Accel_PID_XRoll_ki
	l	er2,	NEAR _Accel_PID_XRoll_ki+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Accel_PID_XRoll_kp
	l	er2,	NEAR _Accel_PID_XRoll_kp+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	mov	r0,	#BYTE1 OFFSET $$S386
	mov	r1,	#BYTE2 OFFSET $$S386
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#44

;;		SensorReturn[148] = 0x0D;	//CR
CLINEA 0000H 0001H 069AH 0003H 0020H
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;		SensorReturn[149] = 0x0A;	//LF
CLINEA 0000H 0001H 069BH 0003H 0020H
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 069EH 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 069FH 0003H 000EH
	bl	_uart_stop

;;		uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 06A0H 0003H 0032H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#096h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 06A1H 0001H 0001H
	bal	_$L391

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 06A1H 0003H 001AH
_$L389 :
CBLOCK 231 4 1697

;;			main_clrWDT();
CLINEA 0000H 0001H 06A2H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 231 4 1699

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 06A1H 0001H 0001H
_$L391 :

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 06A1H 000DH 0011H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L389
CBLOCKEND 231 2 1700

;;}
CLINEA 0000H 0001H 06A4H 0001H 0001H
	pop	pc
CBLOCKEND 231 1 1700
CFUNCTIONEND 231


	rseg $$UARTTunePID$main
CFUNCTION 232

_UARTTunePID	:
CBLOCK 232 1 1704

;;{
CLINEA 0000H 0001H 06A8H 0001H 0001H
	push	lr
	push	xr4
CBLOCK 232 2 1704
CRET 0004H
CLOCAL 47H 0002H 0024H 0002H "k" 02H 00H 01H
CLOCAL 47H 0002H 0024H 0002H "i" 02H 00H 01H
CLOCAL 47H 0002H 0027H 0002H "j" 02H 00H 01H

;;UARTTunePID:
CLINEA 0000H 0001H 06AEH 0001H 000CH
CLABEL 0189H "UARTTunePID"
_$L393 :

;;		for (k=0;k<7;k++)
CLINEA 0000H 0001H 06AFH 0008H 000BH
	mov	er0,	#0 

;;		for (k=0;k<7;k++)
CLINEA 0000H 0000H 06AFH 0010H 0012H
_$L396 :
CBLOCK 232 3 1712

;;			RecWorld[k] = 0;	//ie: to set ki to 1.5 =>send ki1.50000
CLINEA 0000H 0001H 06B1H 0004H 003BH
	mov	r2,	#00h
	st	r2,	NEAR _RecWorld[er0]
CBLOCKEND 232 3 1714

;;		for (k=0;k<7;k++)
CLINEA 0000H 0000H 06AFH 0010H 0012H
	add	er0,	#1 

;;		for (k=0;k<7;k++)
CLINEA 0000H 0000H 06AFH 000CH 000FH
	cmp	r0,	#07h
	cmpc	r1,	#00h
	blts	_$L396

;;		ETM8 = 0; //Turn OFF TIMER8/9 ISR for this function...
CLINEA 0000H 0001H 06B4H 0003H 0038H
	rb	0f013h.2

;;		ETM9 = 0; //Turn OFF TIMER8/9 ISR for this function...
CLINEA 0000H 0001H 06B5H 0003H 0038H
	rb	0f013h.3

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 06B8H 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 06B9H 0003H 000EH
	bl	_uart_stop

;;		uart_startReceive(RecWorld, 8, _funcUartFin);
CLINEA 0000H 0001H 06BAH 0003H 002FH
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#8 
	mov	r0,	#BYTE1 OFFSET _RecWorld
	mov	r1,	#BYTE2 OFFSET _RecWorld
	bl	_uart_startReceive
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 06BBH 0001H 0001H
	bal	_$L467

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 06BBH 0003H 001AH
_$L402 :
CBLOCK 232 4 1723

;;			main_clrWDT();
CLINEA 0000H 0001H 06BCH 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 232 4 1725

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 06BBH 0001H 0001H
_$L467 :

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 06BBH 000CH 000FH
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L402

;;		if(RecWorld[0] == 0x44){			//if RECWORLD == "DD" for Data Dump
CLINEA 0000H 0001H 06C0H 0003H 0040H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#044h
	beq	_$M23
	b	_$L406
_$M23 :
CBLOCK 232 5 1728

;;			if(RecWorld[1] == 0x44){
CLINEA 0000H 0001H 06C1H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#044h
	beq	_$M24
	b	_$L406
_$M24 :
CBLOCK 232 6 1729

;;				ArrayCounter = 0;
CLINEA 0000H 0001H 06C2H 0005H 0015H
	mov	er0,	#0 
	st	er0,	NEAR _ArrayCounter

;;				for(i = 0; i<200; i++)
CLINEA 0000H 0001H 06C3H 0005H 001AH
_$L410 :
CBLOCK 232 7 1732

;;					SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 06C5H 0006H 001CH
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 232 7 1734

;;				for(i = 0; i<200; i++)
CLINEA 0000H 0000H 06C3H 0005H 001AH
	add	er0,	#1 

;;				for(i = 0; i<200; i++)
CLINEA 0000H 0000H 06C3H 000CH 000FH
	cmp	r0,	#0c8h
	cmpc	r1,	#00h
	blts	_$L410

;;				sprintf(SensorReturn, "CFx,CFy,Mot1,Mot2,Mot3,Mot4");
CLINEA 0000H 0001H 06C7H 0005H 0039H
	mov	r0,	#BYTE1 OFFSET $$S414
	mov	r1,	#BYTE2 OFFSET $$S414
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#4 

;;				SensorReturn[198] = 0x0D;
CLINEA 0000H 0001H 06C8H 0005H 001DH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+0c6h

;;				SensorReturn[199] = 0x0A;
CLINEA 0000H 0001H 06C9H 0005H 001DH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+0c7h

;;				_flgUartFin = 0;
CLINEA 0000H 0001H 06CBH 0005H 0014H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;				uart_stop();
CLINEA 0000H 0001H 06CCH 0005H 0010H
	bl	_uart_stop

;;				uart_startSend(SensorReturn, 200, _funcUartFin);
CLINEA 0000H 0001H 06CDH 0005H 0034H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#0c8h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;				while(_flgUartFin != 1){
CLINEA 0000H 0000H 06CEH 0001H 0001H
	bal	_$L468

;;				while(_flgUartFin != 1){
CLINEA 0000H 0000H 06CEH 0005H 001CH
_$L417 :
CBLOCK 232 8 1742

;;					main_clrWDT();
CLINEA 0000H 0001H 06CFH 0006H 0013H
	bl	_main_clrWDT
CBLOCKEND 232 8 1744

;;				while(_flgUartFin != 1){
CLINEA 0000H 0000H 06CEH 0001H 0001H
_$L468 :

;;				while(_flgUartFin != 1){
CLINEA 0000H 0000H 06CEH 000CH 000FH
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L417

;;				main_clrWDT();
CLINEA 0000H 0001H 06D2H 0005H 0012H
	bl	_main_clrWDT

;;                for (j = 0; j < 100; j++){
CLINEA 0000H 0001H 06D4H 0011H 002AH
	mov	er6,	#0 
_$L421 :
CBLOCK 232 9 1748

;;					main_clrWDT();
CLINEA 0000H 0001H 06D5H 0006H 0013H
	bl	_main_clrWDT

;;					for(i = 0; i<200; i++)
CLINEA 0000H 0001H 06D6H 0006H 001BH
	mov	er0,	#0 
_$L427 :
CBLOCK 232 10 1751

;;						SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 06D8H 0007H 001DH
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 232 10 1753

;;					for(i = 0; i<200; i++)
CLINEA 0000H 0000H 06D6H 0006H 001BH
	add	er0,	#1 

;;					for(i = 0; i<200; i++)
CLINEA 0000H 0000H 06D6H 000CH 000FH
	cmp	r0,	#0c8h
	cmpc	r1,	#00h
	blts	_$L427

;;					sprintf(SensorReturn, "%u,%u,%u,%u,%u,%u", KeyCFData[0][j],KeyCFData[1][j],KeyMOTData[0][j],KeyMOTData[1][j],KeyMOTData[2][j],KeyMOTData[3][j]);
CLINEA 0000H 0001H 06DAH 0006H 0095H
	mov	er0,	er6
	add	er0,	er6
	l	er4,	NEAR _KeyMOTData+0276h[er0]
	push	er4
	l	er4,	NEAR _KeyMOTData+01a4h[er0]
	push	er4
	l	er4,	NEAR _KeyMOTData+0d2h[er0]
	push	er4
	l	er2,	NEAR _KeyMOTData[er0]
	push	er2
	l	er2,	NEAR _KeyCFData+0d2h[er0]
	push	er2
	l	er0,	NEAR _KeyCFData[er0]
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S431
	mov	r1,	#BYTE2 OFFSET $$S431
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#16

;;                    SensorReturn[198] = 0x0D;
CLINEA 0000H 0001H 06DBH 0015H 002DH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+0c6h

;;					SensorReturn[199] = 0x0A;
CLINEA 0000H 0001H 06DCH 0006H 001EH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+0c7h

;;					_flgUartFin = 0;
CLINEA 0000H 0001H 06DEH 0006H 0015H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;					uart_stop();
CLINEA 0000H 0001H 06DFH 0006H 0011H
	bl	_uart_stop

;;					uart_startSend(SensorReturn, 200, _funcUartFin);
CLINEA 0000H 0001H 06E0H 0006H 0035H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#0c8h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 06E1H 0006H 001DH
_$L434 :
CBLOCK 232 11 1761
CBLOCKEND 232 11 1763

;;					while(_flgUartFin != 1){
CLINEA 0000H 0000H 06E1H 000CH 000FH
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L434
CBLOCKEND 232 9 1764

;;                for (j = 0; j < 100; j++){
CLINEA 0000H 0000H 06D4H 0011H 002AH
	add	er6,	#1 

;;                for (j = 0; j < 100; j++){
CLINEA 0000H 0000H 06D4H 000CH 000FH
	cmp	r6,	#064h
	cmpc	r7,	#00h
	bges	_$M25
	b	_$L421
_$M25 :

;;				ArrayCounter = 0;
CLINEA 0000H 0001H 06E5H 0005H 0015H
	mov	er0,	#0 
	st	er0,	NEAR _ArrayCounter

;;				goto UARTTunePID;
CLINEA 0000H 0001H 06E6H 0005H 0015H
	b	_$L393
CBLOCKEND 232 6 1767

;;			}
CLINEA 0000H 0000H 06E7H 0004H 0004H
_$L406 :
CBLOCKEND 232 5 1768

;;		if(RecWorld[0] == 0x6B){			//if RECWORLD == "kp"
CLINEA 0000H 0001H 06EBH 0003H 0032H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#06bh
	bne	_$L438
CBLOCK 232 12 1771

;;			if(RecWorld[1] == 0x70){
CLINEA 0000H 0001H 06ECH 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#070h
	bne	_$L438
CBLOCK 232 13 1772

;;				NewVar_Str[0] = RecWorld[2];
CLINEA 0000H 0001H 06EDH 0005H 0020H
	l	r0,	NEAR _RecWorld+02h
	st	r0,	NEAR _NewVar_Str

;;				NewVar_Str[1] = RecWorld[3];
CLINEA 0000H 0001H 06EEH 0005H 0020H
	l	r0,	NEAR _RecWorld+03h
	st	r0,	NEAR _NewVar_Str+01h

;;				NewVar_Str[2] = RecWorld[4];
CLINEA 0000H 0001H 06EFH 0005H 0020H
	l	r0,	NEAR _RecWorld+04h
	st	r0,	NEAR _NewVar_Str+02h

;;				NewVar_Str[3] = RecWorld[5];
CLINEA 0000H 0001H 06F0H 0005H 0020H
	l	r0,	NEAR _RecWorld+05h
	st	r0,	NEAR _NewVar_Str+03h

;;				NewVar_Str[4] = RecWorld[6];
CLINEA 0000H 0001H 06F1H 0005H 0020H
	l	r0,	NEAR _RecWorld+06h
	st	r0,	NEAR _NewVar_Str+04h

;;				NewVar_Str[5] = RecWorld[7];
CLINEA 0000H 0001H 06F2H 0005H 0020H
	l	r0,	NEAR _RecWorld+07h
	st	r0,	NEAR _NewVar_Str+05h

;;				sscanf(NewVar_Str, "%f", &NewVar);
CLINEA 0000H 0001H 06F3H 0005H 0026H
	mov	r0,	#BYTE1 OFFSET _NewVar
	mov	r1,	#BYTE2 OFFSET _NewVar
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S204
	mov	r1,	#BYTE2 OFFSET $$S204
	push	er0
	mov	r0,	#BYTE1 OFFSET _NewVar_Str
	mov	r1,	#BYTE2 OFFSET _NewVar_Str
	push	er0
	bl	_sscanf_nn
	add	sp,	#6 

;;				Accel_PID_XRoll_kp = NewVar;
CLINEA 0000H 0001H 06F4H 0005H 0020H
	l	er0,	NEAR _NewVar
	l	er2,	NEAR _NewVar+02h
	st	er0,	NEAR _Accel_PID_XRoll_kp
	st	er2,	NEAR _Accel_PID_XRoll_kp+02h

;;				Accel_PID_YPitch_kp = NewVar;
CLINEA 0000H 0001H 06F5H 0005H 0021H
	st	er0,	NEAR _Accel_PID_YPitch_kp
	st	er2,	NEAR _Accel_PID_YPitch_kp+02h
CBLOCKEND 232 13 1782

;;			}
CLINEA 0000H 0000H 06F6H 0004H 0004H
_$L438 :
CBLOCKEND 232 12 1783

;;		if(RecWorld[0] == 0x6B){			//if RECWORLD == "ki"
CLINEA 0000H 0001H 06F9H 0003H 0032H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#06bh
	bne	_$L442
CBLOCK 232 14 1785

;;			if(RecWorld[1] == 0x69){
CLINEA 0000H 0001H 06FAH 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#069h
	bne	_$L442
CBLOCK 232 15 1786

;;				NewVar_Str[0] = RecWorld[2];
CLINEA 0000H 0001H 06FBH 0005H 0020H
	l	r0,	NEAR _RecWorld+02h
	st	r0,	NEAR _NewVar_Str

;;				NewVar_Str[1] = RecWorld[3];
CLINEA 0000H 0001H 06FCH 0005H 0020H
	l	r0,	NEAR _RecWorld+03h
	st	r0,	NEAR _NewVar_Str+01h

;;				NewVar_Str[2] = RecWorld[4];
CLINEA 0000H 0001H 06FDH 0005H 0020H
	l	r0,	NEAR _RecWorld+04h
	st	r0,	NEAR _NewVar_Str+02h

;;				NewVar_Str[3] = RecWorld[5];
CLINEA 0000H 0001H 06FEH 0005H 0020H
	l	r0,	NEAR _RecWorld+05h
	st	r0,	NEAR _NewVar_Str+03h

;;				NewVar_Str[4] = RecWorld[6];
CLINEA 0000H 0001H 06FFH 0005H 0020H
	l	r0,	NEAR _RecWorld+06h
	st	r0,	NEAR _NewVar_Str+04h

;;				NewVar_Str[5] = RecWorld[7];
CLINEA 0000H 0001H 0700H 0005H 0020H
	l	r0,	NEAR _RecWorld+07h
	st	r0,	NEAR _NewVar_Str+05h

;;				sscanf(NewVar_Str, "%f", &NewVar);
CLINEA 0000H 0001H 0701H 0005H 0026H
	mov	r0,	#BYTE1 OFFSET _NewVar
	mov	r1,	#BYTE2 OFFSET _NewVar
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S204
	mov	r1,	#BYTE2 OFFSET $$S204
	push	er0
	mov	r0,	#BYTE1 OFFSET _NewVar_Str
	mov	r1,	#BYTE2 OFFSET _NewVar_Str
	push	er0
	bl	_sscanf_nn
	add	sp,	#6 

;;				Accel_PID_XRoll_ki = NewVar;
CLINEA 0000H 0001H 0702H 0005H 0020H
	l	er0,	NEAR _NewVar
	l	er2,	NEAR _NewVar+02h
	st	er0,	NEAR _Accel_PID_XRoll_ki
	st	er2,	NEAR _Accel_PID_XRoll_ki+02h

;;				Accel_PID_YPitch_ki = NewVar;
CLINEA 0000H 0001H 0703H 0005H 0021H
	st	er0,	NEAR _Accel_PID_YPitch_ki
	st	er2,	NEAR _Accel_PID_YPitch_ki+02h
CBLOCKEND 232 15 1796

;;			}
CLINEA 0000H 0000H 0704H 0004H 0004H
_$L442 :
CBLOCKEND 232 14 1797

;;		if(RecWorld[0] == 0x6B){			//if RECWORLD == "kd"
CLINEA 0000H 0001H 0707H 0003H 0032H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#06bh
	bne	_$L446
CBLOCK 232 16 1799

;;			if(RecWorld[1] == 0x64){
CLINEA 0000H 0001H 0708H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#064h
	bne	_$L446
CBLOCK 232 17 1800

;;				NewVar_Str[0] = RecWorld[2];
CLINEA 0000H 0001H 0709H 0005H 0020H
	l	r0,	NEAR _RecWorld+02h
	st	r0,	NEAR _NewVar_Str

;;				NewVar_Str[1] = RecWorld[3];
CLINEA 0000H 0001H 070AH 0005H 0020H
	l	r0,	NEAR _RecWorld+03h
	st	r0,	NEAR _NewVar_Str+01h

;;				NewVar_Str[2] = RecWorld[4];
CLINEA 0000H 0001H 070BH 0005H 0020H
	l	r0,	NEAR _RecWorld+04h
	st	r0,	NEAR _NewVar_Str+02h

;;				NewVar_Str[3] = RecWorld[5];
CLINEA 0000H 0001H 070CH 0005H 0020H
	l	r0,	NEAR _RecWorld+05h
	st	r0,	NEAR _NewVar_Str+03h

;;				NewVar_Str[4] = RecWorld[6];
CLINEA 0000H 0001H 070DH 0005H 0020H
	l	r0,	NEAR _RecWorld+06h
	st	r0,	NEAR _NewVar_Str+04h

;;				NewVar_Str[5] = RecWorld[7];
CLINEA 0000H 0001H 070EH 0005H 0020H
	l	r0,	NEAR _RecWorld+07h
	st	r0,	NEAR _NewVar_Str+05h

;;				sscanf(NewVar_Str, "%f", &NewVar);
CLINEA 0000H 0001H 070FH 0005H 0026H
	mov	r0,	#BYTE1 OFFSET _NewVar
	mov	r1,	#BYTE2 OFFSET _NewVar
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S204
	mov	r1,	#BYTE2 OFFSET $$S204
	push	er0
	mov	r0,	#BYTE1 OFFSET _NewVar_Str
	mov	r1,	#BYTE2 OFFSET _NewVar_Str
	push	er0
	bl	_sscanf_nn
	add	sp,	#6 

;;				Accel_PID_XRoll_kd = NewVar;
CLINEA 0000H 0001H 0710H 0005H 0020H
	l	er0,	NEAR _NewVar
	l	er2,	NEAR _NewVar+02h
	st	er0,	NEAR _Accel_PID_XRoll_kd
	st	er2,	NEAR _Accel_PID_XRoll_kd+02h

;;				Accel_PID_YPitch_kd = NewVar;
CLINEA 0000H 0001H 0711H 0005H 0021H
	st	er0,	NEAR _Accel_PID_YPitch_kd
	st	er2,	NEAR _Accel_PID_YPitch_kd+02h
CBLOCKEND 232 17 1810

;;			}
CLINEA 0000H 0000H 0712H 0004H 0004H
_$L446 :
CBLOCKEND 232 16 1811

;;		if(RecWorld[0] == 0x61){			//if RECWORLD == "a1"
CLINEA 0000H 0001H 0715H 0003H 0032H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#061h
	beq	_$M26
	b	_$L450
_$M26 :
CBLOCK 232 18 1813

;;			if(RecWorld[1] == 0x31){
CLINEA 0000H 0001H 0716H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#031h
	bne	_$L450
CBLOCK 232 19 1814

;;				NewVar_Str[0] = RecWorld[2];
CLINEA 0000H 0001H 0717H 0005H 0020H
	l	r0,	NEAR _RecWorld+02h
	st	r0,	NEAR _NewVar_Str

;;				NewVar_Str[1] = RecWorld[3];
CLINEA 0000H 0001H 0718H 0005H 0020H
	l	r0,	NEAR _RecWorld+03h
	st	r0,	NEAR _NewVar_Str+01h

;;				NewVar_Str[2] = RecWorld[4];
CLINEA 0000H 0001H 0719H 0005H 0020H
	l	r0,	NEAR _RecWorld+04h
	st	r0,	NEAR _NewVar_Str+02h

;;				NewVar_Str[3] = RecWorld[5];
CLINEA 0000H 0001H 071AH 0005H 0020H
	l	r0,	NEAR _RecWorld+05h
	st	r0,	NEAR _NewVar_Str+03h

;;				NewVar_Str[4] = RecWorld[6];
CLINEA 0000H 0001H 071BH 0005H 0020H
	l	r0,	NEAR _RecWorld+06h
	st	r0,	NEAR _NewVar_Str+04h

;;				NewVar_Str[5] = RecWorld[7];
CLINEA 0000H 0001H 071CH 0005H 0020H
	l	r0,	NEAR _RecWorld+07h
	st	r0,	NEAR _NewVar_Str+05h

;;				sscanf(NewVar_Str, "%f", &NewVar);
CLINEA 0000H 0001H 071DH 0005H 0026H
	mov	r0,	#BYTE1 OFFSET _NewVar
	mov	r1,	#BYTE2 OFFSET _NewVar
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S204
	mov	r1,	#BYTE2 OFFSET $$S204
	push	er0
	mov	r0,	#BYTE1 OFFSET _NewVar_Str
	mov	r1,	#BYTE2 OFFSET _NewVar_Str
	push	er0
	bl	_sscanf_nn
	add	sp,	#6 

;;				CF_HPF = NewVar;
CLINEA 0000H 0001H 071EH 0005H 0014H
	l	er0,	NEAR _NewVar
	l	er2,	NEAR _NewVar+02h
	st	er0,	NEAR _CF_HPF
	st	er2,	NEAR _CF_HPF+02h

;;				CF_LPF = 1-NewVar;
CLINEA 0000H 0001H 071FH 0005H 0016H
	mov	er0,	#0 
	mov	r2,	#080h
	mov	r3,	#03fh
	push	xr0
	l	er0,	NEAR _NewVar
	l	er2,	NEAR _NewVar+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _CF_LPF
	st	er2,	NEAR _CF_LPF+02h
CBLOCKEND 232 19 1824

;;			}
CLINEA 0000H 0000H 0720H 0004H 0004H
_$L450 :
CBLOCKEND 232 18 1825

;;		if(RecWorld[0] == 0x61){			//if RECWORLD == "a2"
CLINEA 0000H 0001H 0723H 0003H 0032H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#061h
	beq	_$M27
	b	_$L454
_$M27 :
CBLOCK 232 20 1827

;;			if(RecWorld[1] == 0x32){
CLINEA 0000H 0001H 0724H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#032h
	bne	_$L454
CBLOCK 232 21 1828

;;				NewVar_Str[0] = RecWorld[2];
CLINEA 0000H 0001H 0725H 0005H 0020H
	l	r0,	NEAR _RecWorld+02h
	st	r0,	NEAR _NewVar_Str

;;				NewVar_Str[1] = RecWorld[3];
CLINEA 0000H 0001H 0726H 0005H 0020H
	l	r0,	NEAR _RecWorld+03h
	st	r0,	NEAR _NewVar_Str+01h

;;				NewVar_Str[2] = RecWorld[4];
CLINEA 0000H 0001H 0727H 0005H 0020H
	l	r0,	NEAR _RecWorld+04h
	st	r0,	NEAR _NewVar_Str+02h

;;				NewVar_Str[3] = RecWorld[5];
CLINEA 0000H 0001H 0728H 0005H 0020H
	l	r0,	NEAR _RecWorld+05h
	st	r0,	NEAR _NewVar_Str+03h

;;				NewVar_Str[4] = RecWorld[6];
CLINEA 0000H 0001H 0729H 0005H 0020H
	l	r0,	NEAR _RecWorld+06h
	st	r0,	NEAR _NewVar_Str+04h

;;				NewVar_Str[5] = RecWorld[7];
CLINEA 0000H 0001H 072AH 0005H 0020H
	l	r0,	NEAR _RecWorld+07h
	st	r0,	NEAR _NewVar_Str+05h

;;				sscanf(NewVar_Str, "%f", &NewVar);
CLINEA 0000H 0001H 072BH 0005H 0026H
	mov	r0,	#BYTE1 OFFSET _NewVar
	mov	r1,	#BYTE2 OFFSET _NewVar
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S204
	mov	r1,	#BYTE2 OFFSET $$S204
	push	er0
	mov	r0,	#BYTE1 OFFSET _NewVar_Str
	mov	r1,	#BYTE2 OFFSET _NewVar_Str
	push	er0
	bl	_sscanf_nn
	add	sp,	#6 

;;				CF_HPF = 1-NewVar;
CLINEA 0000H 0001H 072CH 0005H 0016H
	mov	er0,	#0 
	mov	r2,	#080h
	mov	r3,	#03fh
	push	xr0
	l	er0,	NEAR _NewVar
	l	er2,	NEAR _NewVar+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _CF_HPF
	st	er2,	NEAR _CF_HPF+02h

;;				CF_LPF = NewVar;
CLINEA 0000H 0001H 072DH 0005H 0014H
	l	er0,	NEAR _NewVar
	l	er2,	NEAR _NewVar+02h
	st	er0,	NEAR _CF_LPF
	st	er2,	NEAR _CF_LPF+02h
CBLOCKEND 232 21 1838

;;			}
CLINEA 0000H 0000H 072EH 0004H 0004H
_$L454 :
CBLOCKEND 232 20 1839

;;		for(k = 0; k<150; k++)
CLINEA 0000H 0001H 0731H 0007H 000CH
	mov	er0,	#0 

;;		for(k = 0; k<150; k++)
CLINEA 0000H 0000H 0731H 0015H 0017H
_$L458 :
CBLOCK 232 22 1842

;;			SensorReturn[k] = 0x20;
CLINEA 0000H 0001H 0733H 0004H 001AH
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 232 22 1844

;;		for(k = 0; k<150; k++)
CLINEA 0000H 0000H 0731H 0015H 0017H
	add	er0,	#1 

;;		for(k = 0; k<150; k++)
CLINEA 0000H 0000H 0731H 000EH 0013H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L458

;;		sprintf(SensorReturn, "New Settings: kp=%f,ki=%f,kd=%f,a1=%f,a2=%f", Accel_PID_XRoll_kp, Accel_PID_XRoll_ki, Accel_PID_XRoll_kd, CF_HPF, CF_LPF);
CLINEA 0000H 0001H 0736H 0003H 0093H
	l	er0,	NEAR _CF_LPF
	l	er2,	NEAR _CF_LPF+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _CF_HPF
	l	er2,	NEAR _CF_HPF+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Accel_PID_XRoll_kd
	l	er2,	NEAR _Accel_PID_XRoll_kd+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Accel_PID_XRoll_ki
	l	er2,	NEAR _Accel_PID_XRoll_ki+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Accel_PID_XRoll_kp
	l	er2,	NEAR _Accel_PID_XRoll_kp+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	mov	r0,	#BYTE1 OFFSET $$S462
	mov	r1,	#BYTE2 OFFSET $$S462
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#44

;;		SensorReturn[148] = 0x0D;	//CR
CLINEA 0000H 0001H 0738H 0003H 0020H
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;		SensorReturn[149] = 0x0A;	//LF
CLINEA 0000H 0001H 0739H 0003H 0020H
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 073CH 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 073DH 0003H 000EH
	bl	_uart_stop

;;		uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 073EH 0003H 0032H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#096h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 073FH 0001H 0001H
	bal	_$L469

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 073FH 0003H 001AH
_$L465 :
CBLOCK 232 23 1855

;;			main_clrWDT();
CLINEA 0000H 0001H 0740H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 232 23 1857

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 073FH 0001H 0001H
_$L469 :

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 073FH 000EH 0013H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L465

;;		ETM8 = 1;	//Turn TIMER8/9 ISR Back ON
CLINEA 0000H 0001H 0743H 0003H 0027H
	sb	0f013h.2

;;		ETM9 = 1;	//Turn TIMER8/9 ISR Back ON		
CLINEA 0000H 0001H 0744H 0003H 0029H
	sb	0f013h.3
CBLOCKEND 232 2 1861

;;}
CLINEA 0000H 0001H 0745H 0001H 0001H
	pop	xr4
	pop	pc
CBLOCKEND 232 1 1861
CFUNCTIONEND 232


	rseg $$SoftStart$main
CFUNCTION 233

_SoftStart	:
CBLOCK 233 1 1865

;;{
CLINEA 0000H 0001H 0749H 0001H 0001H
	push	lr
CBLOCK 233 2 1865
CRET 0000H

;;		while(PWED < PWMLowerDutyLimitRun){
CLINEA 0000H 0001H 074CH 0003H 0025H
	bal	_$L471
_$L473 :
CBLOCK 233 3 1868

;;			NOPms(50);
CLINEA 0000H 0001H 074DH 0004H 000DH
	mov	er0,	#50
	bl	_NOPms

;;			PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 074EH 0004H 001CH
	rb	0f973h.0

;;			PERUN = 0;
CLINEA 0000H 0001H 074FH 0004H 000DH
	rb	0f937h.0

;;			PDRUN = 0;
CLINEA 0000H 0001H 0750H 0004H 000DH
	rb	0f927h.0

;;			PCRUN = 0;
CLINEA 0000H 0001H 0751H 0004H 000DH
	rb	0f917h.0

;;			PWF0D += 1; 		//Can't be running to change (Only this variable)
CLINEA 0000H 0001H 0752H 0004H 0042H
	l	er0,	0f962h
	add	er0,	#1 
	st	er0,	0f962h

;;			PWED += 1;	
CLINEA 0000H 0001H 0753H 0004H 000EH
	l	er0,	0f932h
	add	er0,	#1 
	st	er0,	0f932h

;;			PWDD += 1;	
CLINEA 0000H 0001H 0754H 0004H 000EH
	l	er0,	0f922h
	add	er0,	#1 
	st	er0,	0f922h

;;			PWCD += 1;
CLINEA 0000H 0001H 0755H 0004H 000DH
	l	er0,	0f912h
	add	er0,	#1 
	st	er0,	0f912h

;;			PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0757H 0004H 001BH
	sb	0f973h.0

;;			PERUN = 1;
CLINEA 0000H 0001H 0758H 0004H 000DH
	sb	0f937h.0

;;			PDRUN = 1;
CLINEA 0000H 0001H 0759H 0004H 000DH
	sb	0f927h.0

;;			PCRUN = 1;
CLINEA 0000H 0001H 075AH 0004H 000DH
	sb	0f917h.0
CBLOCKEND 233 3 1883

;;		}
CLINEA 0000H 0000H 075BH 0003H 0003H
_$L471 :

;;		while(PWED < PWMLowerDutyLimitRun){
CLINEA 0000H 0000H 074CH 000EH 0013H
	l	er0,	0f932h
	l	er2,	NEAR _PWMLowerDutyLimitRun
	cmp	er0,	er2
	blt	_$L473
CBLOCKEND 233 2 1884

;;}
CLINEA 0000H 0001H 075CH 0001H 0001H
	pop	pc
CBLOCKEND 233 1 1884
CFUNCTIONEND 233


	rseg $$RampUpMotorTest$main
CFUNCTION 234

_RampUpMotorTest	:
CBLOCK 234 1 1889

;;void RampUpMotorTest(void){
CLINEA 0000H 0001H 0761H 0001H 001BH
CBLOCK 234 2 1889

;;	if(PWMCounter < PWMSensorResPerInc){
CLINEA 0000H 0001H 0762H 0002H 0025H
	l	r0,	NEAR _PWMCounter
	l	r1,	NEAR _PWMSensorResPerInc
	cmp	r0,	r1
	bge	_$L476
CBLOCK 234 3 1890

;;		PWMCounter++;
CLINEA 0000H 0000H 0763H 0003H 000FH
	add	r0,	#01h
	st	r0,	NEAR _PWMCounter
CBLOCKEND 234 3 1892

;;	else{
CLINEA 0000H 0001H 0765H 0002H 0006H
	rt
_$L476 :
CBLOCK 234 4 1893

;;		if(PWED < PWMUpperDutyLimitCalib){
CLINEA 0000H 0001H 0766H 0003H 0024H
	l	er0,	0f932h
	l	er2,	NEAR _PWMUpperDutyLimitCalib
	cmp	er0,	er2
	blt	_$M30
	b	_$L485
_$M30 :
CBLOCK 234 5 1894

;;			if(PWMflag == 0){
CLINEA 0000H 0001H 0767H 0004H 0014H
	l	r0,	NEAR _PWMflag
	bne	_$L481
CBLOCK 234 6 1895

;;				PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 0768H 0005H 001DH
	rb	0f973h.0

;;				PERUN = 0;
CLINEA 0000H 0001H 0769H 0005H 000EH
	rb	0f937h.0

;;				PDRUN = 0;
CLINEA 0000H 0001H 076AH 0005H 000EH
	rb	0f927h.0

;;				PCRUN = 0;
CLINEA 0000H 0001H 076BH 0005H 000EH
	rb	0f917h.0

;;				PWF0D += MotorStep; //Can't be running to change (Only this variable)
CLINEA 0000H 0001H 076CH 0005H 0049H
	l	er0,	0f962h
	l	er2,	NEAR _MotorStep
	add	er0,	er2
	st	er0,	0f962h

;;				PWED += MotorStep;
CLINEA 0000H 0001H 076DH 0005H 0016H
	l	er0,	0f932h
	add	er0,	er2
	st	er0,	0f932h

;;				PWDD += MotorStep;
CLINEA 0000H 0001H 076EH 0005H 0016H
	l	er0,	0f922h
	add	er0,	er2
	st	er0,	0f922h

;;				PWCD += MotorStep;
CLINEA 0000H 0001H 076FH 0005H 0016H
	l	er0,	0f912h
	add	er0,	er2
	st	er0,	0f912h

;;				PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0770H 0005H 001CH
	sb	0f973h.0

;;				PERUN = 1;
CLINEA 0000H 0001H 0771H 0005H 000EH
	sb	0f937h.0

;;				PDRUN = 1;
CLINEA 0000H 0001H 0772H 0005H 000EH
	sb	0f927h.0

;;				PCRUN = 1;
CLINEA 0000H 0001H 0773H 0005H 000EH
	sb	0f917h.0
CBLOCKEND 234 6 1908

;;			}
CLINEA 0000H 0000H 0774H 0004H 0004H
_$L481 :

;;			if(PWMflag == 1){
CLINEA 0000H 0001H 0775H 0004H 0014H
	l	r0,	NEAR _PWMflag
	cmp	r0,	#01h
	bne	_$L485
CBLOCK 234 7 1909

;;				PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 0776H 0005H 001DH
	rb	0f973h.0

;;				PERUN = 0;
CLINEA 0000H 0001H 0777H 0005H 000EH
	rb	0f937h.0

;;				PDRUN = 0;
CLINEA 0000H 0001H 0778H 0005H 000EH
	rb	0f927h.0

;;				PCRUN = 0;
CLINEA 0000H 0001H 0779H 0005H 000EH
	rb	0f917h.0

;;				PWF0D -= MotorStep; //Can't be running to change (Only this variable)
CLINEA 0000H 0001H 077AH 0005H 0049H
	l	er0,	0f962h
	l	er2,	NEAR _MotorStep
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f962h

;;				PWED -= MotorStep;
CLINEA 0000H 0001H 077BH 0005H 0016H
	l	er0,	0f932h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f932h

;;				PWDD -= MotorStep;
CLINEA 0000H 0001H 077CH 0005H 0016H
	l	er0,	0f922h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f922h

;;				PWCD -= MotorStep;
CLINEA 0000H 0001H 077DH 0005H 0016H
	l	er0,	0f912h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f912h

;;				PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 077EH 0005H 001CH
	sb	0f973h.0

;;				PERUN = 1;
CLINEA 0000H 0001H 077FH 0005H 000EH
	sb	0f937h.0

;;				PDRUN = 1;
CLINEA 0000H 0001H 0780H 0005H 000EH
	sb	0f927h.0

;;				PCRUN = 1;
CLINEA 0000H 0001H 0781H 0005H 000EH
	sb	0f917h.0

;;				if(PWED <= PWMSafeDuty){
CLINEA 0000H 0001H 0782H 0005H 001CH
	l	er0,	0f932h
	l	er2,	NEAR _PWMSafeDuty
	cmp	er0,	er2
	bgt	_$L485
CBLOCK 234 8 1922

;;					PWMflag = 2;
CLINEA 0000H 0001H 0783H 0006H 0011H
	mov	r0,	#02h
	st	r0,	NEAR _PWMflag
CBLOCKEND 234 8 1924

;;				}
CLINEA 0000H 0000H 0784H 0005H 0005H
_$L485 :
CBLOCKEND 234 7 1925
CBLOCKEND 234 5 1926

;;		if(PWED >= PWMUpperDutyLimitCalib){
CLINEA 0000H 0001H 0787H 0003H 0025H
	l	er0,	0f932h
	l	er2,	NEAR _PWMUpperDutyLimitCalib
	cmp	er0,	er2
	blt	_$L487
CBLOCK 234 9 1927

;;			PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 0788H 0004H 001CH
	rb	0f973h.0

;;			PERUN = 0;
CLINEA 0000H 0001H 0789H 0004H 000DH
	rb	0f937h.0

;;			PDRUN = 0;
CLINEA 0000H 0001H 078AH 0004H 000DH
	rb	0f927h.0

;;			PCRUN = 0;
CLINEA 0000H 0001H 078BH 0004H 000DH
	rb	0f917h.0

;;			PWF0D -= MotorStep; //Can't be running to change (Only this variable)
CLINEA 0000H 0001H 078CH 0004H 0048H
	l	er0,	0f962h
	l	er2,	NEAR _MotorStep
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f962h

;;			PWED -= MotorStep;
CLINEA 0000H 0001H 078DH 0004H 0015H
	l	er0,	0f932h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f932h

;;			PWDD -= MotorStep;
CLINEA 0000H 0001H 078EH 0004H 0015H
	l	er0,	0f922h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f922h

;;			PWCD -= MotorStep;
CLINEA 0000H 0001H 078FH 0004H 0015H
	l	er0,	0f912h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f912h

;;			PWMflag = 1;
CLINEA 0000H 0001H 0790H 0004H 000FH
	mov	r0,	#01h
	st	r0,	NEAR _PWMflag

;;			PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0791H 0004H 001BH
	sb	0f973h.0

;;			PERUN = 1;
CLINEA 0000H 0001H 0792H 0004H 000DH
	sb	0f937h.0

;;			PDRUN = 1;
CLINEA 0000H 0001H 0793H 0004H 000DH
	sb	0f927h.0

;;			PCRUN = 1;
CLINEA 0000H 0001H 0794H 0004H 000DH
	sb	0f917h.0
CBLOCKEND 234 9 1941

;;		}
CLINEA 0000H 0000H 0795H 0003H 0003H
_$L487 :

;;		PWMCounter = 0;
CLINEA 0000H 0001H 0796H 0003H 0011H
	mov	r0,	#00h
	st	r0,	NEAR _PWMCounter
CBLOCKEND 234 4 1943

;;	}
CLINEA 0000H 0000H 0797H 0002H 0002H
CBLOCKEND 234 2 1944

;;}
CLINEA 0000H 0001H 0798H 0001H 0001H
	rt
CBLOCKEND 234 1 1944
CFUNCTIONEND 234


	rseg $$DistanceSensorControl$main
CFUNCTION 235

_DistanceSensorControl	:
CBLOCK 235 1 1945

;;void DistanceSensorControl(void){
CLINEA 0000H 0001H 0799H 0001H 0021H
	push	lr
CBLOCK 235 2 1945
CRET 0000H

;;	if((Range_out < Range_ZHiThres)||(Range_out > Range_Ceiling)){	//65 = 4Ft Level, 240 accounts for sensor error when too close to ground.
CLINEA 0000H 0001H 079AH 0002H 0089H
	l	er0,	NEAR _Range_out
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _Range_ZHiThres
	l	er2,	NEAR _Range_ZHiThres+02h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$L491
	l	er0,	NEAR _Range_out
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _Range_Ceiling
	l	er2,	NEAR _Range_Ceiling+02h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L490
_$L491 :
CBLOCK 235 3 1946

;;		PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 079BH 0003H 001BH
	rb	0f973h.0

;;		PERUN = 0;
CLINEA 0000H 0001H 079CH 0003H 000CH
	rb	0f937h.0

;;		PDRUN = 0;
CLINEA 0000H 0001H 079DH 0003H 000CH
	rb	0f927h.0

;;		PCRUN = 0;
CLINEA 0000H 0001H 079EH 0003H 000CH
	rb	0f917h.0

;;		PWF0D += MotorStep; //Can't be running to change (Only this variable)
CLINEA 0000H 0001H 079FH 0003H 0047H
	l	er0,	0f962h
	l	er2,	NEAR _MotorStep
	add	er0,	er2
	st	er0,	0f962h

;;		PWED += MotorStep;
CLINEA 0000H 0001H 07A0H 0003H 0014H
	l	er0,	0f932h
	add	er0,	er2
	st	er0,	0f932h

;;		PWDD += MotorStep;
CLINEA 0000H 0001H 07A1H 0003H 0014H
	l	er0,	0f922h
	add	er0,	er2
	st	er0,	0f922h

;;		PWCD += MotorStep;
CLINEA 0000H 0001H 07A2H 0003H 0014H
	l	er0,	0f912h
	add	er0,	er2
	st	er0,	0f912h

;;		PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 07A3H 0003H 001AH
	sb	0f973h.0

;;		PERUN = 1;
CLINEA 0000H 0001H 07A4H 0003H 000CH
	sb	0f937h.0

;;		PDRUN = 1;
CLINEA 0000H 0001H 07A5H 0003H 000CH
	sb	0f927h.0

;;		PCRUN = 1;
CLINEA 0000H 0001H 07A6H 0003H 000CH
	sb	0f917h.0
CBLOCKEND 235 3 1959

;;	}			
CLINEA 0000H 0000H 07A7H 0002H 0005H
_$L490 :

;;	if(Range_out > 75){	//4Ft Level
CLINEA 0000H 0001H 07A8H 0002H 0020H
	l	er0,	NEAR _Range_out
	cmp	r0,	#04bh
	cmpc	r1,	#00h
	ble	_$L497
CBLOCK 235 4 1960

;;		PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 07A9H 0003H 001BH
	rb	0f973h.0

;;		PERUN = 0;
CLINEA 0000H 0001H 07AAH 0003H 000CH
	rb	0f937h.0

;;		PDRUN = 0;
CLINEA 0000H 0001H 07ABH 0003H 000CH
	rb	0f927h.0

;;		PCRUN = 0;
CLINEA 0000H 0001H 07ACH 0003H 000CH
	rb	0f917h.0

;;		PWF0D -= MotorStep; //Can't be running to change (Only this variable)
CLINEA 0000H 0001H 07ADH 0003H 0047H
	l	er0,	0f962h
	l	er2,	NEAR _MotorStep
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f962h

;;		PWED -= MotorStep;
CLINEA 0000H 0001H 07AEH 0003H 0014H
	l	er0,	0f932h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f932h

;;		PWDD -= MotorStep;
CLINEA 0000H 0001H 07AFH 0003H 0014H
	l	er0,	0f922h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f922h

;;		PWCD -= MotorStep;
CLINEA 0000H 0001H 07B0H 0003H 0014H
	l	er0,	0f912h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f912h

;;		PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 07B1H 0003H 001AH
	sb	0f973h.0

;;		PERUN = 1;
CLINEA 0000H 0001H 07B2H 0003H 000CH
	sb	0f937h.0

;;		PDRUN = 1;
CLINEA 0000H 0001H 07B3H 0003H 000CH
	sb	0f927h.0

;;		PCRUN = 1;
CLINEA 0000H 0001H 07B4H 0003H 000CH
	sb	0f917h.0
CBLOCKEND 235 4 1973

;;	}
CLINEA 0000H 0000H 07B5H 0002H 0002H
_$L497 :
CBLOCKEND 235 2 2017

;;}
CLINEA 0000H 0001H 07E1H 0001H 0001H
	pop	pc
CBLOCKEND 235 1 2017
CFUNCTIONEND 235


	rseg $$MagSensorControl$main
CFUNCTION 236

_MagSensorControl	:
CBLOCK 236 1 2080

;;void MagSensorControl(void){
CLINEA 0000H 0001H 0820H 0001H 001CH
	push	lr
CBLOCK 236 2 2080
CRET 0000H

;;	if((Mag_Angle > Mag_CWThres)&&(Mag_Angle < Mag_OpposingPole)){
CLINEA 0000H 0001H 0821H 0002H 003FH
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	l	er0,	NEAR _Mag_CWThres
	l	er2,	NEAR _Mag_CWThres+02h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L500
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	l	er0,	NEAR _Mag_OpposingPole
	l	er2,	NEAR _Mag_OpposingPole+02h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$L500
CBLOCK 236 3 2081

;;		PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 0822H 0003H 001BH
	rb	0f973h.0

;;		PERUN = 0;
CLINEA 0000H 0001H 0823H 0003H 000CH
	rb	0f937h.0

;;		PDRUN = 0;
CLINEA 0000H 0001H 0824H 0003H 000CH
	rb	0f927h.0

;;		PCRUN = 0;
CLINEA 0000H 0001H 0825H 0003H 000CH
	rb	0f917h.0

;;		PWF0D += Mag_MotorStep; //Can't be running to change (Only this variable)
CLINEA 0000H 0001H 0826H 0003H 004BH
	l	er0,	0f962h
	l	er2,	NEAR _Mag_MotorStep
	add	er0,	er2
	st	er0,	0f962h

;;		PWED -= Mag_MotorStep;
CLINEA 0000H 0001H 0827H 0003H 0018H
	l	er0,	0f932h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f932h

;;		PWDD -= Mag_MotorStep;
CLINEA 0000H 0001H 0828H 0003H 0018H
	l	er0,	0f922h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f922h

;;		PWCD += Mag_MotorStep;
CLINEA 0000H 0001H 0829H 0003H 0018H
	l	er0,	0f912h
	add	er0,	er2
	st	er0,	0f912h

;;		PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 082AH 0003H 001AH
	sb	0f973h.0

;;		PERUN = 1;
CLINEA 0000H 0001H 082BH 0003H 000CH
	sb	0f937h.0

;;		PDRUN = 1;
CLINEA 0000H 0001H 082CH 0003H 000CH
	sb	0f927h.0

;;		PCRUN = 1;
CLINEA 0000H 0001H 082DH 0003H 000CH
	sb	0f917h.0
CBLOCKEND 236 3 2094

;;	}
CLINEA 0000H 0000H 082EH 0002H 0002H
_$L500 :

;;	if((Mag_Angle < Mag_CCWThres)&&(Mag_Angle > Mag_OpposingPole)){
CLINEA 0000H 0001H 082FH 0002H 0040H
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	l	er0,	NEAR _Mag_CCWThres
	l	er2,	NEAR _Mag_CCWThres+02h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$L507
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	l	er0,	NEAR _Mag_OpposingPole
	l	er2,	NEAR _Mag_OpposingPole+02h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L507
CBLOCK 236 4 2095

;;		PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 0830H 0003H 001BH
	rb	0f973h.0

;;		PERUN = 0;
CLINEA 0000H 0001H 0831H 0003H 000CH
	rb	0f937h.0

;;		PDRUN = 0;
CLINEA 0000H 0001H 0832H 0003H 000CH
	rb	0f927h.0

;;		PCRUN = 0;
CLINEA 0000H 0001H 0833H 0003H 000CH
	rb	0f917h.0

;;		PWF0D -= Mag_MotorStep; //Can't be running to change (Only this variable)
CLINEA 0000H 0001H 0834H 0003H 004BH
	l	er0,	0f962h
	l	er2,	NEAR _Mag_MotorStep
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f962h

;;		PWED += Mag_MotorStep;
CLINEA 0000H 0001H 0835H 0003H 0018H
	l	er0,	0f932h
	add	er0,	er2
	st	er0,	0f932h

;;		PWDD += Mag_MotorStep;
CLINEA 0000H 0001H 0836H 0003H 0018H
	l	er0,	0f922h
	add	er0,	er2
	st	er0,	0f922h

;;		PWCD -= Mag_MotorStep;
CLINEA 0000H 0001H 0837H 0003H 0018H
	l	er0,	0f912h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f912h

;;		PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0838H 0003H 001AH
	sb	0f973h.0

;;		PERUN = 1;
CLINEA 0000H 0001H 0839H 0003H 000CH
	sb	0f937h.0

;;		PDRUN = 1;
CLINEA 0000H 0001H 083AH 0003H 000CH
	sb	0f927h.0

;;		PCRUN = 1;
CLINEA 0000H 0001H 083BH 0003H 000CH
	sb	0f917h.0
CBLOCKEND 236 4 2108

;;	}
CLINEA 0000H 0000H 083CH 0002H 0002H
_$L507 :
CBLOCKEND 236 2 2109

;;}
CLINEA 0000H 0001H 083DH 0001H 0001H
	pop	pc
CBLOCKEND 236 1 2109
CFUNCTIONEND 236


	rseg $$MagSensorControlPID$main
CFUNCTION 237

_MagSensorControlPID	:
CBLOCK 237 1 2111

;;void MagSensorControlPID(void){
CLINEA 0000H 0001H 083FH 0001H 001FH
	push	lr
	push	xr4
CBLOCK 237 2 2111
CRET 0004H
CLOCAL 47H 0002H 0024H 0002H "i" 02H 00H 01H

;;	if(Mag_PIDSetpoint > 180){
CLINEA 0000H 0001H 0844H 0002H 001BH
	l	er0,	NEAR _Mag_PIDSetpoint
	l	er2,	NEAR _Mag_PIDSetpoint+02h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#034h
	mov	r3,	#043h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L515
CBLOCK 237 3 2116

;;		Mag_PIDCorrectionFactor = 360-Mag_PIDSetpoint;
CLINEA 0000H 0001H 0845H 0003H 0030H
	mov	er0,	#0 
	mov	r2,	#0b4h
	mov	r3,	#043h
	push	xr0
	l	er0,	NEAR _Mag_PIDSetpoint
	l	er2,	NEAR _Mag_PIDSetpoint+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Mag_PIDCorrectionFactor
	st	er2,	NEAR _Mag_PIDCorrectionFactor+02h

;;		Mag_PIDAngleScaled = Mag_Angle + Mag_PIDCorrectionFactor;
CLINEA 0000H 0001H 0846H 0003H 003BH
	push	xr0
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Mag_PIDAngleScaled
	st	er2,	NEAR _Mag_PIDAngleScaled+02h

;;		if(Mag_PIDAngleScaled > 180){
CLINEA 0000H 0001H 0847H 0003H 001FH
	push	xr0
	mov	er0,	#0 
	mov	r2,	#034h
	mov	r3,	#043h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L517
CBLOCK 237 4 2119

;;			Mag_PIDError = Mag_PIDAngleScaled - 360;
CLINEA 0000H 0001H 0848H 0004H 002BH
	l	er0,	NEAR _Mag_PIDAngleScaled
	l	er2,	NEAR _Mag_PIDAngleScaled+02h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#0b4h
	mov	r3,	#0c3h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
CBLOCKEND 237 4 2122

;;		else{
CLINEA 0000H 0001H 084BH 0003H 0007H
	bal	_$L519
_$L517 :
CBLOCK 237 5 2123

;;			Mag_PIDError= Mag_PIDAngleScaled;
CLINEA 0000H 0001H 084CH 0004H 0024H
	l	er0,	NEAR _Mag_PIDAngleScaled
	l	er2,	NEAR _Mag_PIDAngleScaled+02h
CBLOCKEND 237 5 2125

;;		}
CLINEA 0000H 0000H 084DH 0003H 0003H
_$L519 :

;;	else{
CLINEA 0000H 0001H 084FH 0002H 0006H
	bal	_$L523
_$L515 :
CBLOCK 237 6 2127

;;		Mag_PIDCorrectionFactor = Mag_PIDSetpoint;					
CLINEA 0000H 0001H 0850H 0003H 0031H
	l	er0,	NEAR _Mag_PIDSetpoint
	l	er2,	NEAR _Mag_PIDSetpoint+02h
	st	er0,	NEAR _Mag_PIDCorrectionFactor
	st	er2,	NEAR _Mag_PIDCorrectionFactor+02h

;;		Mag_PIDAngleScaled = Mag_Angle - Mag_PIDCorrectionFactor;
CLINEA 0000H 0001H 0852H 0003H 003BH
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	l	er0,	NEAR _Mag_PIDSetpoint
	l	er2,	NEAR _Mag_PIDSetpoint+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Mag_PIDAngleScaled
	st	er2,	NEAR _Mag_PIDAngleScaled+02h

;;		if(Mag_PIDAngleScaled > 180){
CLINEA 0000H 0001H 0853H 0003H 001FH
	push	xr0
	mov	er0,	#0 
	mov	r2,	#034h
	mov	r3,	#043h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L521
CBLOCK 237 7 2131

;;			Mag_PIDError = Mag_PIDAngleScaled - 360;
CLINEA 0000H 0001H 0854H 0004H 002BH
	l	er0,	NEAR _Mag_PIDAngleScaled
	l	er2,	NEAR _Mag_PIDAngleScaled+02h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#0b4h
	mov	r3,	#0c3h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
CBLOCKEND 237 7 2134

;;		else{
CLINEA 0000H 0001H 0857H 0003H 0007H
	bal	_$L523
_$L521 :
CBLOCK 237 8 2135

;;			Mag_PIDError = Mag_PIDAngleScaled;
CLINEA 0000H 0001H 0858H 0004H 0025H
	l	er0,	NEAR _Mag_PIDAngleScaled
	l	er2,	NEAR _Mag_PIDAngleScaled+02h
CBLOCKEND 237 8 2137

;;		}
CLINEA 0000H 0000H 0859H 0003H 0003H
_$L523 :
	st	er0,	NEAR _Mag_PIDError
	st	er2,	NEAR _Mag_PIDError+02h
CBLOCKEND 237 6 2138

;;	Mag_PIDError *= -1;
CLINEA 0000H 0001H 085BH 0002H 0014H
	push	xr0
	mov	er0,	#0 
	mov	r2,	#080h
	mov	r3,	#0bfh
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Mag_PIDError
	st	er2,	NEAR _Mag_PIDError+02h

;;	Mag_PIDCurrentCount = Mag_PIDCounter * .001;		//Timer in Seconds (.007 used to convert 128Hz TBC to seconds)
CLINEA 0000H 0001H 0861H 0002H 006DH
	l	er0,	NEAR _Mag_PIDCounter
	mov	er2,	#0 
	push	xr0
	add	sp,	#-4
	bl	__dildu8sw
	mov	r0,	#0fch
	mov	r1,	#0a9h
	mov	r2,	#0f1h
	mov	r3,	#0d2h
	mov	r4,	#04dh
	mov	r5,	#062h
	mov	r6,	#050h
	mov	r7,	#03fh
	push	qr0
	bl	__dmulu8sw
	add	sp,	#8 
	bl	__dtofu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Mag_PIDCurrentCount
	st	er2,	NEAR _Mag_PIDCurrentCount+02h

;;	Mag_PIDCounter = 0;
CLINEA 0000H 0001H 0862H 0002H 0014H
	mov	er0,	#0 
	st	er0,	NEAR _Mag_PIDCounter

;;	Mag_PIDErrSum += (Mag_PIDError * Mag_PIDCurrentCount);
CLINEA 0000H 0001H 0865H 0002H 0037H
	l	er0,	NEAR _Mag_PIDCurrentCount
	push	xr0
	l	er0,	NEAR _Mag_PIDError
	l	er2,	NEAR _Mag_PIDError+02h
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	l	er0,	NEAR _Mag_PIDErrSum
	l	er2,	NEAR _Mag_PIDErrSum+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Mag_PIDErrSum
	st	er2,	NEAR _Mag_PIDErrSum+02h

;;	Mag_PIDdErr	/= Mag_PIDCurrentCount;
CLINEA 0000H 0001H 0869H 0002H 0024H
	l	er0,	NEAR _Mag_PIDError
	l	er2,	NEAR _Mag_PIDError+02h
	push	xr0
	l	er0,	NEAR _Mag_PIDErrPrev
	l	er2,	NEAR _Mag_PIDErrPrev+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	l	er0,	NEAR _Mag_PIDCurrentCount
	l	er2,	NEAR _Mag_PIDCurrentCount+02h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Mag_PIDdErr
	st	er2,	NEAR _Mag_PIDdErr+02h

;;	Mag_PIDErrPrev = Mag_PIDError;
CLINEA 0000H 0001H 086AH 0002H 001FH
	l	er0,	NEAR _Mag_PIDError
	l	er2,	NEAR _Mag_PIDError+02h
	st	er0,	NEAR _Mag_PIDErrPrev
	st	er2,	NEAR _Mag_PIDErrPrev+02h

;;	Mag_PIDOutput = (Mag_PID_kp*Mag_PIDError) + (Mag_PID_ki*Mag_PIDErrSum) + (Mag_PID_kd*Mag_PIDdErr);
CLINEA 0000H 0001H 086DH 0002H 0063H
	push	xr0
	l	er0,	NEAR _Mag_PID_kp
	l	er2,	NEAR _Mag_PID_kp+02h
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr0
	l	er4,	NEAR _Mag_PIDErrSum
	l	er6,	NEAR _Mag_PIDErrSum+02h
	push	xr4
	l	er4,	NEAR _Mag_PID_ki
	l	er6,	NEAR _Mag_PID_ki+02h
	push	xr4
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr4
	push	xr0
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	l	er4,	NEAR _Mag_PID_kd
	l	er6,	NEAR _Mag_PID_kd+02h
	push	xr4
	l	er4,	NEAR _Mag_PIDdErr
	l	er6,	NEAR _Mag_PIDdErr+02h
	push	xr4
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr4
	push	xr0
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Mag_PIDOutput
	st	er2,	NEAR _Mag_PIDOutput+02h

;;	PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 0871H 0002H 001AH
	rb	0f973h.0

;;	PERUN = 0;
CLINEA 0000H 0001H 0872H 0002H 000BH
	rb	0f937h.0

;;	PDRUN = 0;
CLINEA 0000H 0001H 0873H 0002H 000BH
	rb	0f927h.0

;;	PCRUN = 0;
CLINEA 0000H 0001H 0874H 0002H 000BH
	rb	0f917h.0

;;	PWF0D -= Mag_PIDOutput; 		//Can't be running to change (Only this variable)
CLINEA 0000H 0001H 0876H 0002H 004CH
	l	er0,	0f962h
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _Mag_PIDOutput
	l	er2,	NEAR _Mag_PIDOutput+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f962h

;;	PWED += Mag_PIDOutput;	//CCW motor, spin to move CW
CLINEA 0000H 0001H 0877H 0002H 0034H
	l	er0,	0f932h
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _Mag_PIDOutput
	l	er2,	NEAR _Mag_PIDOutput+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f932h

;;	PWDD += Mag_PIDOutput;	//CCW motor, spin to move CW
CLINEA 0000H 0001H 0878H 0002H 0034H
	l	er0,	0f922h
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _Mag_PIDOutput
	l	er2,	NEAR _Mag_PIDOutput+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f922h

;;	PWCD -= Mag_PIDOutput;
CLINEA 0000H 0001H 0879H 0002H 0017H
	l	er0,	0f912h
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _Mag_PIDOutput
	l	er2,	NEAR _Mag_PIDOutput+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f912h

;;	CheckSafetyLimit();
CLINEA 0000H 0001H 087AH 0002H 0014H
	bl	_CheckSafetyLimit
CBLOCKEND 237 3 2197

;;	PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 087BH 0002H 0019H
	sb	0f973h.0

;;	PERUN = 1;
CLINEA 0000H 0001H 087CH 0002H 000BH
	sb	0f937h.0

;;	PDRUN = 1;
CLINEA 0000H 0001H 087DH 0002H 000BH
	sb	0f927h.0

;;	PCRUN = 1;
CLINEA 0000H 0001H 087EH 0002H 000BH
	sb	0f917h.0

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 0882H 0002H 0017H
	mov	er0,	#0 
_$L526 :
CBLOCK 237 9 2179

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 0884H 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 237 9 2181

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0882H 0002H 0017H
	add	er0,	#1 

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0882H 000EH 0013H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L526

;;	sprintf(SensorReturn, "%f,%f,%f,%f", Mag_Angle, Mag_PIDOutput, Mag_PID_kd, Mag_PID_kp);
CLINEA 0000H 0001H 0888H 0002H 0058H
	l	er0,	NEAR _Mag_PID_kp
	l	er2,	NEAR _Mag_PID_kp+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Mag_PID_kd
	l	er2,	NEAR _Mag_PID_kd+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Mag_PIDOutput
	l	er2,	NEAR _Mag_PIDOutput+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	mov	r0,	#BYTE1 OFFSET $$S530
	mov	r1,	#BYTE2 OFFSET $$S530
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#36

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 088AH 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 088BH 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 088EH 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 088FH 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 0890H 0002H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#096h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0891H 0001H 0001H
	bal	_$L535

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0891H 0002H 0019H
_$L533 :
CBLOCK 237 10 2193

;;		NOP1000();
CLINEA 0000H 0001H 0892H 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 0893H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 237 10 2196

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0891H 0001H 0001H
_$L535 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0891H 000EH 0013H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L533
CBLOCKEND 237 2 2197

;;}
CLINEA 0000H 0001H 0895H 0001H 0001H
	pop	xr4
	pop	pc
CBLOCKEND 237 1 2197
CFUNCTIONEND 237


	rseg $$AccelSensorControlPID$main
CFUNCTION 238

_AccelSensorControlPID	:
CBLOCK 238 1 2199

;;void AccelSensorControlPID(void){
CLINEA 0000H 0001H 0897H 0001H 0021H
	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-04
	push	xr8
	push	xr4
CBLOCK 238 2 2199
CRET 000EH
CLOCAL 4BH 0002H 0000H 0002H "i" 02H 00H 01H
CSLOCAL 43H 0004H 0002H 0002H "Accel_PID_XRollSetpoint" 02H 00H 03H
CSLOCAL 43H 0004H 0003H 0002H "Accel_PID_XRollSetpointPrime" 02H 00H 03H
CSLOCAL 43H 0004H 0004H 0002H "Accel_PID_XRollError" 02H 00H 03H
CSLOCAL 43H 0004H 0005H 0002H "Accel_PID_XRollCurrentCount" 02H 00H 03H
CSLOCAL 43H 0004H 0006H 0002H "Accel_PID_XRolldErr" 02H 00H 03H
CSLOCAL 43H 0004H 0007H 0002H "Accel_PID_XRollOutput" 02H 00H 03H
CSLOCAL 43H 0004H 0008H 0002H "Accel_PID_YPitchSetpoint" 02H 00H 03H
CSLOCAL 43H 0004H 0009H 0002H "Accel_PID_YPitchSetpointPrime" 02H 00H 03H
CSLOCAL 43H 0004H 000AH 0002H "Accel_PID_YPitchError" 02H 00H 03H
CSLOCAL 43H 0004H 000BH 0002H "Accel_PID_YPitchCurrentCount" 02H 00H 03H
CSLOCAL 43H 0004H 000CH 0002H "Accel_PID_YPitchdErr" 02H 00H 03H
CSLOCAL 43H 0004H 000DH 0002H "Accel_PID_YPitchOutput" 02H 00H 03H
CSLOCAL 43H 0004H 000EH 0002H "Accel_PID_Motor1_temp" 02H 00H 03H
CSLOCAL 43H 0004H 000FH 0002H "Accel_PID_Motor2_temp" 02H 00H 03H
CSLOCAL 43H 0004H 0010H 0002H "Accel_PID_Motor3_temp" 02H 00H 03H
CSLOCAL 43H 0004H 0011H 0002H "Accel_PID_Motor4_temp" 02H 00H 03H

;;	LED_3 = 1;		//C1, Pin 13
CLINEA 0000H 0001H 08AEH 0002H 0019H
	sb	0f260h.1

;;		Accel_PID_XRollError = -CF_XRoll;	//Setpoint - Error (in this case setpoint is 0)
CLINEA 0000H 0001H 08C1H 0003H 0053H
	l	er0,	NEAR _CF_XRoll
	l	er2,	NEAR _CF_XRoll+02h
	push	xr0
	bl	__fnegu8sw
	pop	xr0
	st	er0,	NEAR _$ST4
	st	er2,	NEAR _$ST4+02h

;;		Accel_PID_XRollCurrentCount = Accel_PID_XRollCounter * .001;	//Timer in Seconds
CLINEA 0000H 0001H 08C4H 0003H 0051H
	l	er4,	NEAR _Accel_PID_XRollCounter
	mov	er6,	#0 
	push	xr4
	add	sp,	#-4
	bl	__dildu8sw
	mov	r4,	#0fch
	mov	r5,	#0a9h
	mov	r6,	#0f1h
	mov	r7,	#0d2h
	mov	r8,	#04dh
	mov	r9,	#062h
	mov	r10,	#050h
	mov	r11,	#03fh
	push	xr8
	push	xr4
	bl	__dmulu8sw
	add	sp,	#8 
	bl	__dtofu8sw
	add	sp,	#4 
	pop	xr4
	st	er4,	NEAR _$ST5
	st	er6,	NEAR _$ST5+02h

;;		Accel_PID_XRollCounter = 0;
CLINEA 0000H 0001H 08C5H 0003H 001DH
	mov	er4,	#0 
	st	er4,	NEAR _Accel_PID_XRollCounter

;;		Accel_PID_XRollErrSum += (Accel_PID_XRollError * Accel_PID_XRollCurrentCount);
CLINEA 0000H 0001H 08C8H 0003H 0050H
	push	xr0
	l	er4,	NEAR _$ST5
	push	xr4
	bl	__fmulu8sw
	add	sp,	#4 
	l	er4,	NEAR _Accel_PID_XRollErrSum
	l	er6,	NEAR _Accel_PID_XRollErrSum+02h
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr4
	st	er4,	NEAR _Accel_PID_XRollErrSum
	st	er6,	NEAR _Accel_PID_XRollErrSum+02h

;;		Accel_PID_XRolldErr	/= Accel_PID_XRollCurrentCount;
CLINEA 0000H 0001H 08CCH 0003H 0035H
	push	xr0
	l	er4,	NEAR _Accel_PID_XRollErrPrev
	l	er6,	NEAR _Accel_PID_XRollErrPrev+02h
	push	xr4
	bl	__fsubu8sw
	add	sp,	#4 
	l	er4,	NEAR _$ST5
	l	er6,	NEAR _$ST5+02h
	push	xr4
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr4
	st	er4,	NEAR _$ST6
	st	er6,	NEAR _$ST6+02h

;;		Accel_PID_XRollErrPrev = Accel_PID_XRollError;
CLINEA 0000H 0001H 08CDH 0003H 0030H
	st	er0,	NEAR _Accel_PID_XRollErrPrev
	st	er2,	NEAR _Accel_PID_XRollErrPrev+02h

;;		Accel_PID_XRollOutput += (Accel_PID_XRoll_kd*Accel_PID_XRolldErr);
CLINEA 0000H 0001H 08D2H 0003H 0044H
	push	xr0
	l	er0,	NEAR _Accel_PID_XRoll_kp
	l	er2,	NEAR _Accel_PID_XRoll_kp+02h
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr0
	l	er4,	NEAR _Accel_PID_XRollErrSum
	l	er6,	NEAR _Accel_PID_XRollErrSum+02h
	push	xr4
	l	er4,	NEAR _Accel_PID_XRoll_ki
	l	er6,	NEAR _Accel_PID_XRoll_ki+02h
	push	xr4
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr4
	push	xr0
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	l	er4,	NEAR _$ST6
	l	er6,	NEAR _$ST6+02h
	push	xr4
	l	er4,	NEAR _Accel_PID_XRoll_kd
	l	er6,	NEAR _Accel_PID_XRoll_kd+02h
	push	xr4
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr4
	push	xr0
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _$ST7
	st	er2,	NEAR _$ST7+02h

;;		Accel_PID_Motor1 -= Accel_PID_XRollOutput;
CLINEA 0000H 0001H 08DEH 0003H 002CH
	l	er4,	NEAR _Accel_PID_Motor1
	mov	er6,	#0 
	push	xr4
	bl	__fuldu8sw
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er4
	add	sp,	#2 
	st	er4,	NEAR _Accel_PID_Motor1

;;		Accel_PID_Motor2 += Accel_PID_XRollOutput;
CLINEA 0000H 0001H 08DFH 0003H 002CH
	l	er4,	NEAR _Accel_PID_Motor2
	push	xr4
	bl	__fuldu8sw
	pop	xr4
	push	xr0
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er4
	add	sp,	#2 
	st	er4,	NEAR _Accel_PID_Motor2

;;		Accel_PID_Motor3 += Accel_PID_XRollOutput;
CLINEA 0000H 0001H 08E0H 0003H 002CH
	l	er4,	NEAR _Accel_PID_Motor3
	mov	er6,	#0 
	push	xr4
	bl	__fuldu8sw
	pop	xr4
	push	xr0
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er4
	add	sp,	#2 
	st	er4,	NEAR _Accel_PID_Motor3

;;		Accel_PID_Motor4 -= Accel_PID_XRollOutput;
CLINEA 0000H 0001H 08E1H 0003H 002CH
	l	er4,	NEAR _Accel_PID_Motor4
	mov	er6,	#0 
	push	xr4
	bl	__fuldu8sw
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	NEAR _Accel_PID_Motor4

;;		CheckSafetyLimitUnscaled();
CLINEA 0000H 0001H 08E3H 0003H 001DH
	bl	_CheckSafetyLimitUnscaled

;;		Accel_PID_Motor1_temp = Accel_PID_Motor1_temp + PWMLowerDutyLimitRun;	//Conversion from 65535 Scaling to PWM Period of 17000
CLINEA 0000H 0001H 08E7H 0003H 007EH
	l	er0,	NEAR _Accel_PID_Motor1
	add	r0,	#02h
	addc	r1,	#0c0h
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	mov	r0,	#00h
	mov	r1,	#0feh
	mov	r2,	#0ffh
	mov	r3,	#046h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr4
	l	er0,	NEAR _PWMUpperLowerDiff
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	pop	xr0
	push	qr0
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr8
	l	er4,	NEAR _PWMLowerDutyLimitRun
	mov	er6,	#0 
	push	xr4
	bl	__fuldu8sw
	pop	xr4
	push	xr8
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr8
	st	er8,	NEAR _$ST14
	st	er10,	NEAR _$ST14+02h

;;		Accel_PID_Motor2_temp = Accel_PID_Motor2_temp + PWMLowerDutyLimitRun;	//Conversion from 65535 Scaling to PWM Period of 17000
CLINEA 0000H 0001H 08EBH 0003H 007EH
	l	er8,	NEAR _Accel_PID_Motor2
	add	r8,	#02h
	addc	r9,	#0c0h
	mov	er10,	#0 
	push	xr8
	bl	__fuldu8sw
	mov	r8,	#00h
	mov	r9,	#0feh
	mov	r10,	#0ffh
	mov	r11,	#046h
	push	xr8
	bl	__fdivu8sw
	add	sp,	#4 
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr8
	st	er8,	NEAR _$ST15
	st	er10,	NEAR _$ST15+02h

;;		Accel_PID_Motor3_temp = Accel_PID_Motor3_temp + PWMLowerDutyLimitRun;	//Conversion from 65535 Scaling to PWM Period of 17000
CLINEA 0000H 0001H 08EFH 0003H 007EH
	l	er8,	NEAR _Accel_PID_Motor3
	add	r8,	#02h
	addc	r9,	#0c0h
	mov	er10,	#0 
	push	xr8
	bl	__fuldu8sw
	mov	r8,	#00h
	mov	r9,	#0feh
	mov	r10,	#0ffh
	mov	r11,	#046h
	push	xr8
	bl	__fdivu8sw
	add	sp,	#4 
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr8
	st	er8,	NEAR _$ST16
	st	er10,	NEAR _$ST16+02h

;;		Accel_PID_Motor4_temp = Accel_PID_Motor4_temp + PWMLowerDutyLimitRun;	//Conversion from 65535 Scaling to PWM Period of 17000
CLINEA 0000H 0001H 08F3H 0003H 007EH
	l	er8,	NEAR _Accel_PID_Motor4
	add	r8,	#02h
	addc	r9,	#0c0h
	mov	er10,	#0 
	push	xr8
	bl	__fuldu8sw
	mov	r8,	#00h
	mov	r9,	#0feh
	mov	r10,	#0ffh
	mov	r11,	#046h
	push	xr8
	bl	__fdivu8sw
	add	sp,	#4 
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _$ST17
	st	er2,	NEAR _$ST17+02h

;;		PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 08F7H 0003H 001BH
	rb	0f973h.0

;;		PERUN = 0;
CLINEA 0000H 0001H 08F8H 0003H 000CH
	rb	0f937h.0

;;		PDRUN = 0;
CLINEA 0000H 0001H 08F9H 0003H 000CH
	rb	0f927h.0

;;		PCRUN = 0;
CLINEA 0000H 0001H 08FAH 0003H 000CH
	rb	0f917h.0

;;		PWF0D = Accel_PID_Motor1_temp; 		//Can't be running to change (Only this variable)
CLINEA 0000H 0001H 08FBH 0003H 0054H
	l	er0,	NEAR _$ST14
	l	er2,	NEAR _$ST14+02h
	push	xr0
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f962h

;;		PWED = Accel_PID_Motor2_temp;	
CLINEA 0000H 0001H 08FCH 0003H 0020H
	l	er0,	NEAR _$ST15
	l	er2,	NEAR _$ST15+02h
	push	xr0
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f932h

;;		PWCD = Accel_PID_Motor3_temp;	
CLINEA 0000H 0001H 08FDH 0003H 0020H
	l	er0,	NEAR _$ST16
	l	er2,	NEAR _$ST16+02h
	push	xr0
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f912h

;;		PWDD = Accel_PID_Motor4_temp;
CLINEA 0000H 0001H 08FEH 0003H 001FH
	l	er0,	NEAR _$ST17
	l	er2,	NEAR _$ST17+02h
	push	xr0
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f922h

;;		CheckSafetyLimit();
CLINEA 0000H 0001H 08FFH 0003H 0015H
	bl	_CheckSafetyLimit

;;		PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0900H 0003H 001AH
	sb	0f973h.0

;;		PERUN = 1;
CLINEA 0000H 0001H 0901H 0003H 000CH
	sb	0f937h.0

;;		PDRUN = 1;
CLINEA 0000H 0001H 0902H 0003H 000CH
	sb	0f927h.0

;;		PCRUN = 1;
CLINEA 0000H 0001H 0903H 0003H 000CH
	sb	0f917h.0

;;	while(AccGyro_ReadFlag == 0){
CLINEA 0000H 0000H 0919H 0001H 0001H
	bal	_$L545

;;	while(AccGyro_ReadFlag == 0){
CLINEA 0000H 0000H 0919H 0002H 001EH
_$L539 :
CBLOCK 238 3 2329

;;		main_clrWDT();				//kick the dog...1.34uS duration.
CLINEA 0000H 0001H 091AH 0003H 0035H
	bl	_main_clrWDT
CBLOCKEND 238 3 2331

;;	while(AccGyro_ReadFlag == 0){
CLINEA 0000H 0000H 0919H 0001H 0001H
_$L545 :

;;	while(AccGyro_ReadFlag == 0){
CLINEA 0000H 0000H 0919H 000EH 0013H
	l	r0,	NEAR _AccGyro_ReadFlag
	beq	_$L539

;;	Get_AccGyroData();	//This Function takes 14ms (as of 3/30/2013)
CLINEA 0000H 0001H 091CH 0002H 0040H
	bl	_Get_AccGyroData

;;	AccGyro_ReadFlag = 0;
CLINEA 0000H 0001H 091DH 0002H 0016H
	mov	r0,	#00h
	st	r0,	NEAR _AccGyro_ReadFlag

;;	if(AccGyro_CF_FlagCounter > 0){
CLINEA 0000H 0001H 091EH 0002H 0020H
	l	r0,	NEAR _AccGyro_CF_FlagCounter
	cmp	r0,	#00h
	ble	_$L541
CBLOCK 238 4 2334

;;		Run_AccGyroCF();
CLINEA 0000H 0001H 0920H 0003H 0012H
	bl	_Run_AccGyroCF

;;		AccGyro_CF_FlagCounter--;
CLINEA 0000H 0000H 0922H 0003H 001BH
	lea	OFFSET _AccGyro_CF_FlagCounter
	dec	[ea]
CBLOCKEND 238 4 2339

;;	}
CLINEA 0000H 0000H 0923H 0002H 0002H
_$L541 :

;;		Accel_PID_YPitchError = -CF_YPitch;		//Setpoint - Error (in this case setpoint is 0)
CLINEA 0000H 0001H 0935H 0003H 0056H
	l	er0,	NEAR _CF_YPitch
	l	er2,	NEAR _CF_YPitch+02h
	push	xr0
	bl	__fnegu8sw
	pop	xr0
	st	er0,	NEAR _$ST10
	st	er2,	NEAR _$ST10+02h

;;		Accel_PID_YPitchCurrentCount = Accel_PID_YPitchCounter * .001;		//Timer in Seconds
CLINEA 0000H 0001H 0938H 0003H 0054H
	l	er4,	NEAR _Accel_PID_YPitchCounter
	mov	er6,	#0 
	push	xr4
	add	sp,	#-4
	bl	__dildu8sw
	mov	r4,	#0fch
	mov	r5,	#0a9h
	mov	r6,	#0f1h
	mov	r7,	#0d2h
	mov	r8,	#04dh
	mov	r9,	#062h
	mov	r10,	#050h
	mov	r11,	#03fh
	push	xr8
	push	xr4
	bl	__dmulu8sw
	add	sp,	#8 
	bl	__dtofu8sw
	add	sp,	#4 
	pop	xr4
	st	er4,	NEAR _$ST11
	st	er6,	NEAR _$ST11+02h

;;		Accel_PID_YPitchCounter = 0;
CLINEA 0000H 0001H 0939H 0003H 001EH
	mov	er4,	#0 
	st	er4,	NEAR _Accel_PID_YPitchCounter

;;		Accel_PID_YPitchErrSum += (Accel_PID_YPitchError * Accel_PID_YPitchCurrentCount);
CLINEA 0000H 0001H 093DH 0003H 0053H
	push	xr0
	l	er4,	NEAR _$ST11
	l	er6,	NEAR _$ST11+02h
	push	xr4
	bl	__fmulu8sw
	add	sp,	#4 
	l	er4,	NEAR _Accel_PID_YPitchErrSum
	l	er6,	NEAR _Accel_PID_YPitchErrSum+02h
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr4
	st	er4,	NEAR _Accel_PID_YPitchErrSum
	st	er6,	NEAR _Accel_PID_YPitchErrSum+02h

;;		Accel_PID_YPitchdErr /= Accel_PID_YPitchCurrentCount;
CLINEA 0000H 0001H 0941H 0003H 0037H
	push	xr0
	l	er4,	NEAR _Accel_PID_YPitchErrPrev
	l	er6,	NEAR _Accel_PID_YPitchErrPrev+02h
	push	xr4
	bl	__fsubu8sw
	add	sp,	#4 
	l	er4,	NEAR _$ST11
	l	er6,	NEAR _$ST11+02h
	push	xr4
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr4
	st	er4,	NEAR _$ST12
	st	er6,	NEAR _$ST12+02h

;;		Accel_PID_YPitchErrPrev = Accel_PID_YPitchError;
CLINEA 0000H 0001H 0942H 0003H 0032H
	st	er0,	NEAR _Accel_PID_YPitchErrPrev
	st	er2,	NEAR _Accel_PID_YPitchErrPrev+02h

;;		Accel_PID_YPitchOutput = (Accel_PID_YPitch_kp*Accel_PID_YPitchError) + (Accel_PID_YPitch_ki*Accel_PID_YPitchErrSum) + (Accel_PID_YPitch_kd*Accel_PID_YPitchdErr);
CLINEA 0000H 0001H 0945H 0003H 00A3H
	push	xr0
	l	er0,	NEAR _Accel_PID_YPitch_kp
	l	er2,	NEAR _Accel_PID_YPitch_kp+02h
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr0
	l	er4,	NEAR _Accel_PID_YPitchErrSum
	l	er6,	NEAR _Accel_PID_YPitchErrSum+02h
	push	xr4
	l	er4,	NEAR _Accel_PID_YPitch_ki
	l	er6,	NEAR _Accel_PID_YPitch_ki+02h
	push	xr4
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr4
	push	xr0
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	l	er4,	NEAR _$ST12
	l	er6,	NEAR _$ST12+02h
	push	xr4
	l	er4,	NEAR _Accel_PID_YPitch_kd
	l	er6,	NEAR _Accel_PID_YPitch_kd+02h
	push	xr4
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr4
	push	xr0
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _$ST13
	st	er2,	NEAR _$ST13+02h

;;		Accel_PID_Motor1 += Accel_PID_YPitchOutput;
CLINEA 0000H 0001H 0952H 0003H 002DH
	l	er4,	NEAR _Accel_PID_Motor1
	mov	er6,	#0 
	push	xr4
	bl	__fuldu8sw
	pop	xr4
	push	xr0
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er4
	add	sp,	#2 
	st	er4,	NEAR _Accel_PID_Motor1

;;		Accel_PID_Motor2 += Accel_PID_YPitchOutput;
CLINEA 0000H 0001H 0953H 0003H 002DH
	l	er4,	NEAR _Accel_PID_Motor2
	mov	er6,	#0 
	push	xr4
	bl	__fuldu8sw
	pop	xr4
	push	xr0
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er4
	add	sp,	#2 
	st	er4,	NEAR _Accel_PID_Motor2

;;		Accel_PID_Motor3 -= Accel_PID_YPitchOutput;
CLINEA 0000H 0001H 0954H 0003H 002DH
	l	er4,	NEAR _Accel_PID_Motor3
	mov	er6,	#0 
	push	xr4
	bl	__fuldu8sw
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er4
	add	sp,	#2 
	st	er4,	NEAR _Accel_PID_Motor3

;;		Accel_PID_Motor4 -= Accel_PID_YPitchOutput;
CLINEA 0000H 0001H 0955H 0003H 002DH
	l	er4,	NEAR _Accel_PID_Motor4
	push	xr4
	bl	__fuldu8sw
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	NEAR _Accel_PID_Motor4

;;		CheckSafetyLimitUnscaled();
CLINEA 0000H 0001H 0956H 0003H 001DH
	bl	_CheckSafetyLimitUnscaled

;;		Accel_PID_Motor1_temp = Accel_PID_Motor1_temp + PWMLowerDutyLimitRun;	//Conversion from 65535 Scaling to PWM Period of 17000
CLINEA 0000H 0001H 095AH 0003H 007EH
	l	er0,	NEAR _Accel_PID_Motor1
	add	r0,	#02h
	addc	r1,	#0c0h
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	mov	r0,	#00h
	mov	r1,	#0feh
	mov	r2,	#0ffh
	mov	r3,	#046h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr4
	l	er0,	NEAR _PWMUpperLowerDiff
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	pop	xr0
	push	qr0
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr8
	l	er4,	NEAR _PWMLowerDutyLimitRun
	mov	er6,	#0 
	push	xr4
	bl	__fuldu8sw
	pop	xr4
	push	xr8
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr8
	st	er8,	NEAR _$ST14
	st	er10,	NEAR _$ST14+02h

;;		Accel_PID_Motor2_temp = Accel_PID_Motor2_temp + PWMLowerDutyLimitRun;	//Conversion from 65535 Scaling to PWM Period of 17000
CLINEA 0000H 0001H 095EH 0003H 007EH
	l	er8,	NEAR _Accel_PID_Motor2
	add	r8,	#02h
	addc	r9,	#0c0h
	mov	er10,	#0 
	push	xr8
	bl	__fuldu8sw
	mov	r8,	#00h
	mov	r9,	#0feh
	mov	r10,	#0ffh
	mov	r11,	#046h
	push	xr8
	bl	__fdivu8sw
	add	sp,	#4 
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr8
	st	er8,	NEAR _$ST15
	st	er10,	NEAR _$ST15+02h

;;		Accel_PID_Motor3_temp = Accel_PID_Motor3_temp + PWMLowerDutyLimitRun;	//Conversion from 65535 Scaling to PWM Period of 17000
CLINEA 0000H 0001H 0962H 0003H 007EH
	l	er8,	NEAR _Accel_PID_Motor3
	add	r8,	#02h
	addc	r9,	#0c0h
	mov	er10,	#0 
	push	xr8
	bl	__fuldu8sw
	mov	r8,	#00h
	mov	r9,	#0feh
	mov	r10,	#0ffh
	mov	r11,	#046h
	push	xr8
	bl	__fdivu8sw
	add	sp,	#4 
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr8
	st	er8,	NEAR _$ST16
	st	er10,	NEAR _$ST16+02h

;;		Accel_PID_Motor4_temp = Accel_PID_Motor4_temp + PWMLowerDutyLimitRun;	//Conversion from 65535 Scaling to PWM Period of 17000
CLINEA 0000H 0001H 0966H 0003H 007EH
	l	er8,	NEAR _Accel_PID_Motor4
	add	r8,	#02h
	addc	r9,	#0c0h
	mov	er10,	#0 
	push	xr8
	bl	__fuldu8sw
	mov	r8,	#00h
	mov	r9,	#0feh
	mov	r10,	#0ffh
	mov	r11,	#046h
	push	xr8
	bl	__fdivu8sw
	add	sp,	#4 
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _$ST17
	st	er2,	NEAR _$ST17+02h

;;		PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 096AH 0003H 001BH
	rb	0f973h.0

;;		PERUN = 0;
CLINEA 0000H 0001H 096BH 0003H 000CH
	rb	0f937h.0

;;		PDRUN = 0;
CLINEA 0000H 0001H 096CH 0003H 000CH
	rb	0f927h.0

;;		PCRUN = 0;
CLINEA 0000H 0001H 096DH 0003H 000CH
	rb	0f917h.0

;;		PWF0D = Accel_PID_Motor1_temp; 		//Can't be running to change (Only this variable)
CLINEA 0000H 0001H 096EH 0003H 0054H
	l	er0,	NEAR _$ST14
	l	er2,	NEAR _$ST14+02h
	push	xr0
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f962h

;;		PWED = Accel_PID_Motor2_temp;	
CLINEA 0000H 0001H 096FH 0003H 0020H
	l	er0,	NEAR _$ST15
	l	er2,	NEAR _$ST15+02h
	push	xr0
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f932h

;;		PWCD = Accel_PID_Motor3_temp;	
CLINEA 0000H 0001H 0970H 0003H 0020H
	l	er0,	NEAR _$ST16
	l	er2,	NEAR _$ST16+02h
	push	xr0
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f912h

;;		PWDD = Accel_PID_Motor4_temp;
CLINEA 0000H 0001H 0971H 0003H 001FH
	l	er0,	NEAR _$ST17
	l	er2,	NEAR _$ST17+02h
	push	xr0
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f922h

;;		CheckSafetyLimit();
CLINEA 0000H 0001H 0972H 0003H 0015H
	bl	_CheckSafetyLimit

;;		PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0973H 0003H 001AH
	sb	0f973h.0

;;		PERUN = 1;
CLINEA 0000H 0001H 0974H 0003H 000CH
	sb	0f937h.0

;;		PDRUN = 1;
CLINEA 0000H 0001H 0975H 0003H 000CH
	sb	0f927h.0

;;		PCRUN = 1;
CLINEA 0000H 0001H 0976H 0003H 000CH
	sb	0f917h.0

;;		if(ArrayCounter < 100) {
CLINEA 0000H 0001H 097AH 0003H 001AH
	l	er0,	NEAR _ArrayCounter
	cmp	r0,	#064h
	cmpc	r1,	#00h
	blt	_$M35
	b	_$L543
_$M35 :
CBLOCK 238 5 2426

;;			KeyCFData[0][ArrayCounter] = (unsigned int) CF_XRoll;	//X-Data
CLINEA 0000H 0001H 097BH 0004H 0041H
	l	er0,	NEAR _CF_XRoll
	l	er2,	NEAR _CF_XRoll+02h
	push	xr0
	bl	__ftolu8sw
	pop	er2
	add	sp,	#2 
	l	er0,	NEAR _ArrayCounter
	add	er0,	er0
	st	er2,	NEAR _KeyCFData[er0]

;;			KeyCFData[1][ArrayCounter] = (unsigned int) CF_YPitch;	//Y-Data
CLINEA 0000H 0001H 097CH 0004H 0042H
	l	er0,	NEAR _CF_YPitch
	l	er2,	NEAR _CF_YPitch+02h
	push	xr0
	bl	__ftolu8sw
	pop	er2
	add	sp,	#2 
	l	er0,	NEAR _ArrayCounter
	add	er0,	er0
	st	er2,	NEAR _KeyCFData+0d2h[er0]

;;			KeyMOTData[0][ArrayCounter] = Accel_PID_Motor1_temp;	//Motor 1
CLINEA 0000H 0001H 097EH 0004H 0041H
	l	er0,	NEAR _$ST14
	l	er2,	NEAR _$ST14+02h
	push	xr0
	bl	__ftolu8sw
	pop	er2
	add	sp,	#2 
	l	er0,	NEAR _ArrayCounter
	add	er0,	er0
	st	er2,	NEAR _KeyMOTData[er0]

;;			KeyMOTData[1][ArrayCounter] = Accel_PID_Motor2_temp;	//Motor 2
CLINEA 0000H 0001H 097FH 0004H 0041H
	l	er0,	NEAR _$ST15
	l	er2,	NEAR _$ST15+02h
	push	xr0
	bl	__ftolu8sw
	pop	er2
	add	sp,	#2 
	l	er0,	NEAR _ArrayCounter
	add	er0,	er0
	st	er2,	NEAR _KeyMOTData+0d2h[er0]

;;			KeyMOTData[2][ArrayCounter] = Accel_PID_Motor3_temp;	//Motor 3
CLINEA 0000H 0001H 0980H 0004H 0041H
	l	er0,	NEAR _$ST16
	l	er2,	NEAR _$ST16+02h
	push	xr0
	bl	__ftolu8sw
	pop	er2
	add	sp,	#2 
	l	er0,	NEAR _ArrayCounter
	add	er0,	er0
	st	er2,	NEAR _KeyMOTData+01a4h[er0]

;;			KeyMOTData[3][ArrayCounter] = Accel_PID_Motor4_temp;	//Motor 4
CLINEA 0000H 0001H 0981H 0004H 0041H
	l	er0,	NEAR _$ST17
	l	er2,	NEAR _$ST17+02h
	push	xr0
	bl	__ftolu8sw
	pop	er2
	add	sp,	#2 
	l	er0,	NEAR _ArrayCounter
	add	er0,	er0
	st	er2,	NEAR _KeyMOTData+0276h[er0]

;;			ArrayCounter += 1;
CLINEA 0000H 0001H 0983H 0004H 0015H
	l	er0,	NEAR _ArrayCounter
	add	er0,	#1 
	st	er0,	NEAR _ArrayCounter
CBLOCKEND 238 5 2436

;;		}
CLINEA 0000H 0000H 0984H 0003H 0003H
_$L543 :

;;	LED_3 = 0;		//C1, Pin 13
CLINEA 0000H 0001H 09CFH 0002H 0019H
	rb	0f260h.1
CBLOCKEND 238 2 2512

;;}
CLINEA 0000H 0001H 09D0H 0001H 0001H
	pop	xr4
	pop	xr8
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 238 1 2512
CFUNCTIONEND 238


	rseg $$RangeSensorControlPID$main
CFUNCTION 239

_RangeSensorControlPID	:
CBLOCK 239 1 2514

;;void RangeSensorControlPID(void){
CLINEA 0000H 0001H 09D2H 0001H 0021H
	push	lr
	push	xr8
	push	xr4
CBLOCK 239 2 2514
CRET 0008H
CLOCAL 47H 0002H 0024H 0002H "i" 02H 00H 01H

;;	Range_PIDError = Range_PIDSetpoint - Range_out;
CLINEA 0000H 0001H 09D7H 0002H 0030H
	l	er0,	NEAR _Range_out
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	pop	xr0
	l	er4,	NEAR _Range_PIDSetpoint
	l	er6,	NEAR _Range_PIDSetpoint+02h
	push	qr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Range_PIDError
	st	er2,	NEAR _Range_PIDError+02h

;;	Range_PIDCurrentCount = Range_PIDCounter * .007;		//Timer in Seconds (.007 used to convert 128Hz TBC to seconds)
CLINEA 0000H 0001H 09DAH 0002H 0071H
	l	er4,	NEAR _Range_PIDCounter
	mov	er6,	#0 
	push	xr4
	add	sp,	#-4
	bl	__dildu8sw
	mov	r4,	#079h
	mov	r5,	#0e9h
	mov	r6,	#026h
	mov	r7,	#031h
	mov	r8,	#08h
	mov	r9,	#0ach
	mov	r10,	#07ch
	mov	r11,	#03fh
	push	xr8
	push	xr4
	bl	__dmulu8sw
	add	sp,	#8 
	bl	__dtofu8sw
	add	sp,	#4 
	pop	xr4
	st	er4,	NEAR _Range_PIDCurrentCount
	st	er6,	NEAR _Range_PIDCurrentCount+02h

;;	Range_PIDCounter = 0;
CLINEA 0000H 0001H 09DBH 0002H 0016H
	mov	er4,	#0 
	st	er4,	NEAR _Range_PIDCounter

;;	Range_PIDErrSum += (Range_PIDError * Range_PIDCurrentCount);
CLINEA 0000H 0001H 09DEH 0002H 003DH
	push	xr0
	l	er4,	NEAR _Range_PIDCurrentCount
	push	xr4
	bl	__fmulu8sw
	add	sp,	#4 
	l	er4,	NEAR _Range_PIDErrSum
	l	er6,	NEAR _Range_PIDErrSum+02h
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr4
	st	er4,	NEAR _Range_PIDErrSum
	st	er6,	NEAR _Range_PIDErrSum+02h

;;	Range_PIDdErr	/= Range_PIDCurrentCount;
CLINEA 0000H 0001H 09E2H 0002H 0028H
	push	xr0
	l	er4,	NEAR _Range_PIDErrPrev
	l	er6,	NEAR _Range_PIDErrPrev+02h
	push	xr4
	bl	__fsubu8sw
	add	sp,	#4 
	l	er4,	NEAR _Range_PIDCurrentCount
	l	er6,	NEAR _Range_PIDCurrentCount+02h
	push	xr4
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr4
	st	er4,	NEAR _Range_PIDdErr
	st	er6,	NEAR _Range_PIDdErr+02h

;;	Range_PIDErrPrev = Range_PIDError;
CLINEA 0000H 0001H 09E3H 0002H 0023H
	st	er0,	NEAR _Range_PIDErrPrev
	st	er2,	NEAR _Range_PIDErrPrev+02h

;;	Range_PIDOutput = (Range_PID_kp*Range_PIDError) + (Range_PID_ki*Range_PIDErrSum) + (Range_PID_kd*Range_PIDdErr);
CLINEA 0000H 0001H 09E6H 0002H 0071H
	push	xr0
	l	er0,	NEAR _Range_PID_kp
	l	er2,	NEAR _Range_PID_kp+02h
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr0
	l	er4,	NEAR _Range_PIDErrSum
	l	er6,	NEAR _Range_PIDErrSum+02h
	push	xr4
	l	er4,	NEAR _Range_PID_ki
	l	er6,	NEAR _Range_PID_ki+02h
	push	xr4
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr4
	push	xr0
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	l	er4,	NEAR _Range_PID_kd
	l	er6,	NEAR _Range_PID_kd+02h
	push	xr4
	l	er4,	NEAR _Range_PIDdErr
	l	er6,	NEAR _Range_PIDdErr+02h
	push	xr4
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr4
	push	xr0
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Range_PIDOutput
	st	er2,	NEAR _Range_PIDOutput+02h

;;	PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 09EAH 0002H 001AH
	rb	0f973h.0

;;	PERUN = 0;
CLINEA 0000H 0001H 09EBH 0002H 000BH
	rb	0f937h.0

;;	PDRUN = 0;
CLINEA 0000H 0001H 09ECH 0002H 000BH
	rb	0f927h.0

;;	PCRUN = 0;
CLINEA 0000H 0001H 09EDH 0002H 000BH
	rb	0f917h.0

;;	PWF0D += Range_PIDOutput; 		//Can't be running to change (Only this variable)
CLINEA 0000H 0001H 09EEH 0002H 004EH
	l	er0,	0f962h
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _Range_PIDOutput
	l	er2,	NEAR _Range_PIDOutput+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f962h

;;	PWED += Range_PIDOutput;	
CLINEA 0000H 0001H 09EFH 0002H 001AH
	l	er0,	0f932h
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _Range_PIDOutput
	l	er2,	NEAR _Range_PIDOutput+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f932h

;;	PWDD += Range_PIDOutput;	
CLINEA 0000H 0001H 09F0H 0002H 001AH
	l	er0,	0f922h
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _Range_PIDOutput
	l	er2,	NEAR _Range_PIDOutput+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f922h

;;	PWCD += Range_PIDOutput;
CLINEA 0000H 0001H 09F1H 0002H 0019H
	l	er0,	0f912h
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _Range_PIDOutput
	l	er2,	NEAR _Range_PIDOutput+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f912h

;;	CheckSafetyLimit();
CLINEA 0000H 0001H 09F2H 0002H 0014H
	bl	_CheckSafetyLimit

;;	PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 09F3H 0002H 0019H
	sb	0f973h.0

;;	PERUN = 1;
CLINEA 0000H 0001H 09F4H 0002H 000BH
	sb	0f937h.0

;;	PDRUN = 1;
CLINEA 0000H 0001H 09F5H 0002H 000BH
	sb	0f927h.0

;;	PCRUN = 1;
CLINEA 0000H 0001H 09F6H 0002H 000BH
	sb	0f917h.0

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 09F8H 0002H 0017H
	mov	er0,	#0 
_$L549 :
CBLOCK 239 3 2553

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 09FAH 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 239 3 2555

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 09F8H 0002H 0017H
	add	er0,	#1 

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 09F8H 000EH 0013H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L549

;;	sprintf(SensorReturn, "%f,%f,%f", Range_out, Range_PIDCurrentCount,Range_PIDOutput);
CLINEA 0000H 0001H 09FEH 0002H 0055H
	l	er0,	NEAR _Range_PIDOutput
	l	er2,	NEAR _Range_PIDOutput+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Range_PIDCurrentCount
	l	er2,	NEAR _Range_PIDCurrentCount+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Range_out
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S191
	mov	r1,	#BYTE2 OFFSET $$S191
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#22

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 0A00H 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 0A01H 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0A04H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 0A05H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 0A06H 0002H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	r2,	#096h
	mov	r3,	#00h
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0A07H 0001H 0001H
	bal	_$L557

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0A07H 0002H 0019H
_$L555 :
CBLOCK 239 4 2567

;;		main_clrWDT();
CLINEA 0000H 0001H 0A08H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 239 4 2569

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0A07H 0001H 0001H
_$L557 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0A07H 000EH 0013H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L555
CBLOCKEND 239 2 2571

;;}
CLINEA 0000H 0001H 0A0BH 0001H 0001H
	pop	xr4
	pop	xr8
	pop	pc
CBLOCKEND 239 1 2571
CFUNCTIONEND 239


	rseg $$CheckSafetyLimit$main
CFUNCTION 240

_CheckSafetyLimit	:
CBLOCK 240 1 2573

;;void CheckSafetyLimit(void){	
CLINEA 0000H 0001H 0A0DH 0001H 001DH
CBLOCK 240 2 2573

;;	if(PWED > PWMUpperDutyLimitRun){
CLINEA 0000H 0001H 0A0FH 0002H 0021H
	l	er0,	0f932h
	l	er2,	NEAR _PWMUpperDutyLimitRun
	cmp	er0,	er2
	ble	_$L559
CBLOCK 240 3 2575

;;		PWED = PWMUpperDutyLimitRun;
CLINEA 0000H 0001H 0A10H 0003H 001EH
	st	er2,	0f932h
CBLOCKEND 240 3 2577

;;	}
CLINEA 0000H 0000H 0A11H 0002H 0002H
_$L559 :

;;	if(PWED < PWMLowerDutyLimitRun){
CLINEA 0000H 0001H 0A12H 0002H 0021H
	l	er0,	0f932h
	l	er2,	NEAR _PWMLowerDutyLimitRun
	cmp	er0,	er2
	bge	_$L561
CBLOCK 240 4 2578

;;		PWED = PWMLowerDutyLimitRun;
CLINEA 0000H 0001H 0A13H 0003H 001EH
	st	er2,	0f932h
CBLOCKEND 240 4 2580

;;	}
CLINEA 0000H 0000H 0A14H 0002H 0002H
_$L561 :

;;	if(PWF0D > PWMUpperDutyLimitRun){
CLINEA 0000H 0001H 0A15H 0002H 0022H
	l	er0,	0f962h
	l	er2,	NEAR _PWMUpperDutyLimitRun
	cmp	er0,	er2
	ble	_$L563
CBLOCK 240 5 2581

;;		PWF0D = PWMUpperDutyLimitRun;
CLINEA 0000H 0001H 0A16H 0003H 001FH
	st	er2,	0f962h
CBLOCKEND 240 5 2583

;;	}
CLINEA 0000H 0000H 0A17H 0002H 0002H
_$L563 :

;;	if(PWF0D < PWMLowerDutyLimitRun){
CLINEA 0000H 0001H 0A18H 0002H 0022H
	l	er0,	0f962h
	l	er2,	NEAR _PWMLowerDutyLimitRun
	cmp	er0,	er2
	bge	_$L565
CBLOCK 240 6 2584

;;		PWF0D = PWMLowerDutyLimitRun;
CLINEA 0000H 0001H 0A19H 0003H 001FH
	st	er2,	0f962h
CBLOCKEND 240 6 2586

;;	}
CLINEA 0000H 0000H 0A1AH 0002H 0002H
_$L565 :

;;	if(PWDD > PWMUpperDutyLimitRun){
CLINEA 0000H 0001H 0A1BH 0002H 0021H
	l	er0,	0f922h
	l	er2,	NEAR _PWMUpperDutyLimitRun
	cmp	er0,	er2
	ble	_$L567
CBLOCK 240 7 2587

;;		PWDD = PWMUpperDutyLimitRun;
CLINEA 0000H 0001H 0A1CH 0003H 001EH
	st	er2,	0f922h
CBLOCKEND 240 7 2589

;;	}
CLINEA 0000H 0000H 0A1DH 0002H 0002H
_$L567 :

;;	if(PWDD < PWMLowerDutyLimitRun){
CLINEA 0000H 0001H 0A1EH 0002H 0021H
	l	er0,	0f922h
	l	er2,	NEAR _PWMLowerDutyLimitRun
	cmp	er0,	er2
	bge	_$L569
CBLOCK 240 8 2590

;;		PWDD = PWMLowerDutyLimitRun;
CLINEA 0000H 0001H 0A1FH 0003H 001EH
	st	er2,	0f922h
CBLOCKEND 240 8 2592

;;	}
CLINEA 0000H 0000H 0A20H 0002H 0002H
_$L569 :

;;	if(PWCD > PWMUpperDutyLimitRun){
CLINEA 0000H 0001H 0A21H 0002H 0021H
	l	er0,	0f912h
	l	er2,	NEAR _PWMUpperDutyLimitRun
	cmp	er0,	er2
	ble	_$L571
CBLOCK 240 9 2593

;;		PWCD = PWMUpperDutyLimitRun;
CLINEA 0000H 0001H 0A22H 0003H 001EH
	st	er2,	0f912h
CBLOCKEND 240 9 2595

;;	}
CLINEA 0000H 0000H 0A23H 0002H 0002H
_$L571 :

;;	if(PWCD < PWMLowerDutyLimitRun){
CLINEA 0000H 0001H 0A24H 0002H 0021H
	l	er0,	0f912h
	l	er2,	NEAR _PWMLowerDutyLimitRun
	cmp	er0,	er2
	bge	_$L573
CBLOCK 240 10 2596

;;		PWCD = PWMLowerDutyLimitRun;
CLINEA 0000H 0001H 0A25H 0003H 001EH
	st	er2,	0f912h
CBLOCKEND 240 10 2598

;;	}
CLINEA 0000H 0000H 0A26H 0002H 0002H
_$L573 :
CBLOCKEND 240 2 2599

;;}
CLINEA 0000H 0001H 0A27H 0001H 0001H
	rt
CBLOCKEND 240 1 2599
CFUNCTIONEND 240


	rseg $$CheckSafetyLimitUnscaled$main
CFUNCTION 241

_CheckSafetyLimitUnscaled	:
CBLOCK 241 1 2601

;;void CheckSafetyLimitUnscaled(void){	
CLINEA 0000H 0001H 0A29H 0001H 0025H
CBLOCK 241 2 2601

;;	if(Accel_PID_Motor1 > (49151)){
CLINEA 0000H 0001H 0A2BH 0002H 0020H
	l	er0,	NEAR _Accel_PID_Motor1
	mov	er2,	#0 
	cmp	r0,	#0ffh
	cmpc	r1,	#0bfh
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	bles	_$L576
CBLOCK 241 3 2603

;;		Accel_PID_Motor1 = 49151;
CLINEA 0000H 0001H 0A2CH 0003H 001BH
	mov	r0,	#0ffh
	mov	r1,	#0bfh
	st	er0,	NEAR _Accel_PID_Motor1
CBLOCKEND 241 3 2605

;;	}
CLINEA 0000H 0000H 0A2DH 0002H 0002H
_$L576 :

;;	if(Accel_PID_Motor1 < 16383){
CLINEA 0000H 0001H 0A2EH 0002H 001EH
	l	er0,	NEAR _Accel_PID_Motor1
	cmp	r0,	#0ffh
	cmpc	r1,	#03fh
	bge	_$L578
CBLOCK 241 4 2606

;;		Accel_PID_Motor1 = 16383;
CLINEA 0000H 0001H 0A2FH 0003H 001BH
	mov	r0,	#0ffh
	mov	r1,	#03fh
	st	er0,	NEAR _Accel_PID_Motor1
CBLOCKEND 241 4 2608

;;	}
CLINEA 0000H 0000H 0A30H 0002H 0002H
_$L578 :

;;	if(Accel_PID_Motor2 > (49151)){
CLINEA 0000H 0001H 0A31H 0002H 0020H
	l	er0,	NEAR _Accel_PID_Motor2
	mov	er2,	#0 
	cmp	r0,	#0ffh
	cmpc	r1,	#0bfh
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	bles	_$L580
CBLOCK 241 5 2609

;;		Accel_PID_Motor2 = 49151;
CLINEA 0000H 0001H 0A32H 0003H 001BH
	mov	r0,	#0ffh
	mov	r1,	#0bfh
	st	er0,	NEAR _Accel_PID_Motor2
CBLOCKEND 241 5 2611

;;	}
CLINEA 0000H 0000H 0A33H 0002H 0002H
_$L580 :

;;	if(Accel_PID_Motor2 < (16383)){
CLINEA 0000H 0001H 0A34H 0002H 0020H
	l	er0,	NEAR _Accel_PID_Motor2
	cmp	r0,	#0ffh
	cmpc	r1,	#03fh
	bge	_$L582
CBLOCK 241 6 2612

;;		Accel_PID_Motor2 = 16383;
CLINEA 0000H 0001H 0A35H 0003H 001BH
	mov	r0,	#0ffh
	mov	r1,	#03fh
	st	er0,	NEAR _Accel_PID_Motor2
CBLOCKEND 241 6 2614

;;	}
CLINEA 0000H 0000H 0A36H 0002H 0002H
_$L582 :

;;	if(Accel_PID_Motor3 > (49151)){
CLINEA 0000H 0001H 0A37H 0002H 0020H
	l	er0,	NEAR _Accel_PID_Motor3
	mov	er2,	#0 
	cmp	r0,	#0ffh
	cmpc	r1,	#0bfh
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	bles	_$L584
CBLOCK 241 7 2615

;;		Accel_PID_Motor3 = 49151;
CLINEA 0000H 0001H 0A38H 0003H 001BH
	mov	r0,	#0ffh
	mov	r1,	#0bfh
	st	er0,	NEAR _Accel_PID_Motor3
CBLOCKEND 241 7 2617

;;	}
CLINEA 0000H 0000H 0A39H 0002H 0002H
_$L584 :

;;	if(Accel_PID_Motor3 < (16383)){
CLINEA 0000H 0001H 0A3AH 0002H 0020H
	l	er0,	NEAR _Accel_PID_Motor3
	cmp	r0,	#0ffh
	cmpc	r1,	#03fh
	bge	_$L586
CBLOCK 241 8 2618

;;		Accel_PID_Motor3 = 16383;
CLINEA 0000H 0001H 0A3BH 0003H 001BH
	mov	r0,	#0ffh
	mov	r1,	#03fh
	st	er0,	NEAR _Accel_PID_Motor3
CBLOCKEND 241 8 2620

;;	}
CLINEA 0000H 0000H 0A3CH 0002H 0002H
_$L586 :

;;	if(Accel_PID_Motor4 > (49151)){
CLINEA 0000H 0001H 0A3DH 0002H 0020H
	l	er0,	NEAR _Accel_PID_Motor4
	mov	er2,	#0 
	cmp	r0,	#0ffh
	cmpc	r1,	#0bfh
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	bles	_$L588
CBLOCK 241 9 2621

;;		Accel_PID_Motor4 = 49151;
CLINEA 0000H 0001H 0A3EH 0003H 001BH
	mov	r0,	#0ffh
	mov	r1,	#0bfh
	st	er0,	NEAR _Accel_PID_Motor4
CBLOCKEND 241 9 2623

;;	}
CLINEA 0000H 0000H 0A3FH 0002H 0002H
_$L588 :

;;	if(Accel_PID_Motor4 < (16383)){
CLINEA 0000H 0001H 0A40H 0002H 0020H
	l	er0,	NEAR _Accel_PID_Motor4
	cmp	r0,	#0ffh
	cmpc	r1,	#03fh
	bge	_$L590
CBLOCK 241 10 2624

;;		Accel_PID_Motor4 = 16383;
CLINEA 0000H 0001H 0A41H 0003H 001BH
	mov	r0,	#0ffh
	mov	r1,	#03fh
	st	er0,	NEAR _Accel_PID_Motor4
CBLOCKEND 241 10 2626

;;	}
CLINEA 0000H 0000H 0A42H 0002H 0002H
_$L590 :
CBLOCKEND 241 2 2627

;;}
CLINEA 0000H 0001H 0A43H 0001H 0001H
	rt
CBLOCKEND 241 1 2627
CFUNCTIONEND 241


	rseg $$Shutdown$main
CFUNCTION 242

_Shutdown	:
CBLOCK 242 1 2629

;;void Shutdown(void){
CLINEA 0000H 0001H 0A45H 0001H 0014H
	push	lr
CBLOCK 242 2 2629
CRET 0000H

;;	if((PWED > PWMSafeDuty)||(PWF0D > PWMSafeDuty)||(PWDD > PWMSafeDuty)||(PWCD > PWMSafeDuty)){
CLINEA 0000H 0001H 0A46H 0002H 005DH
	l	er0,	0f932h
	l	er2,	NEAR _PWMSafeDuty
	cmp	er0,	er2
	bgt	_$L594
	l	er0,	0f962h
	cmp	er0,	er2
	bgt	_$L594
	l	er0,	0f922h
	cmp	er0,	er2
	bgt	_$L594
	l	er0,	0f912h
	cmp	er0,	er2
	bgt	_$M40
	b	_$L607
_$M40 :
_$L594 :
CBLOCK 242 3 2630
CBLOCK 242 4 2631

;;			main_clrWDT();					
CLINEA 0000H 0001H 0A48H 0004H 0016H
	bl	_main_clrWDT

;;			PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 0A49H 0004H 001CH
	rb	0f973h.0

;;			PERUN = 0;
CLINEA 0000H 0001H 0A4AH 0004H 000DH
	rb	0f937h.0

;;			PDRUN = 0;
CLINEA 0000H 0001H 0A4BH 0004H 000DH
	rb	0f927h.0

;;			PCRUN = 0;
CLINEA 0000H 0001H 0A4CH 0004H 000DH
	rb	0f917h.0

;;			PWF0D -= 10; //Can't be running to change (Only this variable)
CLINEA 0000H 0001H 0A4DH 0004H 0041H
	l	er0,	0f962h
	add	er0,	#-10
	st	er0,	0f962h

;;			PWED -= 10;
CLINEA 0000H 0001H 0A4EH 0004H 000EH
	l	er0,	0f932h
	add	er0,	#-10
	st	er0,	0f932h

;;			PWDD -= 10;
CLINEA 0000H 0001H 0A4FH 0004H 000EH
	l	er0,	0f922h
	add	er0,	#-10
	st	er0,	0f922h

;;			PWCD -= 10;
CLINEA 0000H 0001H 0A50H 0004H 000EH
	l	er0,	0f912h
	add	er0,	#-10
	st	er0,	0f912h

;;			PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0A51H 0004H 001BH
	sb	0f973h.0

;;			PERUN = 1;
CLINEA 0000H 0001H 0A52H 0004H 000DH
	sb	0f937h.0

;;			PDRUN = 1;
CLINEA 0000H 0001H 0A53H 0004H 000DH
	sb	0f927h.0

;;			PCRUN = 1;
CLINEA 0000H 0001H 0A54H 0004H 000DH
	sb	0f917h.0

;;			NOPms(100);
CLINEA 0000H 0001H 0A55H 0004H 000EH
	mov	r0,	#064h
	mov	r1,	#00h
	bl	_NOPms

;;			if(PWED <= PWMSafeDuty){
CLINEA 0000H 0001H 0A57H 0004H 001BH
	l	er0,	0f932h
	l	er2,	NEAR _PWMSafeDuty
	cmp	er0,	er2
	bgt	_$L610
CBLOCK 242 5 2647

;;				PWED = PWMSafeDuty;
CLINEA 0000H 0001H 0A58H 0005H 0017H
	st	er2,	0f932h
CBLOCKEND 242 5 2649

;;			}
CLINEA 0000H 0000H 0A59H 0004H 0004H
_$L610 :

;;			if(PWF0D <= PWMSafeDuty){
CLINEA 0000H 0001H 0A5AH 0004H 001CH
	l	er0,	0f962h
	cmp	er0,	er2
	bgt	_$L612
CBLOCK 242 6 2650

;;				PWF0D = PWMSafeDuty;
CLINEA 0000H 0001H 0A5BH 0005H 0018H
	st	er2,	0f962h
CBLOCKEND 242 6 2652

;;			}
CLINEA 0000H 0000H 0A5CH 0004H 0004H
_$L612 :

;;			if(PWDD <= PWMSafeDuty){
CLINEA 0000H 0001H 0A5DH 0004H 001BH
	l	er0,	0f922h
	cmp	er0,	er2
	bgt	_$L614
CBLOCK 242 7 2653

;;				PWDD = PWMSafeDuty;
CLINEA 0000H 0001H 0A5EH 0005H 0017H
	st	er2,	0f922h
CBLOCKEND 242 7 2655

;;			}
CLINEA 0000H 0000H 0A5FH 0004H 0004H
_$L614 :

;;			if(PWCD <= PWMSafeDuty){
CLINEA 0000H 0001H 0A60H 0004H 001BH
	l	er0,	0f912h
	cmp	er0,	er2
	bgt	_$L616
CBLOCK 242 8 2656

;;				PWCD = PWMSafeDuty;
CLINEA 0000H 0001H 0A61H 0005H 0017H
	st	er2,	0f912h
CBLOCKEND 242 8 2658

;;			}
CLINEA 0000H 0000H 0A62H 0004H 0004H
_$L616 :
CBLOCKEND 242 4 2660

;;		}while((PWED > PWMSafeDuty)||(PWF0D > PWMSafeDuty)||(PWDD > PWMSafeDuty)||(PWCD > PWMSafeDuty));
CLINEA 0000H 0000H 0A64H 0003H 0062H
	l	er0,	0f932h
	cmp	er0,	er2
	ble	_$M41
	b	_$L594
_$M41 :
	l	er0,	0f962h
	cmp	er0,	er2
	ble	_$M42
	b	_$L594
_$M42 :
	l	er0,	0f922h
	cmp	er0,	er2
	ble	_$M43
	b	_$L594
_$M43 :
	l	er0,	0f912h
	cmp	er0,	er2
	ble	_$M44
	b	_$L594
_$M44 :
_$L607 :
CBLOCKEND 242 3 2661

;;	Accel_PID_Motor1 = 16383;
CLINEA 0000H 0001H 0A66H 0002H 001AH
	mov	r0,	#0ffh
	mov	r1,	#03fh
	st	er0,	NEAR _Accel_PID_Motor1

;;	Accel_PID_Motor2 = 16383;
CLINEA 0000H 0001H 0A67H 0002H 001AH
	st	er0,	NEAR _Accel_PID_Motor2

;;	Accel_PID_Motor3 = 16383;
CLINEA 0000H 0001H 0A68H 0002H 001AH
	st	er0,	NEAR _Accel_PID_Motor3

;;	Accel_PID_Motor4 = 16383;
CLINEA 0000H 0001H 0A69H 0002H 001AH
	st	er0,	NEAR _Accel_PID_Motor4
CBLOCKEND 242 2 2667

;;}
CLINEA 0000H 0001H 0A6BH 0001H 0001H
	pop	pc
CBLOCKEND 242 1 2667
CFUNCTIONEND 242


	rseg $$ESC1_PWM$main
CFUNCTION 215

_ESC1_PWM	:
CBLOCK 215 1 2671

;;void ESC1_PWM(void){
CLINEA 0000H 0001H 0A6FH 0001H 0014H
CBLOCK 215 2 2671

;;      PC0DIR = 0;       // PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 0A7EH 0007H 003BH
	rb	0f261h.0

;;      PC0C1  = 1;       // PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0A81H 0007H 003BH
	sb	0f263h.0

;;      PC0C0  = 1;       
CLINEA 0000H 0001H 0A82H 0007H 0018H
	sb	0f262h.0

;;      PC0MD1  = 1;            // PortC Bit0 set to PWM Output (1,0)...
CLINEA 0000H 0001H 0A85H 0007H 0046H
	sb	0f265h.0

;;      PC0MD0  = 0;      
CLINEA 0000H 0001H 0A86H 0007H 0018H
	rb	0f264h.0

;;      PFCS1 = 0;        //00= LS; 01=HS; 10=PLL
CLINEA 0000H 0001H 0A8AH 0007H 002FH
	rb	0f972h.1

;;      PFCS0 = 1;
CLINEA 0000H 0001H 0A8BH 0007H 0010H
	sb	0f972h.0

;;      PWFP = PWMPeriod;            // Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)
CLINEA 0000H 0001H 0A8EH 0007H 0092H
	l	er0,	NEAR _PWMPeriod
	st	er0,	0f960h

;;      PWF0D =    PWMSafeDuty;           //12    ~  0.25 % duty cycle @ 160Hz
CLINEA 0000H 0001H 0A98H 0007H 004CH
	l	er0,	NEAR _PWMSafeDuty
	st	er0,	0f962h

;;      PFRUN = 0;        // OFF to start
CLINEA 0000H 0001H 0A9AH 0007H 0027H
	rb	0f973h.0
CBLOCKEND 215 2 2715

;;}
CLINEA 0000H 0001H 0A9BH 0001H 0001H
	rt
CBLOCKEND 215 1 2715
CFUNCTIONEND 215


	rseg $$ESC2_PWM$main
CFUNCTION 216

_ESC2_PWM	:
CBLOCK 216 1 2720

;;void ESC2_PWM(void){
CLINEA 0000H 0001H 0AA0H 0001H 0014H
CBLOCK 216 2 2720

;;      PB2DIR = 0;       // PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 0AAFH 0007H 003BH
	rb	0f259h.2

;;      PB2C1  = 1;       // PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0AB2H 0007H 003BH
	sb	0f25bh.2

;;      PB2C0  = 1;       
CLINEA 0000H 0001H 0AB3H 0007H 0018H
	sb	0f25ah.2

;;      PB2MD1  = 0;            // PortB Bit0 set to PWM Output (0,1)...
CLINEA 0000H 0001H 0AB6H 0007H 0046H
	rb	0f25dh.2

;;      PB2MD0  = 1;      
CLINEA 0000H 0001H 0AB7H 0007H 0018H
	sb	0f25ch.2

;;      PECS1 = 0;        //00= LS; 01=HS; 10=PLL
CLINEA 0000H 0001H 0ABBH 0007H 002FH
	rb	0f936h.1

;;      PECS0 = 1;
CLINEA 0000H 0001H 0ABCH 0007H 0010H
	sb	0f936h.0

;;      PWEP = PWMPeriod;            // Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)
CLINEA 0000H 0001H 0ABFH 0007H 0092H
	l	er0,	NEAR _PWMPeriod
	st	er0,	0f930h

;;      PWED =    PWMSafeDuty;           //12    ~  0.25 % duty cycle @ 160Hz
CLINEA 0000H 0001H 0AC9H 0007H 004BH
	l	er0,	NEAR _PWMSafeDuty
	st	er0,	0f932h

;;      PERUN = 0;        // OFF to start
CLINEA 0000H 0001H 0ACBH 0007H 0027H
	rb	0f937h.0
CBLOCKEND 216 2 2764

;;}
CLINEA 0000H 0001H 0ACCH 0001H 0001H
	rt
CBLOCKEND 216 1 2764
CFUNCTIONEND 216


	rseg $$ESC3_PWM$main
CFUNCTION 217

_ESC3_PWM	:
CBLOCK 217 1 2770

;;void ESC3_PWM(void){
CLINEA 0000H 0001H 0AD2H 0001H 0014H
CBLOCK 217 2 2770

;;      PA1DIR = 0;       // PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 0AE1H 0007H 003BH
	rb	0f251h.1

;;      PA1C1  = 1;       // PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0AE4H 0007H 003BH
	sb	0f253h.1

;;      PA1C0  = 1;       
CLINEA 0000H 0001H 0AE5H 0007H 0018H
	sb	0f252h.1

;;      PA1MD1  = 0;            // PortB Bit0 set to PWM Output (0,1)...
CLINEA 0000H 0001H 0AE8H 0007H 0046H
	rb	0f255h.1

;;      PA1MD0  = 1;      
CLINEA 0000H 0001H 0AE9H 0007H 0018H
	sb	0f254h.1

;;      PDCS1 = 0;        //00= LS; 01=HS; 10=PLL
CLINEA 0000H 0001H 0AEDH 0007H 002FH
	rb	0f926h.1

;;      PDCS0 = 1;
CLINEA 0000H 0001H 0AEEH 0007H 0010H
	sb	0f926h.0

;;      PWDP = PWMPeriod;            // Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)
CLINEA 0000H 0001H 0AF1H 0007H 0092H
	l	er0,	NEAR _PWMPeriod
	st	er0,	0f920h

;;      PWDD =    PWMSafeDuty;           //12    ~  0.25 % duty cycle @ 160Hz
CLINEA 0000H 0001H 0AFBH 0007H 004BH
	l	er0,	NEAR _PWMSafeDuty
	st	er0,	0f922h

;;      PDRUN = 0;        // OFF to start
CLINEA 0000H 0001H 0AFDH 0007H 0027H
	rb	0f927h.0
CBLOCKEND 217 2 2814

;;}
CLINEA 0000H 0001H 0AFEH 0001H 0001H
	rt
CBLOCKEND 217 1 2814
CFUNCTIONEND 217


	rseg $$ESC4_PWM$main
CFUNCTION 218

_ESC4_PWM	:
CBLOCK 218 1 2821

;;void ESC4_PWM(void){
CLINEA 0000H 0001H 0B05H 0001H 0014H
CBLOCK 218 2 2821

;;      PA0DIR = 0;       // PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 0B14H 0007H 003BH
	rb	0f251h.0

;;      PA0C1  = 1;       // PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0B17H 0007H 003BH
	sb	0f253h.0

;;      PA0C0  = 1;       
CLINEA 0000H 0001H 0B18H 0007H 0018H
	sb	0f252h.0

;;      PA0MD1  = 0;            // PortB Bit0 set to PWM Output (0,1)...
CLINEA 0000H 0001H 0B1BH 0007H 0046H
	rb	0f255h.0

;;      PA0MD0  = 1;      
CLINEA 0000H 0001H 0B1CH 0007H 0018H
	sb	0f254h.0

;;      PCCS1 = 0;        //00= LS; 01=HS; 10=PLL
CLINEA 0000H 0001H 0B20H 0007H 002FH
	rb	0f916h.1

;;      PCCS0 = 1;
CLINEA 0000H 0001H 0B21H 0007H 0010H
	sb	0f916h.0

;;      PWCP = PWMPeriod;            // Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)
CLINEA 0000H 0001H 0B24H 0007H 0092H
	l	er0,	NEAR _PWMPeriod
	st	er0,	0f910h

;;      PWCD =    PWMSafeDuty;           //12    ~  0.25 % duty cycle @ 160Hz
CLINEA 0000H 0001H 0B2FH 0007H 004BH
	l	er0,	NEAR _PWMSafeDuty
	st	er0,	0f912h

;;      PCRUN = 0;        // OFF to start
CLINEA 0000H 0001H 0B33H 0007H 0027H
	rb	0f917h.0
CBLOCKEND 218 2 2868

;;}
CLINEA 0000H 0001H 0B34H 0001H 0001H
	rt
CBLOCKEND 218 1 2868
CFUNCTIONEND 218


	rseg $$TBC_ISR$main
CFUNCTION 254

_TBC_ISR	:
CBLOCK 254 1 2873

;;{
CLINEA 0000H 0001H 0B39H 0001H 0001H
CBLOCK 254 2 2873

;;	E128H = 0;	//Turn OFF TBC Interrupt
CLINEA 0000H 0001H 0B3AH 0002H 0024H
	rb	0f016h.5

;;	E128H = 1;	//Turn ON TBC Interrupt
CLINEA 0000H 0001H 0B3BH 0002H 0023H
	sb	0f016h.5
CBLOCKEND 254 2 2876

;;}
CLINEA 0000H 0001H 0B3CH 0001H 0001H
	rt
CBLOCKEND 254 1 2876
CFUNCTIONEND 254


	rseg $$TMR89_ISR$main
CFUNCTION 255

_TMR89_ISR	:
CBLOCK 255 1 2881

;;{
CLINEA 0000H 0001H 0B41H 0001H 0001H
	push	lr
CBLOCK 255 2 2881
CRET 0000H

;;	LED_1 ^= 1;
CLINEA 0000H 0001H 0B42H 0002H 000CH
	tb	0f250h.2
	beq	_$M51
	rb	0f250h.2
	bal	_$M52
_$M51 :
	sb	0f250h.2
_$M52 :

;;	Mag_PIDCounter++;
CLINEA 0000H 0000H 0B43H 0002H 0012H
	l	er0,	NEAR _Mag_PIDCounter
	add	er0,	#1 
	st	er0,	NEAR _Mag_PIDCounter

;;	if(Mag_PIDCounter >= 65535){
CLINEA 0000H 0001H 0B44H 0002H 001DH
	mov	er2,	#0 
	cmp	r0,	#0ffh
	cmpc	r1,	#0ffh
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	blts	_$L635
CBLOCK 255 3 2884

;;		Mag_PIDCounter = 0;
CLINEA 0000H 0001H 0B45H 0003H 0015H
	mov	er0,	#0 
	st	er0,	NEAR _Mag_PIDCounter
CBLOCKEND 255 3 2886

;;	}
CLINEA 0000H 0000H 0B46H 0002H 0002H
_$L635 :

;;	Accel_PID_Counter++;
CLINEA 0000H 0000H 0B47H 0002H 0015H
	l	er0,	NEAR _Accel_PID_Counter
	add	er0,	#1 
	st	er0,	NEAR _Accel_PID_Counter

;;	if(Accel_PID_Counter >= 65535){
CLINEA 0000H 0001H 0B48H 0002H 0020H
	mov	er2,	#0 
	cmp	r0,	#0ffh
	cmpc	r1,	#0ffh
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	blts	_$L637
CBLOCK 255 4 2888

;;		Accel_PID_Counter = 0;
CLINEA 0000H 0001H 0B49H 0003H 0018H
	mov	er0,	#0 
	st	er0,	NEAR _Accel_PID_Counter
CBLOCKEND 255 4 2890

;;	}
CLINEA 0000H 0000H 0B4AH 0002H 0002H
_$L637 :

;;	Accel_PID_XRollCounter++;
CLINEA 0000H 0000H 0B4BH 0002H 001AH
	l	er0,	NEAR _Accel_PID_XRollCounter
	add	er0,	#1 
	st	er0,	NEAR _Accel_PID_XRollCounter

;;	if(Accel_PID_XRollCounter >= 65535){
CLINEA 0000H 0001H 0B4CH 0002H 0025H
	mov	er2,	#0 
	cmp	r0,	#0ffh
	cmpc	r1,	#0ffh
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	blts	_$L639
CBLOCK 255 5 2892

;;		Accel_PID_XRollCounter = 0;
CLINEA 0000H 0001H 0B4DH 0003H 001DH
	mov	er0,	#0 
	st	er0,	NEAR _Accel_PID_XRollCounter
CBLOCKEND 255 5 2894

;;	}
CLINEA 0000H 0000H 0B4EH 0002H 0002H
_$L639 :

;;	Accel_PID_YPitchCounter++;
CLINEA 0000H 0000H 0B4FH 0002H 001BH
	l	er0,	NEAR _Accel_PID_YPitchCounter
	add	er0,	#1 
	st	er0,	NEAR _Accel_PID_YPitchCounter

;;	if(Accel_PID_YPitchCounter >= 65535){
CLINEA 0000H 0001H 0B50H 0002H 0026H
	mov	er2,	#0 
	cmp	r0,	#0ffh
	cmpc	r1,	#0ffh
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	blts	_$L641
CBLOCK 255 6 2896

;;		Accel_PID_YPitchCounter = 0;
CLINEA 0000H 0001H 0B51H 0003H 001EH
	mov	er0,	#0 
	st	er0,	NEAR _Accel_PID_YPitchCounter
CBLOCKEND 255 6 2898

;;	}
CLINEA 0000H 0000H 0B52H 0002H 0002H
_$L641 :

;;	Range_PIDCounter++;
CLINEA 0000H 0000H 0B53H 0002H 0014H
	l	er0,	NEAR _Range_PIDCounter
	add	er0,	#1 
	st	er0,	NEAR _Range_PIDCounter

;;	if(Range_PIDCounter >= 65535){
CLINEA 0000H 0001H 0B54H 0002H 001FH
	mov	er2,	#0 
	cmp	r0,	#0ffh
	cmpc	r1,	#0ffh
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	blts	_$L643
CBLOCK 255 7 2900

;;		Range_PIDCounter = 0;
CLINEA 0000H 0001H 0B55H 0003H 0017H
	mov	er0,	#0 
	st	er0,	NEAR _Range_PIDCounter
CBLOCKEND 255 7 2902

;;	}
CLINEA 0000H 0000H 0B56H 0002H 0002H
_$L643 :

;;	CF_Gyro_Counter++;
CLINEA 0000H 0000H 0B57H 0002H 0013H
	l	er0,	NEAR _CF_Gyro_Counter
	l	er2,	NEAR _CF_Gyro_Counter+02h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#080h
	mov	r3,	#03fh
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _CF_Gyro_Counter
	st	er2,	NEAR _CF_Gyro_Counter+02h

;;	if(CF_Gyro_Counter >= 65535){
CLINEA 0000H 0001H 0B58H 0002H 001EH
	push	xr0
	mov	r0,	#00h
	mov	r1,	#0ffh
	mov	r2,	#07fh
	mov	r3,	#047h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$L645
CBLOCK 255 8 2904

;;		CF_Gyro_Counter = 0;
CLINEA 0000H 0001H 0B59H 0003H 0016H
	mov	er0,	#0 
	st	er0,	NEAR _CF_Gyro_Counter
	st	er0,	NEAR _CF_Gyro_Counter+02h
CBLOCKEND 255 8 2906

;;	}
CLINEA 0000H 0000H 0B5AH 0002H 0002H
_$L645 :
CBLOCKEND 255 2 2907

;;}
CLINEA 0000H 0001H 0B5BH 0001H 0001H
	pop	pc
CBLOCKEND 255 1 2907
CFUNCTIONEND 255


	rseg $$AccelGyroDataReady_ISR$main
CFUNCTION 256

_AccelGyroDataReady_ISR	:
CBLOCK 256 1 2911

;;{
CLINEA 0000H 0001H 0B5FH 0001H 0001H
CBLOCK 256 2 2911

;;	AccGyro_ReadFlag = 1;
CLINEA 0000H 0001H 0B60H 0002H 0016H
	mov	r0,	#01h
	st	r0,	NEAR _AccGyro_ReadFlag
CBLOCKEND 256 2 2913

;;}
CLINEA 0000H 0001H 0B61H 0001H 0001H
	rt
CBLOCKEND 256 1 2913
CFUNCTIONEND 256


	rseg $$_funcUartFin$main
CFUNCTION 243

__funcUartFin	:
CBLOCK 243 1 2924

;;{
CLINEA 0000H 0001H 0B6CH 0001H 0001H
	push	lr
CBLOCK 243 2 2924
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	uart_continue();					// Function in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 0B6DH 0002H 0054H
	bl	_uart_continue

;;	_flgUartFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 0B6EH 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __flgUartFin
CBLOCKEND 243 2 2928

;;}
CLINEA 0000H 0001H 0B70H 0001H 0001H
	pop	pc
CBLOCKEND 243 1 2928
CFUNCTIONEND 243


	rseg $$_funcI2CFin$main
CFUNCTION 244

__funcI2CFin	:
CBLOCK 244 1 2939

;;{
CLINEA 0000H 0001H 0B7BH 0001H 0001H
	push	lr
CBLOCK 244 2 2939
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	i2c_continue();					// Function in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 0B7CH 0002H 0053H
	bl	_i2c_continue

;;	_flgI2CFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 0B7DH 0002H 0025H
	mov	r0,	#01h
	st	r0,	NEAR __flgI2CFin
CBLOCKEND 244 2 2943

;;}
CLINEA 0000H 0001H 0B7FH 0001H 0001H
	pop	pc
CBLOCKEND 244 1 2943
CFUNCTIONEND 244


	rseg $$_intI2c$main
CFUNCTION 248

__intI2c	:
CBLOCK 248 1 2953

;;{
CLINEA 0000H 0001H 0B89H 0001H 0001H
CBLOCK 248 2 2953

;;	i2c_continue();
CLINEA 0000H 0001H 0B8AH 0002H 0010H
	b	_i2c_continue
CBLOCKEND 248 2 2956
CLINEA 0000H 0001H 0B8CH 0001H 0001H
CBLOCKEND 248 1 2956
CFUNCTIONEND 248


	rseg $$checkI2C$main
CFUNCTION 245

_checkI2C	:
CBLOCK 245 1 2966

;;{
CLINEA 0000H 0001H 0B96H 0001H 0001H
	push	lr
CBLOCK 245 2 2966
CRET 0000H
CLOCAL 47H 0002H 0024H 0002H "ret" 02H 00H 01H

;;	while (ret != 1) {
CLINEA 0000H 0000H 0B9BH 0002H 0013H
_$L654 :
CBLOCK 245 3 2971

;;		ret = i2c_continue();
CLINEA 0000H 0000H 0B9CH 0003H 0017H
	bl	_i2c_continue
CBLOCK 245 4 2973
CBLOCKEND 245 4 2975
CBLOCKEND 245 3 2976

;;	while (ret != 1) {
CLINEA 0000H 0000H 0B9BH 000EH 0013H
	cmp	r0,	#01h
	cmpc	r1,	#00h
	bne	_$L654
CBLOCKEND 245 2 2977

;;}
CLINEA 0000H 0001H 0BA1H 0001H 0001H
	pop	pc
CBLOCKEND 245 1 2977
CFUNCTIONEND 245


	rseg $$main_reqNotHalt$main
CFUNCTION 246

_main_reqNotHalt	:
CBLOCK 246 1 2987

;;{
CLINEA 0000H 0001H 0BABH 0001H 0001H
CBLOCK 246 2 2987

;;	_reqNotHalt = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 0BACH 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __reqNotHalt
CBLOCKEND 246 2 2989

;;}
CLINEA 0000H 0001H 0BADH 0001H 0001H
	rt
CBLOCKEND 246 1 2989
CFUNCTIONEND 246


	rseg $$_intUart$main
CFUNCTION 247

__intUart	:
CBLOCK 247 1 2999

;;{
CLINEA 0000H 0001H 0BB7H 0001H 0001H
CBLOCK 247 2 2999

;;		uart_continue(); //in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 0BB8H 0003H 0047H
	b	_uart_continue
CBLOCKEND 247 2 3001
CLINEA 0000H 0001H 0BB9H 0001H 0001H
CBLOCKEND 247 1 3001
CFUNCTIONEND 247


	rseg $$SetOSC$main
CFUNCTION 208

_SetOSC	:
CBLOCK 208 1 3006

;;static void SetOSC(void){
CLINEA 0000H 0001H 0BBEH 0001H 0019H
CBLOCK 208 2 3006

;;	SYSC0 = 0;			// Used to select the frequency of the HSCLK => 00=8.192MHz.
CLINEA 0000H 0001H 0BC1H 0002H 004AH
	rb	0f002h.0

;;	SYSC1 = 0;
CLINEA 0000H 0001H 0BC2H 0002H 000BH
	rb	0f002h.1

;;	OSCM1 = 1;			// 10 => Built-in PLL oscillation mode
CLINEA 0000H 0001H 0BC4H 0002H 0034H
	sb	0f002h.3

;;	OSCM0 = 0;
CLINEA 0000H 0001H 0BC5H 0002H 000BH
	rb	0f002h.2

;;	ENOSC = 1;			//1=Enable High Speed Oscillator...
CLINEA 0000H 0001H 0BC7H 0002H 0031H
	sb	0f003h.1

;;	SYSCLK = 1;			//1=HSCLK; 0=LSCLK 
CLINEA 0000H 0001H 0BC8H 0002H 0022H
	sb	0f003h.0

;;	LPLL = 1;			//1=Enables the use of PLL oscillation - ADDED 4/30/2013
CLINEA 0000H 0001H 0BCAH 0002H 0045H
	sb	0f003h.7

;;	__EI();			//INT enable
CLINEA 0000H 0001H 0BCCH 0002H 0017H
	ei
CBLOCKEND 208 2 3021

;;}
CLINEA 0000H 0001H 0BCDH 0001H 0001H
	rt
CBLOCKEND 208 1 3021
CFUNCTIONEND 208


	rseg $$analog_comparator$main
CFUNCTION 209

_analog_comparator	:
CBLOCK 209 1 3028

;;void analog_comparator(void){
CLINEA 0000H 0001H 0BD4H 0001H 001DH
CBLOCK 209 2 3028

;;	CMP0EN  = 0x01; 	// Comparator ON...
CLINEA 0000H 0001H 0BEAH 0002H 0025H
	sb	0f950h.0

;;	CMP0E1  = 0x00; 	// No Interupt...
CLINEA 0000H 0001H 0BEBH 0002H 0023H
	rb	0f951h.1

;;	CMP0E0  = 0x00;
CLINEA 0000H 0001H 0BECH 0002H 0010H
	rb	0f951h.0

;;	CMP0SM1 = 0x00; 	// Detect without Sampling... 
CLINEA 0000H 0001H 0BEDH 0002H 0030H
	rb	0f951h.3

;;	CMP0RFS = 0x01; 	// Differential Input on B5
CLINEA 0000H 0001H 0BEEH 0002H 002DH
	sb	0f951h.4

;;	CMP0EN  = 0x00;
CLINEA 0000H 0001H 0BF1H 0002H 0010H
	rb	0f950h.0
CBLOCKEND 209 2 3060

;;}
CLINEA 0000H 0001H 0BF4H 0001H 0001H
	rt
CBLOCKEND 209 1 3060
CFUNCTIONEND 209


	rseg $$PortA_Low$main
CFUNCTION 210

_PortA_Low	:
CBLOCK 210 1 3068

;;void PortA_Low(void){
CLINEA 0000H 0001H 0BFCH 0001H 0015H
CBLOCK 210 2 3068

;;	PA0DIR = 0;		// PortA Bit0 set to Output Mode...
CLINEA 0000H 0001H 0C06H 0002H 0031H
	rb	0f251h.0

;;	PA1DIR = 0;		// PortA Bit1 set to Output Mode...
CLINEA 0000H 0001H 0C07H 0002H 0031H
	rb	0f251h.1

;;	PA2DIR = 0;		// PortA Bit2 set to Output Mode...
CLINEA 0000H 0001H 0C08H 0002H 0031H
	rb	0f251h.2

;;	PA0C1  = 1;		// PortA Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0C0BH 0002H 0031H
	sb	0f253h.0

;;	PA0C0  = 1;		
CLINEA 0000H 0001H 0C0CH 0002H 000EH
	sb	0f252h.0

;;	PA1C1  = 1;		// PortA Bit1 set to CMOS Output...
CLINEA 0000H 0001H 0C0DH 0002H 0031H
	sb	0f253h.1

;;	PA1C0  = 1;	
CLINEA 0000H 0001H 0C0EH 0002H 000DH
	sb	0f252h.1

;;	PA2C1  = 1;		// PortA Bit2 set to CMOS Output...
CLINEA 0000H 0001H 0C0FH 0002H 0031H
	sb	0f253h.2

;;	PA2C0  = 1;	
CLINEA 0000H 0001H 0C10H 0002H 000DH
	sb	0f252h.2

;;	PA0MD1  = 0;	// PortA Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 0C13H 0002H 003CH
	rb	0f255h.0

;;	PA0MD0  = 0;	
CLINEA 0000H 0001H 0C14H 0002H 000EH
	rb	0f254h.0

;;	PA1MD1  = 0;	// PortA Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 0C15H 0002H 003CH
	rb	0f255h.1

;;	PA1MD0  = 0;	
CLINEA 0000H 0001H 0C16H 0002H 000EH
	rb	0f254h.1

;;	PA2MD1  = 0;	// PortA Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 0C17H 0002H 003CH
	rb	0f255h.2

;;	PA2MD0  = 0;	
CLINEA 0000H 0001H 0C18H 0002H 000EH
	rb	0f254h.2

;;	PA0D = 0;		// A.0 Output OFF....
CLINEA 0000H 0001H 0C1BH 0002H 0021H
	rb	0f250h.0

;;	PA1D = 0;		// A.1 Output OFF....
CLINEA 0000H 0001H 0C1CH 0002H 0021H
	rb	0f250h.1

;;	PA2D = 0;		// A.2 Output OFF....
CLINEA 0000H 0001H 0C1DH 0002H 0021H
	rb	0f250h.2

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0C1FH 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 210 2 3105
CLINEA 0000H 0001H 0C21H 0001H 0001H
CBLOCKEND 210 1 3105
CFUNCTIONEND 210


	rseg $$PortB_Low$main
CFUNCTION 211

_PortB_Low	:
CBLOCK 211 1 3111

;;void PortB_Low(void){
CLINEA 0000H 0001H 0C27H 0001H 0015H
CBLOCK 211 2 3111

;;	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 0C31H 0002H 0031H
	rb	0f259h.0

;;	PB1DIR = 0;		// PortB Bit1 set to Output Mode...
CLINEA 0000H 0001H 0C32H 0002H 0031H
	rb	0f259h.1

;;	PB2DIR = 0;		// PortB Bit2 set to Output Mode...
CLINEA 0000H 0001H 0C33H 0002H 0031H
	rb	0f259h.2

;;	PB3DIR = 0;		// PortB Bit3 set to Output Mode...
CLINEA 0000H 0001H 0C34H 0002H 0031H
	rb	0f259h.3

;;	PB4DIR = 0;		// PortB Bit4 set to Output Mode...
CLINEA 0000H 0001H 0C35H 0002H 0031H
	rb	0f259h.4

;;	PB5DIR = 0;		// PortB Bit5 set to Output Mode...
CLINEA 0000H 0001H 0C36H 0002H 0031H
	rb	0f259h.5

;;	PB6DIR = 0;		// PortB Bit6 set to Output Mode...
CLINEA 0000H 0001H 0C37H 0002H 0031H
	rb	0f259h.6

;;	PB7DIR = 0;		// PortB Bit7 set to Output Mode...
CLINEA 0000H 0001H 0C38H 0002H 0031H
	rb	0f259h.7

;;	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0C3BH 0002H 0031H
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 0C3CH 0002H 000EH
	sb	0f25ah.0

;;	PB1C1  = 1;		// PortB Bit1 set to CMOS Output...
CLINEA 0000H 0001H 0C3DH 0002H 0031H
	sb	0f25bh.1

;;	PB1C0  = 1;	
CLINEA 0000H 0001H 0C3EH 0002H 000DH
	sb	0f25ah.1

;;	PB2C1  = 1;		// PortB Bit2 set to CMOS Output...
CLINEA 0000H 0001H 0C3FH 0002H 0031H
	sb	0f25bh.2

;;	PB2C0  = 1;	
CLINEA 0000H 0001H 0C40H 0002H 000DH
	sb	0f25ah.2

;;	PB3C1  = 1;		// PortB Bit3 set to CMOS Output...
CLINEA 0000H 0001H 0C41H 0002H 0031H
	sb	0f25bh.3

;;	PB3C0  = 1;		
CLINEA 0000H 0001H 0C42H 0002H 000EH
	sb	0f25ah.3

;;	PB4C1  = 1;		// PortB Bit4 set to CMOS Output...
CLINEA 0000H 0001H 0C43H 0002H 0031H
	sb	0f25bh.4

;;	PB4C0  = 1;	
CLINEA 0000H 0001H 0C44H 0002H 000DH
	sb	0f25ah.4

;;	PB5C1  = 1;		// PortB Bit5 set to CMOS Output...
CLINEA 0000H 0001H 0C45H 0002H 0031H
	sb	0f25bh.5

;;	PB5C0  = 1;	
CLINEA 0000H 0001H 0C46H 0002H 000DH
	sb	0f25ah.5

;;	PB6C1  = 1;		// PortB Bit6 set to CMOS Output...
CLINEA 0000H 0001H 0C47H 0002H 0031H
	sb	0f25bh.6

;;	PB6C0  = 1;	
CLINEA 0000H 0001H 0C48H 0002H 000DH
	sb	0f25ah.6

;;	PB7C1  = 1;		// PortB Bit7 set to CMOS Output...
CLINEA 0000H 0001H 0C49H 0002H 0031H
	sb	0f25bh.7

;;	PB7C0  = 1;	
CLINEA 0000H 0001H 0C4AH 0002H 000DH
	sb	0f25ah.7

;;	PB0MD1  = 0;	// PortB Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 0C4DH 0002H 003CH
	rb	0f25dh.0

;;	PB0MD0  = 0;	
CLINEA 0000H 0001H 0C4EH 0002H 000EH
	rb	0f25ch.0

;;	PB1MD1  = 0;	// PortB Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 0C4FH 0002H 003CH
	rb	0f25dh.1

;;	PB1MD0  = 0;	
CLINEA 0000H 0001H 0C50H 0002H 000EH
	rb	0f25ch.1

;;	PB2MD1  = 0;	// PortB Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 0C51H 0002H 003CH
	rb	0f25dh.2

;;	PB2MD0  = 0;	
CLINEA 0000H 0001H 0C52H 0002H 000EH
	rb	0f25ch.2

;;	PB3MD1  = 0;	// PortB Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 0C53H 0002H 003CH
	rb	0f25dh.3

;;	PB3MD0  = 0;	
CLINEA 0000H 0001H 0C54H 0002H 000EH
	rb	0f25ch.3

;;	PB4MD1  = 0;	// PortB Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 0C55H 0002H 003CH
	rb	0f25dh.4

;;	PB4MD0  = 0;	
CLINEA 0000H 0001H 0C56H 0002H 000EH
	rb	0f25ch.4

;;	PB5MD1  = 0;	// PortB Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 0C57H 0002H 003CH
	rb	0f25dh.5

;;	PB5MD0  = 0;
CLINEA 0000H 0001H 0C58H 0002H 000DH
	rb	0f25ch.5

;;	PB6MD1  = 0;	// PortB Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 0C59H 0002H 003CH
	rb	0f25dh.6

;;	PB6MD0  = 0;	
CLINEA 0000H 0001H 0C5AH 0002H 000EH
	rb	0f25ch.6

;;	PB7MD1  = 0;	// PortB Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 0C5BH 0002H 003CH
	rb	0f25dh.7

;;	PB7MD0  = 0;
CLINEA 0000H 0001H 0C5CH 0002H 000DH
	rb	0f25ch.7

;;	PB0D = 0;		// B.0 Output OFF....
CLINEA 0000H 0001H 0C5FH 0002H 0021H
	rb	0f258h.0

;;	PB1D = 0;		// B.1 Output OFF....
CLINEA 0000H 0001H 0C60H 0002H 0021H
	rb	0f258h.1

;;	PB2D = 0;		// B.2 Output OFF....
CLINEA 0000H 0001H 0C61H 0002H 0021H
	rb	0f258h.2

;;	PB3D = 0;		// B.3 Output OFF....
CLINEA 0000H 0001H 0C62H 0002H 0021H
	rb	0f258h.3

;;	PB4D = 0;		// B.4 Output OFF....
CLINEA 0000H 0001H 0C63H 0002H 0021H
	rb	0f258h.4

;;	PB5D = 0;		// B.5 Output OFF....
CLINEA 0000H 0001H 0C64H 0002H 0021H
	rb	0f258h.5

;;	PB6D = 0;		// B.6 Output OFF....
CLINEA 0000H 0001H 0C65H 0002H 0021H
	rb	0f258h.6

;;	PB7D = 0;		// B.7 Output OFF....
CLINEA 0000H 0001H 0C66H 0002H 0021H
	rb	0f258h.7

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0C68H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 211 2 3178
CLINEA 0000H 0001H 0C6AH 0001H 0001H
CBLOCKEND 211 1 3178
CFUNCTIONEND 211


	rseg $$PortC_Low$main
CFUNCTION 212

_PortC_Low	:
CBLOCK 212 1 3184

;;void PortC_Low(void){
CLINEA 0000H 0001H 0C70H 0001H 0015H
CBLOCK 212 2 3184

;;	PC0DIR = 0;		// PortC Bit0 set to Output Mode...
CLINEA 0000H 0001H 0C7AH 0002H 0031H
	rb	0f261h.0

;;	PC1DIR = 0;		// PortC Bit1 set to Output Mode...
CLINEA 0000H 0001H 0C7BH 0002H 0031H
	rb	0f261h.1

;;	PC2DIR = 0;		// PortC Bit2 set to Output Mode...
CLINEA 0000H 0001H 0C7CH 0002H 0031H
	rb	0f261h.2

;;	PC3DIR = 0;		// PortC Bit3 set to Output Mode...
CLINEA 0000H 0001H 0C7DH 0002H 0031H
	rb	0f261h.3

;;	PC4DIR = 0;		// PortC Bit4 set to Output Mode...
CLINEA 0000H 0001H 0C7EH 0002H 0031H
	rb	0f261h.4

;;	PC5DIR = 0;		// PortC Bit5 set to Output Mode...
CLINEA 0000H 0001H 0C7FH 0002H 0031H
	rb	0f261h.5

;;	PC6DIR = 0;		// PortC Bit6 set to Output Mode...
CLINEA 0000H 0001H 0C80H 0002H 0031H
	rb	0f261h.6

;;	PC7DIR = 0;		// PortC Bit7 set to Output Mode...
CLINEA 0000H 0001H 0C81H 0002H 0031H
	rb	0f261h.7

;;	PC0C1  = 1;		// PortC Bit0 set to High-Impedance Output...
CLINEA 0000H 0001H 0C84H 0002H 003BH
	sb	0f263h.0

;;	PC0C0  = 1;		
CLINEA 0000H 0001H 0C85H 0002H 000EH
	sb	0f262h.0

;;	PC1C1  = 1;		// PortC Bit1 set to High-Impedance Output...
CLINEA 0000H 0001H 0C86H 0002H 003BH
	sb	0f263h.1

;;	PC1C0  = 1;	
CLINEA 0000H 0001H 0C87H 0002H 000DH
	sb	0f262h.1

;;	PC2C1  = 1;		// PortC Bit2 set to High-Impedance Output...
CLINEA 0000H 0001H 0C88H 0002H 003BH
	sb	0f263h.2

;;	PC2C0  = 1;	
CLINEA 0000H 0001H 0C89H 0002H 000DH
	sb	0f262h.2

;;	PC3C1  = 1;		// PortC Bit3 set to High-Impedance Output...
CLINEA 0000H 0001H 0C8AH 0002H 003BH
	sb	0f263h.3

;;	PC3C0  = 1;		
CLINEA 0000H 0001H 0C8BH 0002H 000EH
	sb	0f262h.3

;;	PC4C1  = 1;		// PortC Bit4 set to High-Impedance Output...
CLINEA 0000H 0001H 0C8CH 0002H 003BH
	sb	0f263h.4

;;	PC4C0  = 1;	
CLINEA 0000H 0001H 0C8DH 0002H 000DH
	sb	0f262h.4

;;	PC5C1  = 1;		// PortC Bit5 set to High-Impedance Output...
CLINEA 0000H 0001H 0C8EH 0002H 003BH
	sb	0f263h.5

;;	PC5C0  = 1;	
CLINEA 0000H 0001H 0C8FH 0002H 000DH
	sb	0f262h.5

;;	PC6C1  = 1;		// PortC Bit6 set to High-Impedance Output...
CLINEA 0000H 0001H 0C90H 0002H 003BH
	sb	0f263h.6

;;	PC6C0  = 1;	
CLINEA 0000H 0001H 0C91H 0002H 000DH
	sb	0f262h.6

;;	PC7C1  = 1;		// PortC Bit7 set to High-Impedance Output...
CLINEA 0000H 0001H 0C92H 0002H 003BH
	sb	0f263h.7

;;	PC7C0  = 1;	
CLINEA 0000H 0001H 0C93H 0002H 000DH
	sb	0f262h.7

;;	PC0MD1  = 0;	// PortC Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 0C96H 0002H 003CH
	rb	0f265h.0

;;	PC0MD0  = 0;	
CLINEA 0000H 0001H 0C97H 0002H 000EH
	rb	0f264h.0

;;	PC1MD1  = 0;	// PortC Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 0C98H 0002H 003CH
	rb	0f265h.1

;;	PC1MD0  = 0;	
CLINEA 0000H 0001H 0C99H 0002H 000EH
	rb	0f264h.1

;;	PC2MD1  = 0;	// PortC Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 0C9AH 0002H 003CH
	rb	0f265h.2

;;	PC2MD0  = 0;	
CLINEA 0000H 0001H 0C9BH 0002H 000EH
	rb	0f264h.2

;;	PC3MD1  = 0;	// PortC Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 0C9CH 0002H 003CH
	rb	0f265h.3

;;	PC3MD0  = 0;	
CLINEA 0000H 0001H 0C9DH 0002H 000EH
	rb	0f264h.3

;;	PC4MD1  = 0;	// PortC Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 0C9EH 0002H 003CH
	rb	0f265h.4

;;	PC4MD0  = 0;	
CLINEA 0000H 0001H 0C9FH 0002H 000EH
	rb	0f264h.4

;;	PC5MD1  = 0;	// PortC Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 0CA0H 0002H 003CH
	rb	0f265h.5

;;	PC5MD0  = 0;
CLINEA 0000H 0001H 0CA1H 0002H 000DH
	rb	0f264h.5

;;	PC6MD1  = 0;	// PortC Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 0CA2H 0002H 003CH
	rb	0f265h.6

;;	PC6MD0  = 0;	
CLINEA 0000H 0001H 0CA3H 0002H 000EH
	rb	0f264h.6

;;	PC7MD1  = 0;	// PortC Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 0CA4H 0002H 003CH
	rb	0f265h.7

;;	PC7MD0  = 0;
CLINEA 0000H 0001H 0CA5H 0002H 000DH
	rb	0f264h.7

;;	PC0D = 0;		// C.0 Output OFF....
CLINEA 0000H 0001H 0CA8H 0002H 0021H
	rb	0f260h.0

;;	PC1D = 0;		// C.1 Output OFF....
CLINEA 0000H 0001H 0CA9H 0002H 0021H
	rb	0f260h.1

;;	PC2D = 0;		// C.2 Output OFF....
CLINEA 0000H 0001H 0CAAH 0002H 0021H
	rb	0f260h.2

;;	PC3D = 0;		// C.3 Output OFF....
CLINEA 0000H 0001H 0CABH 0002H 0021H
	rb	0f260h.3

;;	PC4D = 0;		// C.4 Output OFF....
CLINEA 0000H 0001H 0CACH 0002H 0021H
	rb	0f260h.4

;;	PC5D = 0;		// C.5 Output OFF....
CLINEA 0000H 0001H 0CADH 0002H 0021H
	rb	0f260h.5

;;	PC6D = 0;		// C.6 Output OFF....
CLINEA 0000H 0001H 0CAEH 0002H 0021H
	rb	0f260h.6

;;	PC7D = 0;		// C.7 Output OFF....
CLINEA 0000H 0001H 0CAFH 0002H 0021H
	rb	0f260h.7

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0CB1H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 212 2 3251
CLINEA 0000H 0001H 0CB3H 0001H 0001H
CBLOCKEND 212 1 3251
CFUNCTIONEND 212


	rseg $$PortD_Low$main
CFUNCTION 213

_PortD_Low	:
CBLOCK 213 1 3257

;;void PortD_Low(void){
CLINEA 0000H 0001H 0CB9H 0001H 0015H
CBLOCK 213 2 3257

;;	PD0DIR = 0;		// PortD Bit0 set to Output Mode...
CLINEA 0000H 0001H 0CC2H 0002H 0031H
	rb	0f269h.0

;;	PD1DIR = 0;		// PortD Bit1 set to Output Mode...
CLINEA 0000H 0001H 0CC3H 0002H 0031H
	rb	0f269h.1

;;	PD2DIR = 0;		// PortD Bit2 set to Output Mode...
CLINEA 0000H 0001H 0CC4H 0002H 0031H
	rb	0f269h.2

;;	PD3DIR = 0;		// PortD Bit3 set to Output Mode...
CLINEA 0000H 0001H 0CC5H 0002H 0031H
	rb	0f269h.3

;;	PD4DIR = 0;		// PortD Bit4 set to Output Mode...
CLINEA 0000H 0001H 0CC6H 0002H 0031H
	rb	0f269h.4

;;	PD5DIR = 0;		// PortD Bit5 set to Output Mode...
CLINEA 0000H 0001H 0CC7H 0002H 0031H
	rb	0f269h.5

;;	PD0C1= 1;		// PortD Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0CCAH 0002H 002FH
	sb	0f26bh.0

;;	PD0C0= 1;		
CLINEA 0000H 0001H 0CCBH 0002H 000CH
	sb	0f26ah.0

;;	PD1C1= 1;		// PortD Bit1 set to CMOS Output...
CLINEA 0000H 0001H 0CCCH 0002H 002FH
	sb	0f26bh.1

;;	PD1C0= 1;	
CLINEA 0000H 0001H 0CCDH 0002H 000BH
	sb	0f26ah.1

;;	PD2C1= 1;		// PortD Bit2 set to CMOS Output...
CLINEA 0000H 0001H 0CCEH 0002H 002FH
	sb	0f26bh.2

;;	PD2C0= 1;	
CLINEA 0000H 0001H 0CCFH 0002H 000BH
	sb	0f26ah.2

;;	PD3C1= 1;		// PortD Bit3 set to CMOS Output...
CLINEA 0000H 0001H 0CD0H 0002H 002FH
	sb	0f26bh.3

;;	PD3C0= 1;		
CLINEA 0000H 0001H 0CD1H 0002H 000CH
	sb	0f26ah.3

;;	PD4C1= 1;		// PortD Bit4 set to CMOS Output...
CLINEA 0000H 0001H 0CD2H 0002H 002FH
	sb	0f26bh.4

;;	PD4C0= 1;	
CLINEA 0000H 0001H 0CD3H 0002H 000BH
	sb	0f26ah.4

;;	PD5C1= 1;		// PortD Bit5 set to CMOS Output...
CLINEA 0000H 0001H 0CD4H 0002H 002FH
	sb	0f26bh.5

;;	PD5C0= 1;	
CLINEA 0000H 0001H 0CD5H 0002H 000BH
	sb	0f26ah.5

;;	PD0D = 0;		// D.0 Output OFF....
CLINEA 0000H 0001H 0CD8H 0002H 0021H
	rb	0f268h.0

;;	PD1D = 0;		// D.1 Output OFF....
CLINEA 0000H 0001H 0CD9H 0002H 0021H
	rb	0f268h.1

;;	PD2D = 0;		// D.2 Output OFF....
CLINEA 0000H 0001H 0CDAH 0002H 0021H
	rb	0f268h.2

;;	PD3D = 0;		// D.3 Output OFF....
CLINEA 0000H 0001H 0CDBH 0002H 0021H
	rb	0f268h.3

;;	PD4D = 0;		// D.4 Output OFF....
CLINEA 0000H 0001H 0CDCH 0002H 0021H
	rb	0f268h.4

;;	PD5D = 0;		// D.5 Output OFF....
CLINEA 0000H 0001H 0CDDH 0002H 0021H
	rb	0f268h.5

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0CE0H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 213 2 3298
CLINEA 0000H 0001H 0CE2H 0001H 0001H
CBLOCKEND 213 1 3298
CFUNCTIONEND 213


	rseg $$PortA_Digital_Inputs$main
CFUNCTION 214

_PortA_Digital_Inputs	:
CBLOCK 214 1 3304

;;void PortA_Digital_Inputs(void){
CLINEA 0000H 0001H 0CE8H 0001H 0020H
CBLOCK 214 2 3304

;;	PA0DIR = 1;		// PortA Bit0 set to Input Mode...
CLINEA 0000H 0001H 0CF2H 0002H 0030H
	sb	0f251h.0

;;	PA1DIR = 1;		// PortA Bit1 set to Input Mode...
CLINEA 0000H 0001H 0CF3H 0002H 0030H
	sb	0f251h.1

;;	PA2DIR = 1;		// PortA Bit2 set to Input Mode...
CLINEA 0000H 0001H 0CF4H 0002H 0030H
	sb	0f251h.2

;;	PA0C1  = 1;		// PortA Bit0 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 0CF8H 0002H 0041H
	sb	0f253h.0

;;	PA0C0  = 0;		
CLINEA 0000H 0001H 0CF9H 0002H 000EH
	rb	0f252h.0

;;	PA1C1  = 1;		// PortA Bit1 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 0CFAH 0002H 0041H
	sb	0f253h.1

;;	PA1C0  = 0;	
CLINEA 0000H 0001H 0CFBH 0002H 000DH
	rb	0f252h.1

;;	PA2C1  = 1;		// PortA Bit2 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 0CFCH 0002H 0041H
	sb	0f253h.2

;;	PA2C0  = 0;	
CLINEA 0000H 0001H 0CFDH 0002H 000DH
	rb	0f252h.2

;;	PA0MD1  = 0;	// PortA Bit0 set to General Purpose I/O...
CLINEA 0000H 0001H 0D00H 0002H 0039H
	rb	0f255h.0

;;	PA0MD0  = 0;	
CLINEA 0000H 0001H 0D01H 0002H 000EH
	rb	0f254h.0

;;	PA1MD1  = 0;	// PortA Bit1 set to General Purpose I/O...
CLINEA 0000H 0001H 0D02H 0002H 0039H
	rb	0f255h.1

;;	PA1MD0  = 0;	
CLINEA 0000H 0001H 0D03H 0002H 000EH
	rb	0f254h.1

;;	PA2MD1  = 0;	// PortA Bit2 set to General Purpose I/O...
CLINEA 0000H 0001H 0D04H 0002H 0039H
	rb	0f255h.2

;;	PA2MD0  = 0;	
CLINEA 0000H 0001H 0D05H 0002H 000EH
	rb	0f254h.2

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0D07H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 214 2 3337
CLINEA 0000H 0001H 0D09H 0001H 0001H
CBLOCKEND 214 1 3337
CFUNCTIONEND 214


	rseg $$NOP$main
CFUNCTION 249

_NOP	:
CBLOCK 249 1 3400

;;{
CLINEA 0000H 0001H 0D48H 0001H 0001H
	push	lr
	push	xr4
	push	er8
	mov	r8,	r0
CBLOCK 249 2 3400
CRET 0006H
CARGUMENT 46H 0001H 001CH "sec" 02H 00H 00H
CLOCAL 46H 0002H 0027H 0002H "timerThres" 02H 00H 01H
CLOCAL 46H 0001H 0018H 0002H "TimeFlag" 02H 00H 00H
CLOCAL 46H 0001H 0016H 0002H "TempSec" 02H 00H 00H
CLOCAL 46H 0002H 0024H 0002H "timer" 02H 00H 01H
CLOCAL 4AH 0002H 0000H 0002H "timertest" 02H 00H 01H

;;	tm_init(TM_CH_NO_AB);
CLINEA 0000H 0001H 0D4FH 0002H 0016H
	mov	r0,	#01h
	bl	_tm_init

;;	TempSec = sec;
CLINEA 0000H 0001H 0D50H 0002H 000FH
	mov	r2,	r8

;;	TimeFlag = 0;
CLINEA 0000H 0001H 0D51H 0002H 000EH
	mov	r4,	#00h

;;	tm_setABSource(TM_CS_LSCLK);
CLINEA 0000H 0000H 018DH 0002H 0015H
	rb	0f8eah.0

;;	tm_setABSource(TM_CS_LSCLK);
CLINEA 0000H 0000H 018EH 0002H 001AH
	rb	0f8eah.1

;;	tm_setABData(0xffff);
CLINEA 0000H 0000H 0157H 0002H 0025H
	mov	r0,	#0ffh
	st	r0,	0f8e8h

;;	tm_setABData(0xffff);
CLINEA 0000H 0000H 0158H 0002H 0023H
	st	r0,	0f8ech

;;	if(sec == 1){
CLINEA 0000H 0001H 0D56H 0002H 000EH
	cmp	r8,	#01h
	bne	_$L668
CBLOCK 249 3 3414

;;		timerThres = 0x7FFF;
CLINEA 0000H 0001H 0D57H 0003H 0016H
	mov	r6,	#0ffh
	mov	r7,	#07fh

;;		TimeFlag = 0;
CLINEA 0000H 0001H 0D58H 0003H 000FH
CBLOCKEND 249 3 3417

;;	}
CLINEA 0000H 0000H 0D59H 0002H 0002H
_$L668 :

;;	if(sec == 2){
CLINEA 0000H 0001H 0D5AH 0002H 000EH
	cmp	r8,	#02h
	bne	_$L670
CBLOCK 249 4 3418

;;		timerThres = 0xFFFF;
CLINEA 0000H 0001H 0D5BH 0003H 0016H
	mov	er6,	#-1

;;		TimeFlag = 0;
CLINEA 0000H 0001H 0D5CH 0003H 000FH
	mov	r4,	#00h
CBLOCKEND 249 4 3421

;;	}
CLINEA 0000H 0000H 0D5DH 0002H 0002H
_$L670 :

;;	if(sec > 2){
CLINEA 0000H 0001H 0D5EH 0002H 000DH
	cmp	r8,	#02h
	ble	_$L680
CBLOCK 249 5 3422

;;	while(TempSec > 1){
CLINEA 0000H 0000H 0D5FH 0001H 0001H
	bal	_$L690

;;	while(TempSec > 1){
CLINEA 0000H 0000H 0D5FH 0002H 0014H
_$L676 :
CBLOCK 249 6 3423

;;		TempSec -= 2;
CLINEA 0000H 0001H 0D60H 0003H 000FH
	add	r2,	#0feh

;;		TimeFlag++;
CLINEA 0000H 0000H 0D61H 0003H 000DH
	add	r4,	#01h
CBLOCKEND 249 6 3426

;;	while(TempSec > 1){
CLINEA 0000H 0000H 0D5FH 0001H 0001H
_$L690 :

;;	while(TempSec > 1){
CLINEA 0000H 0000H 0D5FH 000EH 0013H
	cmp	r2,	#01h
	bgt	_$L676

;;	if(TempSec == 1){
CLINEA 0000H 0001H 0D63H 0002H 0012H
	cmp	r2,	#01h
	bne	_$L678
CBLOCK 249 7 3427

;;		timerThres = 0x7FFF;
CLINEA 0000H 0001H 0D64H 0003H 0016H
	mov	r6,	#0ffh
	mov	r7,	#07fh
CBLOCKEND 249 7 3429

;;	else{
CLINEA 0000H 0001H 0D66H 0002H 0006H
	bal	_$L680
_$L678 :
CBLOCK 249 8 3430

;;		timerThres = 0xFFFF;
CLINEA 0000H 0001H 0D67H 0003H 0016H
	mov	er6,	#-1

;;		TimeFlag--;
CLINEA 0000H 0000H 0D68H 0003H 000DH
	add	r4,	#0ffh
CBLOCKEND 249 8 3433

;;	}
CLINEA 0000H 0000H 0D69H 0002H 0002H
_$L680 :
CBLOCKEND 249 5 3434

;;	main_clrWDT();	
CLINEA 0000H 0001H 0D6DH 0002H 0010H
	bl	_main_clrWDT

;;	tm_startAB();
CLINEA 0000H 0001H 00D1H 0002H 000AH
	mov	r0,	#00h
	st	r0,	0f8e9h

;;	tm_startAB();
CLINEA 0000H 0000H 00D2H 0002H 000BH
	sb	0f8ebh.0

;;	timer = tm_getABCounter();
CLINEA 0000H 0000H 0120H 0002H 001BH
	l	r0,	0f8e9h
	mov	r1,	#00h
	mov	er2,	er0

;;	timer = tm_getABCounter();
CLINEA 0000H 0000H 0121H 0002H 0014H
	l	r0,	0f8edh
	or	r3,	r0

;;	timer = tm_getABCounter();
CLINEA 0000H 0000H 0122H 0002H 000CH
	mov	er0,	er2

;;	while(timer < timerThres){
CLINEA 0000H 0001H 0D71H 0002H 001BH
	bal	_$L683
_$L685 :
CBLOCK 249 9 3441

;;		timer = tm_getABCounter();
CLINEA 0000H 0000H 0120H 0002H 001BH
	l	r0,	0f8e9h
	mov	r1,	#00h
	mov	er2,	er0

;;		timer = tm_getABCounter();
CLINEA 0000H 0000H 0121H 0002H 0014H
	l	r0,	0f8edh
	or	r3,	r0

;;		timer = tm_getABCounter();
CLINEA 0000H 0000H 0122H 0002H 000CH
	mov	er0,	er2

;;		timer = tm_getABCounter();
CLINEA 0000H 0000H 0D72H 0003H 001CH
CBLOCKEND 249 9 3444

;;	}
CLINEA 0000H 0000H 0D74H 0002H 0002H
_$L683 :

;;	while(timer < timerThres){
CLINEA 0000H 0000H 0D71H 000EH 0013H
	cmp	er0,	er6
	blt	_$L685

;;	if(TimeFlag !=0){
CLINEA 0000H 0001H 0D75H 0002H 0012H
	cmp	r4,	#00h
	beq	_$L688

;;		tm_stopAB();
CLINEA 0000H 0001H 0105H 0002H 000BH
	rb	0f8ebh.0

;;		TimeFlag--;
CLINEA 0000H 0000H 0D77H 0003H 000DH
	add	r4,	#0ffh

;;		timerThres = 0xFFFF;
CLINEA 0000H 0001H 0D78H 0003H 0016H
	mov	er6,	#-1

;;		goto TimerRestart;
CLINEA 0000H 0001H 0D79H 0003H 0014H
	bal	_$L680

;;	}
CLINEA 0000H 0000H 0D7AH 0002H 0002H
_$L688 :
CBLOCKEND 249 2 3451

;;}
CLINEA 0000H 0001H 0D7BH 0001H 0001H
	pop	er8
	pop	xr4
	pop	pc
CBLOCKEND 249 1 3451
CFUNCTIONEND 249


	rseg $$NOPms$main
CFUNCTION 250

_NOPms	:
CBLOCK 250 1 3464

;;{
CLINEA 0000H 0001H 0D88H 0001H 0001H
	push	lr
	push	xr4
	push	bp
	push	er8
	mov	er8,	er0
CBLOCK 250 2 3464
CRET 0008H
CARGUMENT 46H 0002H 0028H "ms" 02H 00H 01H
CLOCAL 46H 0002H 002AH 0002H "timerThres" 02H 00H 01H
CLOCAL 46H 0001H 001AH 0002H "TimeFlag" 02H 00H 00H
CLOCAL 46H 0002H 0026H 0002H "TempSec" 02H 00H 01H
CLOCAL 46H 0002H 0024H 0002H "timer" 02H 00H 01H
CLOCAL 4AH 0002H 0000H 0002H "timertest" 02H 00H 01H

;;TempSec = ms;
CLINEA 0000H 0001H 0D8FH 0001H 000DH
	mov	er4,	er0

;;TimeFlag = 0;
CLINEA 0000H 0001H 0D90H 0001H 000DH
	mov	r6,	#00h

;;tm_init(TM_CH_NO_AB);
CLINEA 0000H 0001H 0D92H 0001H 0015H
	mov	r0,	#01h
	bl	_tm_init

;;tm_setABSource(TM_CS_HTBCLK);
CLINEA 0000H 0000H 018DH 0002H 0015H
	sb	0f8eah.0

;;tm_setABSource(TM_CS_HTBCLK);
CLINEA 0000H 0000H 018EH 0002H 001AH
	rb	0f8eah.1

;;tm_setABData(0xffff);
CLINEA 0000H 0000H 0157H 0002H 0025H
	mov	r0,	#0ffh
	st	r0,	0f8e8h

;;tm_setABData(0xffff);
CLINEA 0000H 0000H 0158H 0002H 0023H
	st	r0,	0f8ech

;;if(ms < 128){
CLINEA 0000H 0001H 0D96H 0001H 000DH
	mov	er0,	er8
	cmp	r8,	#080h
	cmpc	r9,	#00h
	bge	_$L692
CBLOCK 250 3 3478

;;	timerThres = 0x1FF * ms;
CLINEA 0000H 0001H 0D97H 0002H 0019H
	sllc	r1,	#07h
	sll	r0,	#07h
	sllc	r1,	#02h
	sll	r0,	#02h
	sub	r0,	r8
	subc	r1,	r9
	mov	bp,	er0

;;	TimeFlag = 0;
CLINEA 0000H 0001H 0D98H 0002H 000EH
CBLOCKEND 250 3 3481

;;}
CLINEA 0000H 0000H 0D99H 0001H 0001H
_$L692 :

;;if(ms == 128){
CLINEA 0000H 0001H 0D9AH 0001H 000EH
	cmp	r8,	#080h
	cmpc	r9,	#00h
	bne	_$L694
CBLOCK 250 4 3482

;;	timerThres = 0xFFFF;
CLINEA 0000H 0001H 0D9BH 0002H 0015H
	mov	bp,	#-1

;;	TimeFlag = 0;
CLINEA 0000H 0001H 0D9CH 0002H 000EH
	mov	r6,	#00h
CBLOCKEND 250 4 3485

;;}
CLINEA 0000H 0000H 0D9DH 0001H 0001H
_$L694 :

;;if(ms > 128){
CLINEA 0000H 0001H 0D9EH 0001H 000DH
	cmp	r8,	#080h
	cmpc	r9,	#00h
	ble	_$L704
CBLOCK 250 5 3486

;;	while(TempSec > 128){
CLINEA 0000H 0000H 0D9FH 0001H 0001H
	bal	_$L714

;;	while(TempSec > 128){
CLINEA 0000H 0000H 0D9FH 0002H 0016H
_$L700 :
CBLOCK 250 6 3487

;;		TempSec -= 128;
CLINEA 0000H 0001H 0DA0H 0003H 0011H
	add	r0,	#080h
	addc	r1,	#0ffh
	mov	er4,	er0

;;		TimeFlag++;
CLINEA 0000H 0000H 0DA1H 0003H 000DH
	add	r6,	#01h
CBLOCKEND 250 6 3490

;;	while(TempSec > 128){
CLINEA 0000H 0000H 0D9FH 0001H 0001H
_$L714 :

;;	while(TempSec > 128){
CLINEA 0000H 0000H 0D9FH 000EH 0013H
	mov	er0,	er4
	cmp	r4,	#080h
	cmpc	r5,	#00h
	bgt	_$L700

;;	if(TempSec != 0){
CLINEA 0000H 0001H 0DA3H 0002H 0012H
	mov	er4,	er4
	beq	_$L702
CBLOCK 250 7 3491

;;		timerThres = 0x1FF * TempSec;
CLINEA 0000H 0001H 0DA4H 0003H 001FH
	sllc	r1,	#07h
	sll	r0,	#07h
	sllc	r1,	#02h
	sll	r0,	#02h
	sub	r0,	r4
	subc	r1,	r5
	mov	bp,	er0
CBLOCKEND 250 7 3493

;;	else{
CLINEA 0000H 0001H 0DA6H 0002H 0006H
	bal	_$L704
_$L702 :
CBLOCK 250 8 3494

;;		timerThres = 0xFFFF;
CLINEA 0000H 0001H 0DA7H 0003H 0016H
	mov	bp,	#-1

;;		TimeFlag--;
CLINEA 0000H 0000H 0DA8H 0003H 000DH
	add	r6,	#0ffh
CBLOCKEND 250 8 3497

;;	}
CLINEA 0000H 0000H 0DA9H 0002H 0002H
_$L704 :
CBLOCKEND 250 5 3498

;;	main_clrWDT();	
CLINEA 0000H 0001H 0DADH 0002H 0010H
	bl	_main_clrWDT

;;	tm_startAB();
CLINEA 0000H 0001H 00D1H 0002H 000AH
	mov	r0,	#00h
	st	r0,	0f8e9h

;;	tm_startAB();
CLINEA 0000H 0000H 00D2H 0002H 000BH
	sb	0f8ebh.0

;;	timer = tm_getABCounter();
CLINEA 0000H 0000H 0120H 0002H 001BH
	l	r0,	0f8e9h
	mov	r1,	#00h
	mov	er2,	er0

;;	timer = tm_getABCounter();
CLINEA 0000H 0000H 0121H 0002H 0014H
	l	r0,	0f8edh
	or	r3,	r0

;;	timer = tm_getABCounter();
CLINEA 0000H 0000H 0122H 0002H 000CH
	mov	er0,	er2

;;	while(timer < timerThres){
CLINEA 0000H 0001H 0DB1H 0002H 001BH
	bal	_$L707
_$L709 :
CBLOCK 250 9 3505

;;		timer = tm_getABCounter();
CLINEA 0000H 0000H 0120H 0002H 001BH
	l	r0,	0f8e9h
	mov	r1,	#00h
	mov	er2,	er0

;;		timer = tm_getABCounter();
CLINEA 0000H 0000H 0121H 0002H 0014H
	l	r0,	0f8edh
	or	r3,	r0

;;		timer = tm_getABCounter();
CLINEA 0000H 0000H 0122H 0002H 000CH
	mov	er0,	er2

;;		timer = tm_getABCounter();
CLINEA 0000H 0000H 0DB2H 0003H 001CH
CBLOCKEND 250 9 3508

;;	}
CLINEA 0000H 0000H 0DB4H 0002H 0002H
_$L707 :

;;	while(timer < timerThres){
CLINEA 0000H 0000H 0DB1H 000EH 0013H
	cmp	er0,	bp
	blt	_$L709

;;	if(TimeFlag !=0){
CLINEA 0000H 0001H 0DB5H 0002H 0012H
	cmp	r6,	#00h
	beq	_$L712

;;		tm_stopAB();
CLINEA 0000H 0001H 0105H 0002H 000BH
	rb	0f8ebh.0

;;		TimeFlag--;
CLINEA 0000H 0000H 0DB7H 0003H 000DH
	add	r6,	#0ffh

;;		timerThres = 0xFFFF;
CLINEA 0000H 0001H 0DB8H 0003H 0016H
	mov	bp,	#-1

;;		goto TimerRestart;
CLINEA 0000H 0001H 0DB9H 0003H 0014H
	bal	_$L704

;;	}
CLINEA 0000H 0000H 0DBAH 0002H 0002H
_$L712 :
CBLOCKEND 250 2 3516

;;}
CLINEA 0000H 0001H 0DBCH 0001H 0001H
	pop	er8
	pop	bp
	pop	xr4
	pop	pc
CBLOCKEND 250 1 3516
CFUNCTIONEND 250


	rseg $$NOPus$main
CFUNCTION 251

_NOPus	:
CBLOCK 251 1 3526

;;{
CLINEA 0000H 0001H 0DC6H 0001H 0001H
CBLOCK 251 2 3526

;;	timer_us = 0;
CLINEA 0000H 0001H 0DC7H 0002H 000EH
	mov	er0,	#0 
	st	er0,	NEAR _timer_us

;;	TM8C = 0x00;
CLINEA 0000H 0001H 0DC8H 0002H 000DH
	st	r0,	0f8e1h

;;	ETM8 = 1;
CLINEA 0000H 0001H 0DC9H 0002H 000AH
	sb	0f013h.2

;;	while(timer_us == 0);
CLINEA 0000H 0000H 0DCAH 0002H 0016H
_$L718 :

;;	while(timer_us == 0);
CLINEA 0000H 0000H 0DCAH 000EH 0013H
	l	er0,	NEAR _timer_us
	beq	_$L718
CBLOCKEND 251 2 3531

;;}
CLINEA 0000H 0001H 0DCBH 0001H 0001H
	rt
CBLOCKEND 251 1 3531
CFUNCTIONEND 251


	rseg $$NOP1000$main
CFUNCTION 252

_NOP1000	:
CBLOCK 252 1 3534

;;{
CLINEA 0000H 0001H 0DCEH 0001H 0001H
CBLOCK 252 2 3534
CLOCAL 4AH 0002H 0000H 0002H "ONCNT" 02H 00H 01H
CBLOCKEND 252 2 3540

;;}
CLINEA 0000H 0001H 0DD4H 0001H 0001H
	rt
CBLOCKEND 252 1 3540
CFUNCTIONEND 252


	rseg $$approx_arctan2$main
CFUNCTION 253

_approx_arctan2	:
CBLOCK 253 1 3543

;;{
CLINEA 0000H 0001H 0DD7H 0001H 0001H
	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-028
	push	xr8
	push	xr4
	mov	er8,	er0
	mov	er10,	er2
CBLOCK 253 2 3543
CRET 0026H
CARGUMENT 47H 0004H 2928H "y" 02H 00H 03H
CARGUMENT 43H 0004H 0004H "x" 02H 00H 03H
CLOCAL 43H 0004H 001CH 0002H "YoverX" 02H 00H 03H
CLOCAL 47H 0004H 2726H 0002H "result" 02H 00H 03H

;;	float YoverX = y/x;
CLINEA 0000H 0001H 0DD8H 0002H 0014H
	push	xr0
	l	er0,	4[fp]
	l	er2,	6[fp]
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	-28[fp]
	st	er2,	-26[fp]

;;	float result = 0;
CLINEA 0000H 0001H 0DD9H 0002H 0012H
	mov	er4,	#0 
	mov	er6,	#0 

;;	if(x>0){
CLINEA 0000H 0001H 0DDBH 0002H 0009H
	l	er0,	4[fp]
	l	er2,	6[fp]
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bgt	_$M72
	b	_$L726
_$M72 :
CBLOCK 253 3 3547

;;		result = (0.97239*YoverX)-(0.19195*pow(YoverX,3));
CLINEA 0000H 0000H 0DDCH 0003H 0034H
	l	er0,	-28[fp]
	l	er2,	-26[fp]
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	pop	qr0
	lea	-8[fp]
	st	qr0,	[ea]
	push	qr0
	mov	r0,	#059h
	mov	r1,	#0a3h
	mov	r2,	#01eh
	mov	r3,	#0a2h
	mov	r4,	#0d1h
	mov	r5,	#01dh
	mov	r6,	#0efh
	mov	r7,	#03fh
	push	qr0
	bl	__dmulu8sw
	add	sp,	#8 
	pop	qr0
	lea	-16[fp]
	st	qr0,	[ea]
	mov	er0,	#0 
	mov	er2,	#0 
	mov	er4,	#0 
	mov	r6,	#08h
	mov	r7,	#040h
	push	qr0
	lea	-8[fp]
	l	qr0,	[ea]
	push	qr0
	mov	er0,	fp
	add	er0,	#-24
	bl	_pow
	add	sp,	#16
	lea	-16[fp]
	l	qr0,	[ea]
	push	qr0
	lea	-24[fp]
	l	qr0,	[ea]
	push	qr0
	mov	r0,	#036h
	mov	r1,	#0cdh
	mov	r2,	#03bh
	mov	r3,	#04eh
	mov	r4,	#0d1h
	mov	r5,	#091h
	mov	r6,	#0c8h
	mov	r7,	#03fh
	push	qr0
	bl	__dmulu8sw
	add	sp,	#8 
	bl	__dsubu8sw
	add	sp,	#8 
	bl	__dtofu8sw
	add	sp,	#4 
	pop	xr0
	mov	er4,	er0
	mov	er6,	er2
CBLOCKEND 253 3 3549

;;	}
CLINEA 0000H 0000H 0DDDH 0002H 0002H
_$L726 :

;;	if((x<0)&&(y>=0)){
CLINEA 0000H 0001H 0DDEH 0002H 0013H
	l	er0,	4[fp]
	l	er2,	6[fp]
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$M73
	b	_$L728
_$M73 :
	push	xr8
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$M74
	b	_$L728
_$M74 :
CBLOCK 253 4 3550

;;		result = (0.97239*YoverX)-(0.19195*pow(YoverX,3))+3.14;
CLINEA 0000H 0000H 0DDFH 0003H 0039H
	l	er0,	-28[fp]
	l	er2,	-26[fp]
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	pop	qr0
	lea	-8[fp]
	st	qr0,	[ea]
	push	qr0
	mov	r0,	#059h
	mov	r1,	#0a3h
	mov	r2,	#01eh
	mov	r3,	#0a2h
	mov	r4,	#0d1h
	mov	r5,	#01dh
	mov	r6,	#0efh
	mov	r7,	#03fh
	push	qr0
	bl	__dmulu8sw
	add	sp,	#8 
	pop	qr0
	lea	-16[fp]
	st	qr0,	[ea]
	mov	er0,	#0 
	mov	er2,	#0 
	mov	er4,	#0 
	mov	r6,	#08h
	mov	r7,	#040h
	push	qr0
	lea	-8[fp]
	l	qr0,	[ea]
	push	qr0
	mov	er0,	fp
	add	er0,	#-24
	bl	_pow
	add	sp,	#16
	lea	-16[fp]
	l	qr0,	[ea]
	push	qr0
	lea	-24[fp]
	l	qr0,	[ea]
	push	qr0
	mov	r0,	#036h
	mov	r1,	#0cdh
	mov	r2,	#03bh
	mov	r3,	#04eh
	mov	r4,	#0d1h
	mov	r5,	#091h
	mov	r6,	#0c8h
	mov	r7,	#03fh
	push	qr0
	bl	__dmulu8sw
	add	sp,	#8 
	bl	__dsubu8sw
	add	sp,	#8 
	mov	r0,	#01fh
	mov	r1,	#085h
	mov	r2,	#0ebh
	mov	r3,	#051h
	mov	r4,	#0b8h
	mov	r5,	#01eh
	mov	r6,	#09h
	mov	r7,	#040h
	push	qr0
	bl	__daddu8sw
	add	sp,	#8 
	bl	__dtofu8sw
	add	sp,	#4 
	pop	xr0
	mov	er4,	er0
	mov	er6,	er2
CBLOCKEND 253 4 3552

;;	}	
CLINEA 0000H 0000H 0DE0H 0002H 0003H
_$L728 :

;;	if((y<0)&&(x<0)){
CLINEA 0000H 0001H 0DE1H 0002H 0012H
	push	xr8
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$M75
	b	_$L735
_$M75 :
	l	er0,	4[fp]
	l	er2,	6[fp]
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$M76
	b	_$L735
_$M76 :
CBLOCK 253 5 3553

;;		result = (0.97239*YoverX)-(0.19195*pow(YoverX,3))-3.14;
CLINEA 0000H 0000H 0DE2H 0003H 0039H
	l	er0,	-28[fp]
	l	er2,	-26[fp]
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	pop	qr0
	lea	-8[fp]
	st	qr0,	[ea]
	push	qr0
	mov	r0,	#059h
	mov	r1,	#0a3h
	mov	r2,	#01eh
	mov	r3,	#0a2h
	mov	r4,	#0d1h
	mov	r5,	#01dh
	mov	r6,	#0efh
	mov	r7,	#03fh
	push	qr0
	bl	__dmulu8sw
	add	sp,	#8 
	pop	qr0
	lea	-16[fp]
	st	qr0,	[ea]
	mov	er0,	#0 
	mov	er2,	#0 
	mov	er4,	#0 
	mov	r6,	#08h
	mov	r7,	#040h
	push	qr0
	lea	-8[fp]
	l	qr0,	[ea]
	push	qr0
	mov	er0,	fp
	add	er0,	#-24
	bl	_pow
	add	sp,	#16
	lea	-16[fp]
	l	qr0,	[ea]
	push	qr0
	lea	-24[fp]
	l	qr0,	[ea]
	push	qr0
	mov	r0,	#036h
	mov	r1,	#0cdh
	mov	r2,	#03bh
	mov	r3,	#04eh
	mov	r4,	#0d1h
	mov	r5,	#091h
	mov	r6,	#0c8h
	mov	r7,	#03fh
	push	qr0
	bl	__dmulu8sw
	add	sp,	#8 
	bl	__dsubu8sw
	add	sp,	#8 
	mov	r0,	#01fh
	mov	r1,	#085h
	mov	r2,	#0ebh
	mov	r3,	#051h
	mov	r4,	#0b8h
	mov	r5,	#01eh
	mov	r6,	#09h
	mov	r7,	#0c0h
	push	qr0
	bl	__daddu8sw
	add	sp,	#8 
	bl	__dtofu8sw
	add	sp,	#4 
	pop	xr0
	mov	er4,	er0
	mov	er6,	er2
CBLOCKEND 253 5 3555

;;	}
CLINEA 0000H 0000H 0DE3H 0002H 0002H
_$L735 :

;;	if((y>0)&&(x==0)){
CLINEA 0000H 0001H 0DE4H 0002H 0013H
	push	xr8
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L742
	l	er0,	4[fp]
	l	er2,	6[fp]
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bne	_$L742
CBLOCK 253 6 3556

;;		result = 1.57;
CLINEA 0000H 0001H 0DE5H 0003H 0010H
	mov	r0,	#0c3h
	mov	r1,	#0f5h
	mov	r2,	#0c8h
	mov	r3,	#03fh
	mov	er4,	er0
	mov	er6,	er2
CBLOCKEND 253 6 3558

;;	}
CLINEA 0000H 0000H 0DE6H 0002H 0002H
_$L742 :

;;	if((y<0)&&(x==0)){
CLINEA 0000H 0001H 0DE7H 0002H 0013H
	push	xr8
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$L749
	l	er0,	4[fp]
	l	er2,	6[fp]
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bne	_$L749
CBLOCK 253 7 3559

;;		result = -1.57;
CLINEA 0000H 0001H 0DE8H 0003H 0011H
	mov	r0,	#0c3h
	mov	r1,	#0f5h
	mov	r2,	#0c8h
	mov	r3,	#0bfh
	mov	er4,	er0
	mov	er6,	er2
CBLOCKEND 253 7 3561

;;	}
CLINEA 0000H 0000H 0DE9H 0002H 0002H
_$L749 :

;;	if((x==0)&&(y==0)){			//we made this up....
CLINEA 0000H 0001H 0DEAH 0002H 002CH
	l	er0,	4[fp]
	l	er2,	6[fp]
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bne	_$L756
	push	xr8
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bne	_$L756
CBLOCK 253 8 3562

;;		result = (0.97239*YoverX)-(0.19195*pow(YoverX,3));
CLINEA 0000H 0000H 0DEEH 0003H 0034H
	mov	er0,	#0 
	mov	er2,	#0 
	mov	er4,	#0 
	mov	r6,	#08h
	mov	r7,	#040h
	push	qr0
	mov	r6,	#0f0h
	mov	r7,	#03fh
	push	qr0
	mov	er0,	fp
	add	er0,	#-16
	bl	_pow
	add	sp,	#16
	mov	r0,	#059h
	mov	r1,	#0a3h
	mov	r2,	#01eh
	mov	r3,	#0a2h
	mov	r4,	#0d1h
	mov	r5,	#01dh
	mov	r6,	#0efh
	push	qr0
	lea	-16[fp]
	l	qr0,	[ea]
	push	qr0
	mov	r0,	#036h
	mov	r1,	#0cdh
	mov	r2,	#03bh
	mov	r3,	#04eh
	mov	r4,	#0d1h
	mov	r5,	#091h
	mov	r6,	#0c8h
	mov	r7,	#03fh
	push	qr0
	bl	__dmulu8sw
	add	sp,	#8 
	bl	__dsubu8sw
	add	sp,	#8 
	bl	__dtofu8sw
	add	sp,	#4 
	pop	xr0
	mov	er4,	er0
	mov	er6,	er2
CBLOCKEND 253 8 3567

;;	}
CLINEA 0000H 0000H 0DEFH 0002H 0002H
_$L756 :

;;	result *= 57.29;
CLINEA 0000H 0001H 0DF0H 0002H 0011H
	push	xr4
	add	sp,	#-4
	bl	__ftodu8sw
	mov	r0,	#085h
	mov	r1,	#0ebh
	mov	r2,	#051h
	mov	r3,	#0b8h
	mov	r4,	#01eh
	mov	r5,	#0a5h
	mov	r6,	#04ch
	mov	r7,	#040h
	push	qr0
	bl	__dmulu8sw
	add	sp,	#8 
	bl	__dtofu8sw
	add	sp,	#4 
	pop	xr0
	mov	er4,	er0
	mov	er6,	er2

;;	if(result > 45){
CLINEA 0000H 0001H 0DF2H 0002H 0011H
	push	xr0
	mov	er0,	#0 
	mov	r2,	#034h
	mov	r3,	#042h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L763
CBLOCK 253 9 3570

;;		result = 45;
CLINEA 0000H 0001H 0DF3H 0003H 000EH
	mov	r2,	#034h
	mov	r3,	#042h
	mov	er4,	#0 
	mov	er6,	er2
CBLOCKEND 253 9 3572

;;	}
CLINEA 0000H 0000H 0DF4H 0002H 0002H
_$L763 :

;;	if(result < -45){
CLINEA 0000H 0001H 0DF5H 0002H 0012H
	push	xr4
	mov	er0,	#0 
	mov	r2,	#034h
	mov	r3,	#0c2h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$L765
CBLOCK 253 10 3573

;;		result = -45;
CLINEA 0000H 0001H 0DF6H 0003H 000FH
	mov	r2,	#034h
	mov	r3,	#0c2h
	mov	er4,	#0 
	mov	er6,	er2
CBLOCKEND 253 10 3575

;;	}
CLINEA 0000H 0000H 0DF7H 0002H 0002H
_$L765 :

;;	return(result);
CLINEA 0000H 0001H 0DF9H 0002H 0010H
	mov	er0,	er4
	mov	er2,	er6
CBLOCKEND 253 2 3578

;;}
CLINEA 0000H 0000H 0DFAH 0001H 0001H
	pop	xr4
	pop	xr8
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 253 1 3578
CFUNCTIONEND 253

	public _Shutdown
	public _NOPms
	public _NOPus
	public _approx_arctan2
	public _checkI2C
	public _main_clrWDT
	public _Accel_PID_XYChangeFlag
	public _main_reqNotHalt
	public _ReturnMagData
	public _DistanceSensorControl
	public _AccelSensorControlPID
	public _RangeSensorControlPID
	public _PortA_Digital_Inputs
	public _MagSensorControl
	public _ESC2_PWM
	public _Get_AccGyroData
	public _main
	public _MagSensorControlPID
	public _ClearVariables
	public _PortD_Low
	public _NOP1000
	public _ESC1_PWM
	public _CheckSafetyLimitUnscaled
	public _CalibrateAccel
	public _Get_RangeData
	public _PortC_Low
	public _CheckSafetyLimit
	public _ESC4_PWM
	public _Get_MagData
	public _UARTTunePID
	public _Get_PingData
	public _SerialOutCoefficients
	public _PortB_Low
	public _CalibrateMotors
	public _ReturnAccelData
	public _ESC3_PWM
	public _CalibrateGyro
	public _RampUpMotorTest
	public _NOP
	public _PortA_Low
	public _analog_comparator
	public _Run_AccGyroCF
	public _SoftStart
	public _ReturnSensorData
	__flgUartFin comm data 01h #00h
	__flgI2CFin comm data 01h #00h
	__reqNotHalt comm data 01h #00h
	extrn code near : _abs
	extrn code near : _irq_init
	extrn code near : _uart_PortSet
	extrn code near : _i2c_stop
	extrn code near : _i2c_startReceive
	extrn code near : _uart_startReceive
	extrn code near : _pow
	extrn code near : _atan
	extrn code near : _uart_init
	extrn code near : _i2c_continue
	extrn code near : _irq_di
	extrn code near : _irq_ei
	extrn code near : _sscanf_nn
	extrn code near : _irq_setHdr
	extrn code near : _sprintf_nn
	extrn code near : _uart_stop
	extrn code near : _uart_startSend
	extrn code near : _i2c_startSend
	extrn code near : _uart_continue
	extrn code near : _atan2
	extrn code near : _i2c_init
	extrn code near : _tm_init
	extrn code : $$start_up

	cseg #00h at 02h
	dw	$$start_up

	rseg $$NINITTAB
	db	068h
	db	06bh
	db	00h
	db	01ch
	db	00h
	align
	dw	00h
	dw	04680h
	db	01bh
	db	08h
	dw	0126fh
	dw	04283h
	db	01ah
	db	04h
	db	019h
	db	0bh
	db	038h
	db	01h
	db	00h
	db	00h
	db	03bh
	align
	dw	00h
	dw	00h
	db	00h
	db	00h
	db	00h
	align
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	db	01eh
	db	00h
	db	078h
	db	01h
	db	060h
	db	02h
	db	01h
	db	03h
	db	09h
	align
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	08f5ch
	dw	03fc2h
	dw	0126fh
	dw	0be03h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	db	070h
	db	051h
	dw	00h
	dw	0ah
	dw	0ah
	dw	00h
	dw	0428ch
	dw	00h
	dw	04248h
	dw	00h
	dw	04370h
	dw	047aeh
	dw	0bde1h
	dw	047aeh
	dw	03de1h
	dw	047aeh
	dw	0bde1h
	dw	047aeh
	dw	03de1h
	dw	00h
	dw	03f80h
	dw	08000h
	dw	043b3h
	dw	00h
	dw	04334h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	03ec0h
	dw	00h
	dw	00h
	dw	0999ah
	dw	03f59h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	051ech
	dw	03f78h
	dw	0c28fh
	dw	03cf5h
	db	00h
	db	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	db	01h
	align
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	03f80h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	040a0h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	040a0h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	db	00h
	align
	dw	00h
	dw	03fffh
	dw	03fffh
	dw	03fffh
	dw	03fffh
	db	00h
	align
	dw	00h
	dw	0428ch
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	db	00h
	align
	dw	03a98h
	dw	01f40h
	dw	02102h
	dw	04268h
	db	00h
	db	00h
	dw	00h
	dw	02904h
	dw	0251ch
	dw	00h
	db	00h
	align
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h

	rseg $$TAB_uartSetParam$main
__uartSetParam :
	dw	0e100h
	dw	00h
	db	00h
	db	02h
	db	00h
	db	00h
	db	00h
	align

	rseg $$TAB$$S178$main
$$S178 :
	DB	"%f,%f,%f,%f,%f,%f,%f,%u", 00H

	rseg $$TAB$$S191$main
$$S191 :
	DB	"%f,%f,%f", 00H

	rseg $$TAB$$S204$main
$$S204 :
	DB	"%f", 00H

	rseg $$TAB$$S217$main
$$S217 :
	DB	"Motor Calibration Started!", 00H

	rseg $$TAB$$S228$main
$$S228 :
	DB	"Motor Calibration Complete!", 00H

	rseg $$TAB$$S242$main
$$S242 :
	DB	"Gyro Calibration: Please Keep the Quad Flat and Return Any 2 chars to Start", 00H

	rseg $$TAB$$S267$main
$$S267 :
	DB	"Gyro Calibration Complete!", 00H

	rseg $$TAB$$S283$main
$$S283 :
	DB	"Accel Calibration: Keep Quad Flat! Return any 2 chars to Start", 00H

	rseg $$TAB$$S314$main
$$S314 :
	DB	"Accel Calibration: Tilt the Quad 90deg in the ROLL Direction! Return any 2 chars to Start", 00H

	rseg $$TAB$$S339$main
$$S339 :
	DB	"Accel Calibration: Tilt the Quad 90deg in the PITCH direction! Return any 2 chars to Start", 00H

	rseg $$TAB$$S364$main
$$S364 :
	DB	"Accel Calibration Complete!", 00H

	rseg $$TAB$$S386$main
$$S386 :
	DB	"Current Settings: kp=%f,ki=%f,kd=%f,a1=%f,a2=%f", 00H

	rseg $$TAB$$S414$main
$$S414 :
	DB	"CFx,CFy,Mot1,Mot2,Mot3,Mot4", 00H

	rseg $$TAB$$S431$main
$$S431 :
	DB	"%u,%u,%u,%u,%u,%u", 00H

	rseg $$TAB$$S462$main
$$S462 :
	DB	"New Settings: kp=%f,ki=%f,kd=%f,a1=%f,a2=%f", 00H

	rseg $$TAB$$S530$main
$$S530 :
	DB	"%f,%f,%f,%f", 00H

	rseg $$NINITVAR
_MPU6050Address :
	ds	01h
_AccGyro_PWRMGMT1REG :
	ds	01h
_AccGyro_PWRMGMT1REG_Contents :
	ds	01h
_AccGyro_AccelConfig :
	ds	01h
_AccGyro_AccelConfig_Contents :
	ds	01h
	align
_AccGyro_AccelScaling :
	ds	04h
_AccGyro_GyroConfig :
	ds	01h
_AccGyro_GyroConfig_Contents :
	ds	01h
_AccGyro_GyroScaling :
	ds	04h
_AccGyro_GyroAccelLPF :
	ds	01h
_AccGyro_GyroAccelLPF_Contents :
	ds	01h
_AccGyro_GyroAccel_SMPRTDIV :
	ds	01h
_AccGyro_GyroAccelLPF_SMPRTDIVCo :
	ds	01h
_AccGyro_INTENABLEReg :
	ds	01h
_AccGyro_INTENABLEReg_contents :
	ds	01h
_AccGYRO_Test :
	ds	01h
_AccGyro_ReadFlag :
	ds	01h
_AccGyro_ReadData :
	ds	01h
	align
_Temp_out :
	ds	04h
_Accel_SavIndex :
	ds	01h
_Accel_RetIndex :
	ds	01h
_AccGyro_CF_FlagCounter :
	ds	01h
	align
_CF_Accel_XRoll :
	ds	04h
_CF_Accel_YPitch :
	ds	04h
_CF_Gyro_XRoll :
	ds	04h
_CF_Gyro_YPitch :
	ds	04h
_CF_Accel_ForceMagApprox :
	ds	04h
_CF_Gyro_CurrentCount :
	ds	04h
_Gyro_Xcal :
	ds	04h
_Gyro_Ycal :
	ds	04h
_Gyro_Zcal :
	ds	04h
_HMC5883Address :
	ds	01h
_Mag_ConfigA :
	ds	01h
_Mag_ConfigA_Contents :
	ds	01h
_Mag_ConfigB :
	ds	01h
_Mag_ConfigB_Contents :
	ds	01h
_Mag_ModeReg :
	ds	01h
_Mag_ModeReg_Contents :
	ds	01h
_Mag_ReadData :
	ds	01h
_Mag_Status :
	ds	01h
	align
_Mag_Xout :
	ds	04h
_Mag_Yout :
	ds	04h
_Mag_Zout :
	ds	04h
_Mag_Angle :
	ds	04h
_Mag_GainFactor :
	ds	04h
_Mag_DeclinationAngle :
	ds	04h
_timer_us :
	ds	02h
_Ping_timer :
	ds	02h
_Ping_out :
	ds	04h
_Range_Address :
	ds	01h
_Range_TakeRangeReading :
	ds	01h
_Range_out :
	ds	02h
_MotorStep :
	ds	02h
_Mag_MotorStep :
	ds	02h
_Range_ZHiThres :
	ds	04h
_Range_ZLoThres :
	ds	04h
_Range_Ceiling :
	ds	04h
_Accel_XLoThres :
	ds	04h
_Accel_XHiThres :
	ds	04h
_Accel_YLoThres :
	ds	04h
_Accel_YHiThres :
	ds	04h
_Mag_CWThres :
	ds	04h
_Mag_CCWThres :
	ds	04h
_Mag_OpposingPole :
	ds	04h
_Mag_PIDSetpoint :
	ds	04h
_Mag_PIDCorrectionFactor :
	ds	04h
_Mag_PIDAngleScaled :
	ds	04h
_Mag_PIDError :
	ds	04h
_Mag_PIDCounter :
	ds	02h
_Mag_PIDCurrentCount :
	ds	04h
_Mag_PIDErrSum :
	ds	04h
_Mag_PIDdErr :
	ds	04h
_Mag_PIDErrPrev :
	ds	04h
_Mag_PID_kp :
	ds	04h
_Mag_PID_ki :
	ds	04h
_Mag_PID_kd :
	ds	04h
_Mag_PIDOutput :
	ds	04h
_CF_Gyro_Counter :
	ds	04h
_CF_YPitch :
	ds	04h
_CF_XRoll :
	ds	04h
_CF_HPF :
	ds	04h
_CF_LPF :
	ds	04h
_CF_UseFlag :
	ds	01h
_CF_Counter :
	ds	01h
_CF_YPitch_avg :
	ds	04h
_CF_XRoll_avg :
	ds	04h
_CF_highlow_flag :
	ds	01h
	align
_CF_YPitch_high :
	ds	04h
_CF_XRoll_high :
	ds	04h
_CF_YPitch_low :
	ds	04h
_CF_XRoll_low :
	ds	04h
_CF_avgCnt :
	ds	04h
_CF_StdDev_M_X :
	ds	04h
_CF_StdDev_M_Y :
	ds	04h
_CF_StdDev_Mtmp_X :
	ds	04h
_CF_StdDev_Mtmp_Y :
	ds	04h
_CF_StdDev_S_X :
	ds	04h
_CF_StdDev_S_Y :
	ds	04h
_CF_StdDev_K :
	ds	04h
_ArrayCounter :
	ds	02h
_Accel_PID_XRollCounter :
	ds	02h
_Accel_PID_XRollErrSum :
	ds	04h
_Accel_PID_XRollErrPrev :
	ds	04h
_Accel_PID_YPitchCounter :
	ds	02h
_Accel_PID_YPitchErrSum :
	ds	04h
_Accel_PID_YPitchErrPrev :
	ds	04h
_Accel_PID_XRoll_kp :
	ds	04h
_Accel_PID_XRoll_ki :
	ds	04h
_Accel_PID_XRoll_kd :
	ds	04h
_Accel_PID_YPitch_kp :
	ds	04h
_Accel_PID_YPitch_ki :
	ds	04h
_Accel_PID_YPitch_kd :
	ds	04h
_Accel_PID_XYChangeFlag :
	ds	01h
	align
_Accel_PID_Counter :
	ds	02h
_Accel_PID_Motor1 :
	ds	02h
_Accel_PID_Motor2 :
	ds	02h
_Accel_PID_Motor3 :
	ds	02h
_Accel_PID_Motor4 :
	ds	02h
_Accel_PID_GoCounter :
	ds	01h
	align
_Range_PIDSetpoint :
	ds	04h
_Range_PIDError :
	ds	04h
_Range_PIDCounter :
	ds	02h
_Range_PIDCurrentCount :
	ds	04h
_Range_PIDErrSum :
	ds	04h
_Range_PIDdErr :
	ds	04h
_Range_PIDErrPrev :
	ds	04h
_Range_PIDOutput :
	ds	04h
_Range_PID_kp :
	ds	04h
_Range_PID_ki :
	ds	04h
_Range_PID_kd :
	ds	04h
_TestingEndTimer :
	ds	02h
_Timer8Counter :
	ds	02h
_PWMflag :
	ds	01h
	align
_PWMUpperDutyLimitCalib :
	ds	02h
_PWMLowerDutyLimitCalib :
	ds	02h
_PWMSafeDuty :
	ds	02h
_PWMPeriod :
	ds	02h
_PWMCounter :
	ds	01h
_PWMSensorResPerInc :
	ds	01h
_PWMUpperLowerDiff :
	ds	02h
_PWMUpperDutyLimitRun :
	ds	02h
_PWMLowerDutyLimitRun :
	ds	02h
_$ST0 :
	ds	02h
_$ST1 :
	ds	01h
	align
_$ST2 :
	ds	04h
_$ST3 :
	ds	04h
_$ST4 :
	ds	04h
_$ST5 :
	ds	04h
_$ST6 :
	ds	04h
_$ST7 :
	ds	04h
_$ST8 :
	ds	04h
_$ST9 :
	ds	04h
_$ST10 :
	ds	04h
_$ST11 :
	ds	04h
_$ST12 :
	ds	04h
_$ST13 :
	ds	04h
_$ST14 :
	ds	04h
_$ST15 :
	ds	04h
_$ST16 :
	ds	04h
_$ST17 :
	ds	04h

	rseg $$NVARmain
_RecWorld :
	ds	08h
_SensorReturn :
	ds	0c8h
_Gyro_Zout :
	ds	028h
_Gyro_Yout :
	ds	028h
_NewVar_Str :
	ds	06h
_NewVar :
	ds	04h
_KeyMOTData :
	ds	0348h
_AccGyro_Data :
	ds	0eh
_Range_Output :
	ds	02h
_Accel_Zcal :
	ds	0ch
_Accel_Xcal :
	ds	0ch
_Mag_Data :
	ds	06h
_Accel_Xout :
	ds	028h
_Accel_Ycal :
	ds	0ch
_SensorReturnSM :
	ds	032h
_KeyCFData :
	ds	0276h
_Accel_Yout :
	ds	028h
_Accel_Zout :
	ds	028h
_Gyro_Xout :
	ds	028h
	extrn code : __faddu8sw
	extrn code : __fsubu8sw
	extrn code : __fnegu8sw
	extrn code : __fcmpu8sw
	extrn code : __fmulu8sw
	extrn code : __fdivu8sw
	extrn code : __fildu8sw
	extrn code : __ftolu8sw
	extrn code : __ftodu8sw
	extrn code : __daddu8sw
	extrn code : __dsubu8sw
	extrn code : __dmulu8sw
	extrn code : __dildu8sw
	extrn code : __dtofu8sw
	extrn code : __fuldu8sw

	end
