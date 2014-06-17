;; Compile Options : /TML610112 /MS /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Iuart /Ii2c /SS 256 /SD /Oa /Ot /W 3 /Wc /Fa_output\_obj\ 
;; Version Number  : Ver.3.41.8
;; File Name       : main.c

	type (ML610112) 
	model small, near
	$$NVARmain segment data 2h #0h
	$$NINITVAR segment data 2h #0h
	$$NINITTAB segment table 2h any
	$$AccelGyroDataReady_ISR$main segment code 2h #0h
	$$AccelSensorControlPID_D$main segment code 2h #0h
	$$AccelSensorControlPID_I$main segment code 2h #0h
	$$AccelSensorControlPID_P$main segment code 2h #0h
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
	$$TAB$$S183$main segment table 2h #0h
	$$TAB$$S196$main segment table 2h #0h
	$$TAB$$S209$main segment table 2h #0h
	$$TAB$$S223$main segment table 2h #0h
	$$TAB$$S248$main segment table 2h #0h
	$$TAB$$S264$main segment table 2h #0h
	$$TAB$$S295$main segment table 2h #0h
	$$TAB$$S320$main segment table 2h #0h
	$$TAB$$S345$main segment table 2h #0h
	$$TAB$$S367$main segment table 2h #0h
	$$TAB$$S423$main segment table 2h #0h
	$$TAB$$S501$main segment table 2h #0h
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
CGLOBAL 01H 03H 0000H "AccelSensorControlPID_D" 08H 02H 0F0H 00H 81H 1aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "AccelSensorControlPID_I" 08H 02H 0EFH 00H 81H 16H 00H 00H 07H
CGLOBAL 01H 03H 0000H "AccelSensorControlPID_P" 08H 02H 0EEH 00H 81H 0eH 00H 00H 07H
CGLOBAL 01H 03H 0000H "Shutdown" 08H 02H 0F4H 00H 81H 02H 00H 00H 07H
CSGLOBAL 03H 0000H "TBC_ISR" 08H 02H 00H 01H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "NOPms" 08H 02H 0FCH 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "NOPus" 08H 02H 0FDH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "approx_arctan2" 08H 02H 0FFH 00H 83H 40H 00H 00H 03H
CGLOBAL 01H 03H 0000H "checkI2C" 08H 02H 0F7H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_clrWDT" 08H 02H 0CEH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcUartFin" 08H 02H 0F5H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_reqNotHalt" 08H 02H 0F8H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ReturnMagData" 08H 02H 0E3H 00H 81H 0eH 00H 00H 07H
CGLOBAL 01H 03H 0000H "DistanceSensorControl" 08H 02H 0EBH 00H 81H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "Initialization" 08H 02H 0CFH 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "RangeSensorControlPID" 08H 02H 0F1H 00H 81H 20H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Digital_Inputs" 08H 02H 0D6H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "MagSensorControl" 08H 02H 0ECH 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "ESC2_PWM" 08H 02H 0D8H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Get_AccGyroData" 08H 02H 0DDH 00H 81H 10H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main" 08H 02H 03H 01H 80H 00H 00H 00H 01H
CGLOBAL 01H 03H 0000H "MagSensorControlPID" 08H 02H 0EDH 00H 81H 2aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intUart" 08H 02H 0F9H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ClearVariables" 08H 02H 0E0H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortD_Low" 08H 02H 0D5H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "NOP1000" 08H 02H 0FEH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ESC1_PWM" 08H 02H 0D7H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intI2c" 08H 02H 0FAH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "CheckSafetyLimitUnscaled" 08H 02H 0F3H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "SetOSC" 08H 02H 0D0H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "CalibrateAccel" 08H 02H 0E6H 00H 81H 0cH 00H 00H 07H
CSGLOBAL 03H 0000H "AccelGyroDataReady_ISR" 08H 02H 02H 01H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Get_RangeData" 08H 02H 0DBH 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortC_Low" 08H 02H 0D4H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "TMR89_ISR" 08H 02H 01H 01H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "CheckSafetyLimit" 08H 02H 0F2H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ESC4_PWM" 08H 02H 0DAH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Get_MagData" 08H 02H 0DFH 00H 83H 28H 00H 00H 07H
CGLOBAL 01H 03H 0000H "UARTTunePID" 08H 02H 0E8H 00H 81H 32H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Get_PingData" 08H 02H 0DCH 00H 81H 16H 00H 00H 07H
CGLOBAL 01H 03H 0000H "SerialOutCoefficients" 08H 02H 0E7H 00H 81H 32H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortB_Low" 08H 02H 0D3H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "CalibrateMotors" 08H 02H 0E4H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ReturnAccelData" 08H 02H 0E2H 00H 81H 0cH 00H 00H 07H
CGLOBAL 01H 03H 0000H "ESC3_PWM" 08H 02H 0D9H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "CalibrateGyro" 08H 02H 0E5H 00H 81H 0cH 00H 00H 07H
CGLOBAL 01H 03H 0000H "RampUpMotorTest" 08H 02H 0EAH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "NOP" 08H 02H 0FBH 00H 81H 08H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Low" 08H 02H 0D2H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "analog_comparator" 08H 02H 0D1H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Run_AccGyroCF" 08H 02H 0DEH 00H 83H 20H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcI2CFin" 08H 02H 0F6H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "SoftStart" 08H 02H 0E9H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "ReturnSensorData" 08H 02H 0E1H 00H 81H 2eH 00H 00H 07H
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
CSGLOBAL 42H 0002H "PWMIdleDutyRun" 02H 00H 01H
CSGLOBAL 42H 0002H "Mag_PIDCounter" 02H 00H 01H
CSGLOBAL 43H 0004H "CF_YPitch_high" 02H 00H 03H
CSGLOBAL 43H 0004H "Mag_CWThres" 02H 00H 03H
CSGLOBAL 43H 0004H "Ping_out" 02H 00H 03H
CSGLOBAL 42H 00C8H "SensorReturn" 05H 01H 0C8H 00H 00H 00H
CSGLOBAL 42H 0001H "PWMCounter" 02H 00H 00H
CSGLOBAL 42H 0001H "AccGyro_PWRMGMT1REG_Contents" 02H 00H 00H
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
CSGLOBAL 43H 0004H "Gyro_Zout" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_PID_XRollErrPrev" 02H 00H 03H
CSGLOBAL 42H 0002H "Range_out" 02H 00H 01H
CSGLOBAL 43H 0004H "Range_PIDError" 02H 00H 03H
CSGLOBAL 43H 0004H "Gyro_Yout" 02H 00H 03H
CSGLOBAL 43H 0004H "Range_PIDOutput" 02H 00H 03H
CSGLOBAL 42H 0006H "NewVar_Str" 05H 01H 06H 00H 00H 00H
CSGLOBAL 42H 0001H "AccGyro_AccelConfig" 02H 00H 00H
CSGLOBAL 43H 0004H "Accel_PID_XRolldErr" 02H 00H 03H
CSGLOBAL 43H 0002H "Accel_PID_PBounds_Var_Pos" 02H 00H 01H
CSGLOBAL 42H 0002H "PWMLowerDutyLimitCalib" 02H 00H 01H
CSGLOBAL 43H 0004H "Accel_PID_XRoll_ki" 02H 00H 03H
CGLOBAL 01H 42H 0001H "Accel_PID_XYChangeFlag" 02H 00H 00H
CSGLOBAL 43H 0004H "Accel_PID_XRoll_kd" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_PID_YPitchError" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_PID_XRoll_kp" 02H 00H 03H
CSGLOBAL 42H 0001H "AccGyro_CF_FlagCounter" 02H 00H 00H
CSGLOBAL 43H 0002H "Accel_PID_PBounds_Var_Neg" 02H 00H 01H
CSGLOBAL 43H 0004H "Accel_Zout_Avg" 02H 00H 03H
CSGLOBAL 42H 0001H "AccGyro_ReadFlag" 02H 00H 00H
CSGLOBAL 43H 0004H "Accel_Yout_Avg" 02H 00H 03H
CSGLOBAL 43H 0004H "Mag_PIDErrSum" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_Xout_Avg" 02H 00H 03H
CSGLOBAL 43H 0004H "Range_PIDSetpoint" 02H 00H 03H
CSGLOBAL 42H 0001H "Mag_ModeReg_Contents" 02H 00H 00H
CSGLOBAL 43H 0004H "NewVar" 02H 00H 03H
CSGLOBAL 43H 0004H "Mag_Yout" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_Gyro_Counter" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_XRoll" 02H 00H 03H
CSGLOBAL 42H 0002H "Mag_MotorStep" 02H 00H 01H
CSGLOBAL 42H 0001H "Accel_PID_DFlag" 02H 00H 00H
CSGLOBAL 42H 0001H "AccGyro_GyroAccelLPF_SMPRTDIVCo" 02H 00H 00H
CSGLOBAL 43H 0004H "CF_Accel_ForceMagApprox" 02H 00H 03H
CSGLOBAL 42H 0002H "PWMtoRPMOffset_Mot2" 02H 00H 01H
CSGLOBAL 42H 0002H "PWMtoRPMOffset_Mot3" 02H 00H 01H
CSGLOBAL 42H 0002H "PWMtoRPMOffset_Mot4" 02H 00H 01H
CSGLOBAL 43H 0004H "Mag_Zout" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_PID_XRollErrSum" 02H 00H 03H
CSGLOBAL 42H 0001H "Accel_PID_GoCounter" 02H 00H 00H
CSGLOBAL 43H 0004H "CF_StdDev_Mtmp_X" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_StdDev_Mtmp_Y" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_StdDev_K" 02H 00H 03H
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
CSGLOBAL 43H 0004H "Accel_PID_XRollError" 02H 00H 03H
CSGLOBAL 42H 0001H "PWMSensorResPerInc" 02H 00H 00H
CSGLOBAL 43H 0004H "CF_Gyro_XRoll" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_PID_YPitchdErr" 02H 00H 03H
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
CSGLOBAL 42H 0001H "Mag_ModeReg" 02H 00H 00H
CSGLOBAL 42H 0001H "Mag_ConfigB_Contents" 02H 00H 00H
CSGLOBAL 43H 0004H "Temp_out" 02H 00H 03H
CSGLOBAL 42H 0001H "AccGyro_PWRMGMT1REG" 02H 00H 00H
CSGLOBAL 43H 0002H "Accel_PID_DBounds_Var_Neg" 02H 00H 01H
CSGLOBAL 42H 0001H "Mag_ConfigA_Contents" 02H 00H 00H
CSGLOBAL 42H 0001H "AccGyro_GyroConfig" 02H 00H 00H
CSGLOBAL 43H 0004H "Range_PIDErrSum" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_YPitch" 02H 00H 03H
CSGLOBAL 43H 0002H "Accel_PID_DBounds_Var_Pos" 02H 00H 01H
CSGLOBAL 42H 0002H "Range_Output" 05H 01H 02H 00H 00H 00H
CSGLOBAL 42H 0002H "PWMLowerDutyLimitRun" 02H 00H 01H
CSGLOBAL 43H 0004H "CF_avgCnt" 02H 00H 03H
CSGLOBAL 42H 0001H "PrePIDCount" 02H 00H 00H
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
CSGLOBAL 42H 0002H "Accel_PID_XRollCounter_D" 02H 00H 01H
CSGLOBAL 42H 0002H "Accel_PID_XRollCounter_I" 02H 00H 01H
CSGLOBAL 42H 0001H "Mag_Status" 02H 00H 00H
CSGLOBAL 42H 0001H "AccGyro_AccelConfig_Contents" 02H 00H 00H
CSGLOBAL 43H 0004H "Mag_PIDCorrectionFactor" 02H 00H 03H
CGLOBAL 00H 42H 0001H "_flgI2CFin" 02H 00H 00H
CSGLOBAL 43H 000CH "Accel_Xcal" 05H 01H 03H 00H 00H 03H
CSGLOBAL 43H 0004H "AccGyro_GyroScaling" 02H 00H 03H
CSGLOBAL 43H 0004H "CF_Accel_XRoll" 02H 00H 03H
CSGLOBAL 42H 0006H "Mag_Data" 05H 01H 06H 00H 00H 00H
CSGLOBAL 43H 003CH "Accel_Xout" 05H 01H 0FH 00H 00H 03H
CSGLOBAL 42H 0002H "Accel_PID_YPitchCounter_D" 02H 00H 01H
CSGLOBAL 42H 0002H "Accel_PID_YPitchCounter_I" 02H 00H 01H
CSGLOBAL 42H 0001H "CF_highlow_flag" 02H 00H 00H
CSGLOBAL 43H 000CH "Accel_Ycal" 05H 01H 03H 00H 00H 03H
CSGLOBAL 42H 0001H "AccGYRO_Test" 02H 00H 00H
CSGLOBAL 42H 0032H "SensorReturnSM" 05H 01H 32H 00H 00H 00H
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
CSGLOBAL 43H 0002H "testI" 02H 00H 01H
CSGLOBAL 43H 0002H "testD" 02H 00H 01H
CSGLOBAL 43H 0004H "Mag_PIDSetpoint" 02H 00H 03H
CSGLOBAL 43H 0002H "testP" 02H 00H 01H
CSGLOBAL 43H 0004H "AccGyro_AccelScaling" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_XLoThres" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_YHiThres" 02H 00H 03H
CSGLOBAL 43H 0004H "Range_PID_kp" 02H 00H 03H
CSGLOBAL 43H 0004H "Accel_XHiThres" 02H 00H 03H
CSGLOBAL 42H 0001H "Range_TakeRangeReading" 02H 00H 00H
CSGLOBAL 43H 0004H "Range_PID_kd" 02H 00H 03H
CSGLOBAL 43H 003CH "Accel_Yout" 05H 01H 0FH 00H 00H 03H
CSGLOBAL 43H 0004H "Range_PID_ki" 02H 00H 03H
CSGLOBAL 42H 0002H "MotorStep" 02H 00H 01H
CSGLOBAL 43H 003CH "Accel_Zout" 05H 01H 0FH 00H 00H 03H
CSGLOBAL 42H 0002H "Timer8Counter" 02H 00H 01H
CSGLOBAL 42H 0001H "AccGyro_GyroAccelLPF_Contents" 02H 00H 00H
CSGLOBAL 43H 0004H "Gyro_Zcal" 02H 00H 03H
CSGLOBAL 42H 0001H "Accel_PID_IFlag" 02H 00H 00H
CSGLOBAL 42H 0001H "Mag_ConfigA" 02H 00H 00H
CSGLOBAL 42H 0001H "Mag_ConfigB" 02H 00H 00H
CSGLOBAL 42H 0001H "Mag_ReadData" 02H 00H 00H
CSGLOBAL 43H 0004H "Accel_YLoThres" 02H 00H 03H
CSGLOBAL 43H 0004H "Gyro_Ycal" 02H 00H 03H
CSGLOBAL 42H 0002H "timer_us" 02H 00H 01H
CSGLOBAL 43H 0004H "Gyro_Xout" 02H 00H 03H
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
CFILE 0000H 00000FFEH "main\\main.c"

	rseg $$main$main
CFUNCTION 259

_main	:
CBLOCK 259 1 562

;;{
CLINEA 0000H 0001H 0232H 0001H 0001H
CBLOCK 259 2 562
CLOCAL 47H 0002H 0026H 0002H "i" 02H 00H 01H

;;		Initialization(); 			//Ports, UART, Timers, Oscillator, Comparators, etc.
CLINEA 0000H 0001H 0237H 0003H 004BH
	bl	_Initialization

;;		main_clrWDT();				//kick the dog...1.34uS duration
CLINEA 0000H 0001H 0238H 0003H 0034H
	bl	_main_clrWDT

;;		CalibrateMotors();			//Time-consuming ~6s
CLINEA 0000H 0001H 0239H 0003H 002BH
	bl	_CalibrateMotors

;;		CalibrateGyro();			//Enter Calibration Sequence for Gyro
CLINEA 0000H 0001H 023AH 0003H 003AH
	bl	_CalibrateGyro

;;			Accel_Zcal[0] = -162;
CLINEA 0000H 0001H 0241H 0004H 0018H
	mov	er0,	#0 
	mov	r2,	#022h
	mov	r3,	#0c3h
	st	er0,	NEAR _Accel_Zcal
	st	er2,	NEAR _Accel_Zcal+02h

;;Main_Loop:
CLINEA 0000H 0001H 024AH 0001H 000AH
CLABEL 001EH "Main_Loop"
_$L30 :

;;		SerialOutCoefficients();	//~23ms when PID is Triggered as well..13.8ms otherwise
CLINEA 0000H 0001H 024BH 0003H 0052H
	bl	_SerialOutCoefficients

;;		PrePIDCount = 0;
CLINEA 0000H 0001H 024CH 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR _PrePIDCount

;;		UARTTunePID();				//Allow PID & CF Constant changes over UART
CLINEA 0000H 0001H 024DH 0003H 003FH
	bl	_UARTTunePID

;;		main_clrWDT();				//kick the dog...1.34uS duration.
CLINEA 0000H 0001H 024EH 0003H 0035H
	bl	_main_clrWDT

;;		Accel_SavIndex = 0;			//Reset Circular Buffer for Accel/Gyro Measurements
CLINEA 0000H 0001H 0250H 0003H 004BH
	mov	r0,	#00h
	st	r0,	NEAR _Accel_SavIndex

;;		for(i=0; i<AccelAvg; i++){
CLINEA 0000H 0001H 0252H 0003H 001CH
	mov	er4,	#0 
_$L33 :
CBLOCK 259 3 594

;;			Accel_Xout[i] = 0;
CLINEA 0000H 0001H 0253H 0004H 0015H
	mov	er0,	er4
	sllc	r1,	#02h
	sll	r0,	#02h
	mov	er2,	#0 
	st	er2,	NEAR _Accel_Xout[er0]
	st	er2,	NEAR _Accel_Xout+02h[er0]

;;			Accel_Yout[i] = 0;
CLINEA 0000H 0001H 0254H 0004H 0015H
	mov	er0,	er4
	sllc	r1,	#02h
	sll	r0,	#02h
	st	er2,	NEAR _Accel_Yout[er0]
	st	er2,	NEAR _Accel_Yout+02h[er0]

;;			Accel_Zout[i] = 0;
CLINEA 0000H 0001H 0255H 0004H 0015H
	mov	er0,	er4
	sllc	r1,	#02h
	sll	r0,	#02h
	st	er2,	NEAR _Accel_Zout[er0]
	st	er2,	NEAR _Accel_Zout+02h[er0]
CBLOCKEND 259 3 601

;;		for(i=0; i<AccelAvg; i++){
CLINEA 0000H 0000H 0252H 0003H 001CH
	add	er4,	#1 
	cmp	r4,	#0fh
	cmpc	r5,	#00h
	blts	_$L33

;;		EPB3 = 1;					//Enable Accel/Gyro Interrupt Pin
CLINEA 0000H 0001H 025AH 0003H 0031H
	sb	0f011h.7

;;		SoftStart();				//Smoothly bring up the Motor RPM
CLINEA 0000H 0001H 025CH 0003H 0033H
	bl	_SoftStart

;;Fast_Loop:							//This loop takes 22.4ms for this loop as of 3/30/2014		
CLINEA 0000H 0001H 025FH 0001H 0049H
CLABEL 0025H "Fast_Loop"
_$L37 :

;;		main_clrWDT();				//kick the dog...1.34uS duration
CLINEA 0000H 0001H 0261H 0003H 0034H
	bl	_main_clrWDT

;;		ClearVariables();			//Fresh start each loop...
CLINEA 0000H 0001H 0262H 0003H 0030H
	bl	_ClearVariables

;;		if(AccGyro_ReadFlag >= 1){		//Triggered by External Interrupt (flag set in AccelGyroDataReady_ISR)
CLINEA 0000H 0001H 0278H 0003H 0064H
	l	r0,	NEAR _AccGyro_ReadFlag
	cmp	r0,	#01h
	blt	_$L38
CBLOCK 259 4 632

;;			LED_4 = 1;				//LED4 = C2, Pin 14	//Loop Time = 1.5ms @20Hz Rate
CLINEA 0000H 0001H 0279H 0004H 0043H
	sb	0f260h.2

;;			Get_AccGyroData();
CLINEA 0000H 0001H 027AH 0004H 0015H
	bl	_Get_AccGyroData

;;			LED_4 = 0;
CLINEA 0000H 0001H 027BH 0004H 000DH
	rb	0f260h.2

;;			AccGyro_ReadFlag = 0;
CLINEA 0000H 0001H 027CH 0004H 0018H
	mov	r0,	#00h
	st	r0,	NEAR _AccGyro_ReadFlag
CBLOCKEND 259 4 637

;;		}
CLINEA 0000H 0000H 027DH 0003H 0003H
_$L38 :

;;		if(AccGyro_CF_FlagCounter > 0){	//This Value is incremented after Get_AccGyroData(); is called
CLINEA 0000H 0001H 027EH 0003H 0060H
	l	r0,	NEAR _AccGyro_CF_FlagCounter
	cmp	r0,	#00h
	ble	_$L40
CBLOCK 259 5 638

;;			LED_2 = 1;			//B7, Pin 11	//Inside RUN_CF	//Loop Time = 13.5ms
CLINEA 0000H 0001H 027FH 0004H 0041H
	sb	0f258h.7

;;			Run_AccGyroCF();
CLINEA 0000H 0001H 0280H 0004H 0013H
	bl	_Run_AccGyroCF

;;			LED_2 = 0;
CLINEA 0000H 0001H 0281H 0004H 000DH
	rb	0f258h.7

;;			AccGyro_CF_FlagCounter--;	//Decremented because this value is not a static 1/0... number shows number of items in buffer that have not gone though the CF yet
CLINEA 0000H 0000H 0282H 0004H 00A0H
	lea	OFFSET _AccGyro_CF_FlagCounter
	dec	[ea]
CBLOCKEND 259 5 643

;;		}
CLINEA 0000H 0000H 0283H 0003H 0003H
_$L40 :

;;		if(Accel_PID_GoCounter>= 1){		//This increments in the Run_AccGyroCF()... I don't know if this is the best trigger.. but for now, it works.  Calls GetAccGyroData and AccGyroCF once within the routine.
CLINEA 0000H 0001H 0284H 0003H 00CAH
	l	r0,	NEAR _Accel_PID_GoCounter
	cmp	r0,	#01h
	blt	_$L42
CBLOCK 259 6 644

;;			LED_3 = 1;			//C1, Pin 13		//Loop Time = 25.47 with UART Debugging ON... 
CLINEA 0000H 0001H 0285H 0004H 004CH
	sb	0f260h.1

;;			AccelSensorControlPID_P(); 		
CLINEA 0000H 0001H 0286H 0004H 0020H
	bl	_AccelSensorControlPID_P

;;			LED_3 = 0;
CLINEA 0000H 0001H 0287H 0004H 000DH
	rb	0f260h.1

;;			Accel_PID_IFlag++;
CLINEA 0000H 0000H 0288H 0004H 0015H
	lea	OFFSET _Accel_PID_IFlag
	inc	[ea]

;;			Accel_PID_DFlag++;
CLINEA 0000H 0000H 0289H 0004H 0015H
	lea	OFFSET _Accel_PID_DFlag
	inc	[ea]
	l	r0,	NEAR _Accel_PID_DFlag

;;			if(Accel_PID_DFlag < DenterThres){
CLINEA 0000H 0001H 028AH 0004H 0025H
	cmp	r0,	#01h
	bge	_$L44
CBLOCK 259 7 650

;;				Accel_PID_YPitchErrPrev = Accel_PID_YPitchError;
CLINEA 0000H 0001H 028BH 0005H 0034H
	l	er0,	NEAR _Accel_PID_YPitchError
	l	er2,	NEAR _Accel_PID_YPitchError+02h
	st	er0,	NEAR _Accel_PID_YPitchErrPrev
	st	er2,	NEAR _Accel_PID_YPitchErrPrev+02h

;;				Accel_PID_XRollErrPrev = Accel_PID_XRollError;
CLINEA 0000H 0001H 028CH 0005H 0032H
	l	er0,	NEAR _Accel_PID_XRollError
	l	er2,	NEAR _Accel_PID_XRollError+02h
	st	er0,	NEAR _Accel_PID_XRollErrPrev
	st	er2,	NEAR _Accel_PID_XRollErrPrev+02h
CBLOCKEND 259 7 653

;;			}
CLINEA 0000H 0000H 028DH 0004H 0004H
_$L44 :

;;			Accel_PID_GoCounter = 0;
CLINEA 0000H 0001H 028EH 0004H 001BH
	mov	r0,	#00h
	st	r0,	NEAR _Accel_PID_GoCounter

;;			TestingEndTimer++;			//Comment this out to always loop (i.e.: no shut-down...)
CLINEA 0000H 0000H 028FH 0004H 0051H
	l	er0,	NEAR _TestingEndTimer
	add	er0,	#1 
	st	er0,	NEAR _TestingEndTimer
CBLOCKEND 259 6 656

;;		}
CLINEA 0000H 0000H 0290H 0003H 0003H
_$L42 :

;;		if(Accel_PID_IFlag >= IenterThres){		//This increments in the Run_AccGyroCF()... I don't know if this is the best trigger.. but for now, it works.  Calls GetAccGyroData and AccGyroCF once within the routine.
CLINEA 0000H 0001H 0292H 0003H 00D1H
	l	r0,	NEAR _Accel_PID_IFlag
	cmp	r0,	#01h
	blt	_$L46
CBLOCK 259 8 658

;;			AccelSensorControlPID_I(); 		
CLINEA 0000H 0001H 0294H 0004H 0020H
	bl	_AccelSensorControlPID_I

;;			Accel_PID_IFlag = 0;
CLINEA 0000H 0001H 0296H 0004H 0017H
	mov	r0,	#00h
	st	r0,	NEAR _Accel_PID_IFlag
CBLOCKEND 259 8 663

;;		}
CLINEA 0000H 0000H 0297H 0003H 0003H
_$L46 :

;;		if(Accel_PID_DFlag >= DenterThres){		//This increments in the Run_AccGyroCF()... I don't know if this is the best trigger.. but for now, it works.  Calls GetAccGyroData and AccGyroCF once within the routine.
CLINEA 0000H 0001H 0298H 0003H 00D1H
	l	r0,	NEAR _Accel_PID_DFlag
	cmp	r0,	#01h
	blt	_$L48
CBLOCK 259 9 664

;;			AccelSensorControlPID_D();
CLINEA 0000H 0001H 029AH 0004H 001DH
	bl	_AccelSensorControlPID_D

;;			Accel_PID_DFlag = 0;
CLINEA 0000H 0001H 029CH 0004H 0017H
	mov	r0,	#00h
	st	r0,	NEAR _Accel_PID_DFlag
CBLOCKEND 259 9 669

;;		}
CLINEA 0000H 0000H 029DH 0003H 0003H
_$L48 :

;;		if(TestingEndTimer < 1000){		//50 == 3secs = 250 = 15 seconds
CLINEA 0000H 0001H 02AFH 0003H 003FH
	l	er0,	NEAR _TestingEndTimer
	cmp	r0,	#0e8h
	cmpc	r1,	#03h
	bge	_$M1
	b	_$L37
_$M1 :
CBLOCK 259 10 687

;;			goto Fast_Loop;
CLINEA 0000H 0001H 02B1H 0004H 0012H
CBLOCKEND 259 10 690

;;		else{
CLINEA 0000H 0000H 02B3H 0003H 0007H
CBLOCK 259 11 691

;;			EPB3 = 0;
CLINEA 0000H 0001H 02B4H 0004H 000CH
	rb	0f011h.7

;;			Shutdown();
CLINEA 0000H 0001H 02B7H 0004H 000EH
	bl	_Shutdown

;;			TestingEndTimer = 0;
CLINEA 0000H 0001H 02B8H 0004H 0017H
	mov	er0,	#0 
	st	er0,	NEAR _TestingEndTimer

;;			goto Main_Loop;
CLINEA 0000H 0001H 02BAH 0004H 0012H
	b	_$L30
CBLOCKEND 259 11 699
CBLOCKEND 259 2 701

;;}//end main
CLINEA 0000H 0001H 02BDH 0001H 000BH
CBLOCKEND 259 1 701
CFUNCTIONEND 259


	rseg $$main_clrWDT$main
CFUNCTION 206

_main_clrWDT	:
CBLOCK 206 1 882

;;{
CLINEA 0000H 0001H 0372H 0001H 0001H
CBLOCK 206 2 882

;;	do {
CLINEA 0000H 0001H 0376H 0002H 0005H
_$L56 :
CBLOCK 206 3 886

;;		WDTCON = 0x5Au;
CLINEA 0000H 0001H 0377H 0003H 0011H
	mov	r0,	#05ah
	st	r0,	0f00eh
CBLOCKEND 206 3 888

;;	} while (WDP != 1);
CLINEA 0000H 0000H 0378H 0002H 0014H
	tb	0f00eh.0
	beq	_$L56

;;	WDTCON = 0xA5u;
CLINEA 0000H 0001H 0379H 0002H 0010H
	mov	r0,	#0a5h
	st	r0,	0f00eh
CBLOCKEND 206 2 891

;;}
CLINEA 0000H 0001H 037BH 0001H 0001H
	rt
CBLOCKEND 206 1 891
CFUNCTIONEND 206


	rseg $$Initialization$main
CFUNCTION 207

_Initialization	:
CBLOCK 207 1 898

;;static void Initialization(void){
CLINEA 0000H 0001H 0382H 0001H 0021H
	push	lr
CBLOCK 207 2 898
CRET 0000H

;;	DSIO0 = 1; // 0=> Enables Synchronous Serial Port 0 (initial value).
CLINEA 0000H 0001H 0386H 0002H 0045H
	sb	0f02ah.0

;;	DUA0  = 0; // 0=> Enables the operation of UART0 (initial value).
CLINEA 0000H 0001H 0387H 0002H 0042H
	rb	0f02ah.2

;;	DUA1  = 1; // 0=> Enables Uart1 (initial value). 
CLINEA 0000H 0001H 0388H 0002H 0032H
	sb	0f02ah.3

;;	DI2C1 = 1; // 0=> Enables I2C bus Interface (Slave) (initial value).
CLINEA 0000H 0001H 0389H 0002H 0045H
	sb	0f02ah.6

;;	DI2C0 = 0; // 0=> Enables I2C bus Interface (Master) (initial value).	
CLINEA 0000H 0001H 038AH 0002H 0047H
	rb	0f02ah.7

;;	BLKCON4 = 0x00; // 0=> Enables SA-ADC
CLINEA 0000H 0001H 038CH 0002H 0026H
	mov	r0,	#00h
	st	r0,	0f02ch

;;	BLKCON6 = 0x00; // (1=disables; 0=enables) the operation of Timers 8, 9, A, E, F.
CLINEA 0000H 0001H 038DH 0002H 0052H
	st	r0,	0f02eh

;;	BLKCON7 = 0x00; // (1=disables; 0=enables) the operation of PWM (PWMC, PWMD, PWME, PWMF
CLINEA 0000H 0001H 038EH 0002H 0058H
	st	r0,	0f02fh

;;	PortA_Low();	//Initialize all 3 Ports of Port A to GPIO-Low
CLINEA 0000H 0001H 0391H 0002H 003CH
	bl	_PortA_Low

;;	PortB_Low();	//Initialize all 8 Ports of Port B to GPIO-Low
CLINEA 0000H 0001H 0392H 0002H 003CH
	bl	_PortB_Low

;;	PortC_Low();	//Initialize all 8 Ports of Port C to GPIO-Low
CLINEA 0000H 0001H 0393H 0002H 003CH
	bl	_PortC_Low

;;	PortD_Low();	//Initialize all 6 Ports of Port D to GPIO-Low
CLINEA 0000H 0001H 0394H 0002H 003CH
	bl	_PortD_Low

;;    SetOSC();
CLINEA 0000H 0001H 0397H 0005H 000DH
	bl	_SetOSC

;;	irq_di();	// Disable Interrupts
CLINEA 0000H 0001H 039BH 0002H 0020H
	bl	_irq_di

;;	irq_init();	// Initialize Interrupts (All Off and NO Requests)
CLINEA 0000H 0001H 039CH 0002H 003FH
	bl	_irq_init

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_I2CMINT, _intI2c );
CLINEA 0000H 0001H 03B9H 0002H 003CH
	mov	r2,	#BYTE1 OFFSET __intI2c
	mov	r3,	#BYTE2 OFFSET __intI2c
	mov	r0,	#0ch
	bl	_irq_setHdr

;;		EI2CM = 1;
CLINEA 0000H 0001H 03BAH 0003H 000CH
	sb	0f012h.7

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_UA0INT, _intUart );		
CLINEA 0000H 0001H 03BEH 0002H 003EH
	mov	r2,	#BYTE1 OFFSET __intUart
	mov	r3,	#BYTE2 OFFSET __intUart
	mov	r0,	#0fh
	bl	_irq_setHdr

;;		EUA0 = 1; // EUA0 is the enable flag for the UART0 interrupt (1=ENABLED)
CLINEA 0000H 0001H 03BFH 0003H 004AH
	sb	0f014h.0

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_TM9INT, TMR89_ISR );  //Clear interrupt request flag
CLINEA 0000H 0001H 03CCH 0002H 005DH
	mov	r2,	#BYTE1 OFFSET _TMR89_ISR
	mov	r3,	#BYTE2 OFFSET _TMR89_ISR
	mov	r0,	#0eh
	bl	_irq_setHdr

;;		ETM8 = 1;	  	// Enable timer 8 Interrupt (1=ENABLED
CLINEA 0000H 0001H 03CDH 0003H 0035H
	sb	0f013h.2

;;		ETM9 = 1;	  	// Enable timer 9 Interrupt (1=ENABLED)
CLINEA 0000H 0001H 03CEH 0003H 0036H
	sb	0f013h.3

;;		QTM8 = 1;		// timer 8 IRQ request flag
CLINEA 0000H 0001H 03CFH 0003H 0028H
	sb	0f01bh.2

;;		QTM9 = 1;		// timer 9 IRQ request flag
CLINEA 0000H 0001H 03D0H 0003H 0028H
	sb	0f01bh.3

;;		T8CS0 = 1;
CLINEA 0000H 0001H 03D1H 0003H 000CH
	sb	0f8e2h.0

;;		T8CS1 = 1;
CLINEA 0000H 0001H 03D2H 0003H 000CH
	sb	0f8e2h.1

;;		T8CS2 = 0;
CLINEA 0000H 0001H 03D3H 0003H 000CH
	rb	0f8e2h.2

;;		T9CS0 = 1;
CLINEA 0000H 0001H 03D4H 0003H 000CH
	sb	0f8e6h.0

;;		T9CS1 = 1;
CLINEA 0000H 0001H 03D5H 0003H 000CH
	sb	0f8e6h.1

;;		T9CS2 = 0;
CLINEA 0000H 0001H 03D6H 0003H 000CH
	rb	0f8e6h.2

;;		tm_init(TM_CH_NO_89);
CLINEA 0000H 0001H 03D7H 0003H 0017H
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
CLINEA 0000H 0001H 03DBH 0003H 000DH
	sb	0f8e2h.5

;;		HTD3 = 1;
CLINEA 0000H 0001H 03DDH 0003H 000BH
	sb	0f00bh.3

;;		HTD2 = 1;
CLINEA 0000H 0001H 03DEH 0003H 000BH
	sb	0f00bh.2

;;		HTD1 = 1;
CLINEA 0000H 0001H 03DFH 0003H 000BH
	sb	0f00bh.1

;;		HTD0 = 1; 
CLINEA 0000H 0001H 03E0H 0003H 000CH
	sb	0f00bh.0

;;	PB3DIR = 1;
CLINEA 0000H 0001H 03E3H 0002H 000CH
	sb	0f259h.3

;;	PB3C1 = 0;
CLINEA 0000H 0001H 03E4H 0002H 000BH
	rb	0f25bh.3

;;	PB3C0 = 0;
CLINEA 0000H 0001H 03E5H 0002H 000BH
	rb	0f25ah.3

;;	PB3MD1 = 0;
CLINEA 0000H 0001H 03E6H 0002H 000CH
	rb	0f25dh.3

;;	PB3MD0 = 0;
CLINEA 0000H 0001H 03E7H 0002H 000CH
	rb	0f25ch.3

;;	PB3E1 = 1;
CLINEA 0000H 0001H 03E8H 0002H 000BH
	sb	0f025h.7

;;	PB3E0 = 0;		//PBnE0-1 are used to choose the Rising-Edge Mode for this interrupt
CLINEA 0000H 0001H 03EAH 0002H 0051H
	rb	0f024h.7

;;	PB3SM = 0;
CLINEA 0000H 0001H 03EBH 0002H 000BH
	rb	0f026h.7

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_PB3INT, AccelGyroDataReady_ISR );  //Clear interrupt request flag
CLINEA 0000H 0001H 03EDH 0002H 006AH
	mov	r2,	#BYTE1 OFFSET _AccelGyroDataReady_ISR
	mov	r3,	#BYTE2 OFFSET _AccelGyroDataReady_ISR
	mov	r0,	#08h
	bl	_irq_setHdr

;;	EPB3 = 0;	//Enables Interrupt
CLINEA 0000H 0001H 03EFH 0002H 001EH
	rb	0f011h.7

;;	QPB3 = 0;	//Enables Request Flag (need to set to start using... this is set after the UART control Stuff!)
CLINEA 0000H 0001H 03F0H 0002H 006BH
	rb	0f019h.7

;;	WDTMOD = 0x03; 	// 0x03=overflow 8sec...
CLINEA 0000H 0001H 03F4H 0002H 0029H
	mov	r0,	#03h
	st	r0,	0f00fh

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 03F5H 0002H 001DH
	bl	_main_clrWDT

;;	(void)i2c_init(I2C_MOD_FST, (unsigned short)HSCLK_KHZ, I2C_SYN_ON);
CLINEA 0000H 0001H 03F9H 0002H 0044H
	mov	r0,	#01h
	push	r0
	mov	r2,	#040h
	mov	r3,	#01fh
	bl	_i2c_init
	add	sp,	#2 

;;			     &_uartSetParam );				/* Param... 	 */
CLINEA 0000H 0001H 03FFH 0009H 002DH
	mov	r0,	#BYTE1 OFFSET __uartSetParam
	mov	r1,	#BYTE2 OFFSET __uartSetParam
	push	er0
	mov	r2,	#040h
	mov	r3,	#01fh
	mov	r0,	#02h
	bl	_uart_init
	add	sp,	#2 

;;		uart_PortSet();
CLINEA 0000H 0001H 0400H 0003H 0011H
	bl	_uart_PortSet

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 0401H 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 0402H 0003H 000EH
	bl	_uart_stop

;;	irq_ei(); // Enable Interrupts
CLINEA 0000H 0001H 0404H 0002H 001FH
	bl	_irq_ei

;;		ESC1_PWM();
CLINEA 0000H 0001H 0408H 0003H 000DH
	bl	_ESC1_PWM

;;		ESC2_PWM();
CLINEA 0000H 0001H 0409H 0003H 000DH
	bl	_ESC2_PWM

;;		ESC3_PWM();
CLINEA 0000H 0001H 040AH 0003H 000DH
	bl	_ESC3_PWM

;;		ESC4_PWM();
CLINEA 0000H 0001H 040BH 0003H 000DH
	bl	_ESC4_PWM

;;		PD0DIR = 1;
CLINEA 0000H 0001H 040DH 0003H 000DH
	sb	0f269h.0

;;		PD1DIR = 1;
CLINEA 0000H 0001H 040EH 0003H 000DH
	sb	0f269h.1

;;		PD2DIR = 0;
CLINEA 0000H 0001H 040FH 0003H 000DH
	rb	0f269h.2

;;		PWMUpperLowerDiff = PWMUpperDutyLimitRun-PWMLowerDutyLimitRun;
CLINEA 0000H 0001H 0411H 0003H 0040H
	l	er0,	NEAR _PWMUpperDutyLimitRun
	l	er2,	NEAR _PWMLowerDutyLimitRun
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	NEAR _PWMUpperLowerDiff

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 0414H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 0415H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( MPU6050Address, &AccGyro_PWRMGMT1REG, 1, &AccGyro_PWRMGMT1REG_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 0416H 0002H 008DH
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
CLINEA 0000H 0000H 0417H 0001H 0015H
	bal	_$L99

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0417H 0002H 004EH
_$L61 :
CBLOCK 207 3 1047

;;		main_clrWDT();
CLINEA 0000H 0001H 0418H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 3 1049

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0417H 0001H 0015H
_$L99 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L61

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 041BH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 041CH 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( MPU6050Address, &AccGyro_AccelConfig, 1, &AccGyro_AccelConfig_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 041DH 0002H 008DH
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
CLINEA 0000H 0000H 041EH 0001H 0015H
	bal	_$L100

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 041EH 0002H 004EH
_$L65 :
CBLOCK 207 4 1054

;;		main_clrWDT();
CLINEA 0000H 0001H 041FH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 4 1056

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 041EH 0001H 0015H
_$L100 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L65

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 0422H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 0423H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( MPU6050Address, &AccGyro_GyroConfig, 1, &AccGyro_GyroConfig_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 0424H 0002H 008BH
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
CLINEA 0000H 0000H 0425H 0001H 0015H
	bal	_$L101

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0425H 0002H 004EH
_$L69 :
CBLOCK 207 5 1061

;;		main_clrWDT();
CLINEA 0000H 0001H 0426H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 5 1063

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0425H 0001H 0015H
_$L101 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L69

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 042AH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 042BH 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( MPU6050Address, &AccGyro_GyroAccel_SMPRTDIV, 1, &AccGyro_GyroAccelLPF_SMPRTDIVContents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 042CH 0002H 009DH
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
CLINEA 0000H 0000H 042DH 0001H 0015H
	bal	_$L102

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 042DH 0002H 004EH
_$L73 :
CBLOCK 207 6 1069

;;		main_clrWDT();
CLINEA 0000H 0001H 042EH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 6 1071

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 042DH 0001H 0015H
_$L102 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L73

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 0432H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 0433H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( MPU6050Address, &AccGyro_GyroAccelLPF, 1, &AccGyro_GyroAccelLPF_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 0434H 0002H 008FH
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
CLINEA 0000H 0000H 0435H 0001H 0015H
	bal	_$L103

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0435H 0002H 004EH
_$L77 :
CBLOCK 207 7 1077

;;		main_clrWDT();
CLINEA 0000H 0001H 0436H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 7 1079

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0435H 0001H 0015H
_$L103 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L77

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 043AH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 043BH 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( MPU6050Address, &AccGyro_INTENABLEReg, 1, &AccGyro_INTENABLEReg_contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 043CH 0002H 008FH
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
CLINEA 0000H 0000H 043DH 0001H 0015H
	bal	_$L104

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 043DH 0002H 004EH
_$L81 :
CBLOCK 207 8 1085

;;		main_clrWDT();
CLINEA 0000H 0001H 043EH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 8 1087

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 043DH 0001H 0015H
_$L104 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L81

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 0442H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 0443H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( HMC5883Address, &Mag_ConfigA, 1, &Mag_ConfigA_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 0444H 0002H 007DH
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
CLINEA 0000H 0000H 0445H 0001H 0015H
	bal	_$L105

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0445H 0002H 004EH
_$L85 :
CBLOCK 207 9 1093

;;		main_clrWDT();
CLINEA 0000H 0001H 0446H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 9 1095

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0445H 0001H 0015H
_$L105 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L85

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 0449H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 044AH 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( HMC5883Address, &Mag_ConfigB, 1, &Mag_ConfigB_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 044BH 0002H 007DH
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
CLINEA 0000H 0000H 044CH 0001H 0015H
	bal	_$L106

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 044CH 0002H 004EH
_$L89 :
CBLOCK 207 10 1100

;;		main_clrWDT();
CLINEA 0000H 0001H 044DH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 10 1102

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 044CH 0001H 0015H
_$L106 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L89

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 0450H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 0451H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( HMC5883Address, &Mag_ModeReg, 1, &Mag_ModeReg_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 0452H 0002H 007DH
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
CLINEA 0000H 0000H 0453H 0001H 0015H
	bal	_$L107

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0453H 0002H 004EH
_$L93 :
CBLOCK 207 11 1107

;;		main_clrWDT();
CLINEA 0000H 0001H 0454H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 11 1109

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0453H 0001H 0015H
_$L107 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L93

;;	EPB3 = 0;
CLINEA 0000H 0001H 0458H 0002H 000AH
	rb	0f011h.7

;;	_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 045BH 0002H 003BH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 045CH 0002H 0046H
	bl	_i2c_stop

;;	I20MD = 1;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 045DH 0002H 0035H
	sb	0f2a4h.1

;;	i2c_startReceive(MPU6050Address, &AccGyro_ReadData, 1, &AccGyro_Data, 14, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 045EH 0002H 007CH
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
CLINEA 0000H 0000H 045FH 0001H 0015H
	bal	_$L108

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 045FH 0002H 0051H
_$L97 :
CBLOCK 207 12 1119

;;		main_clrWDT();
CLINEA 0000H 0001H 0460H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 207 12 1125

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 045FH 0001H 0015H
_$L108 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L97

;;	PD1C1 = 1;
CLINEA 0000H 0001H 0469H 0002H 000BH
	sb	0f26bh.1

;;	PD1C0 = 1;
CLINEA 0000H 0001H 046AH 0002H 000BH
	sb	0f26ah.1

;;	PC6DIR = 1;
CLINEA 0000H 0001H 046DH 0002H 000CH
	sb	0f261h.6

;;	PC6C0 = 1;
CLINEA 0000H 0001H 046EH 0002H 000BH
	sb	0f262h.6

;;	PC6C1 = 1;
CLINEA 0000H 0001H 046FH 0002H 000BH
	sb	0f263h.6

;;	PC6MD0 = 0;
CLINEA 0000H 0001H 0470H 0002H 000CH
	rb	0f264h.6

;;	PC6MD1 = 0;
CLINEA 0000H 0001H 0471H 0002H 000CH
	rb	0f265h.6
CBLOCKEND 207 2 1141

;;}//End Initialization
CLINEA 0000H 0001H 0475H 0001H 0015H
	pop	pc
CBLOCKEND 207 1 1141
CFUNCTIONEND 207


	rseg $$Get_RangeData$main
CFUNCTION 219

_Get_RangeData	:
CBLOCK 219 1 1147

;;void Get_RangeData(void){
CLINEA 0000H 0001H 047BH 0001H 0019H
	push	lr
CBLOCK 219 2 1147
CRET 0000H

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 047DH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 047EH 0002H 0043H
	bl	_i2c_stop

;;	I20MD = 0;		//Switch to I2C Standard Operation (100kbps)
CLINEA 0000H 0001H 047FH 0002H 0039H
	rb	0f2a4h.1

;;	i2c_startSend( Range_Address, &Range_TakeRangeReading, 1, &AccGyro_PWRMGMT1REG_Contents, 0, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 0480H 0002H 008FH
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
CLINEA 0000H 0000H 0481H 0001H 0001H
	bal	_$L122

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0481H 0002H 004EH
_$L112 :
CBLOCK 219 3 1153

;;		main_clrWDT();
CLINEA 0000H 0001H 0482H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 219 3 1155

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0481H 0001H 0001H
_$L122 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L112

;;	}
CLINEA 0000H 0000H 0483H 0002H 0002H
_$L111 :

;;	while(RANGE_STAT==1);
CLINEA 0000H 0000H 0484H 0000H 0000H
	tb	0f260h.6
	bne	_$L111

;;	_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 0487H 0002H 003BH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 0488H 0002H 0046H
	bl	_i2c_stop

;;	i2c_startReceive(Range_Address, &Range_TakeRangeReading, 0, &Range_Output, 2, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 0489H 0002H 0080H
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
CLINEA 0000H 0000H 048AH 0001H 0001H
	bal	_$L123

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 048AH 0002H 0051H
_$L120 :
CBLOCK 219 4 1162

;;		main_clrWDT();
CLINEA 0000H 0001H 048BH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 219 4 1164

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 048AH 0001H 0001H
_$L123 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L120

;;	Range_out = (Range_Output[0]<<8)+(Range_Output[1]);
CLINEA 0000H 0001H 048EH 0002H 0034H
	l	r0,	NEAR _Range_Output+01h
	mov	r1,	#00h
	l	r2,	NEAR _Range_Output
	mov	r3,	r2
	mov	r2,	#00h
	add	er0,	er2
	st	er0,	NEAR _Range_out

;;	I20MD = 1;		//Switch Back to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 048FH 0002H 003AH
	sb	0f2a4h.1
CBLOCKEND 219 2 1168

;;}
CLINEA 0000H 0001H 0490H 0001H 0001H
	pop	pc
CBLOCKEND 219 1 1168
CFUNCTIONEND 219


	rseg $$Get_PingData$main
CFUNCTION 220

_Get_PingData	:
CBLOCK 220 1 1170

;;void Get_PingData(void){
CLINEA 0000H 0001H 0492H 0001H 0018H
	push	lr
	push	xr4
CBLOCK 220 2 1170
CRET 0004H

;;	PD1DIR = 0;		// PortD Bit0 set to Output Mode...
CLINEA 0000H 0001H 0495H 0002H 0031H
	rb	0f269h.1

;;	PingSensor = 1;
CLINEA 0000H 0001H 0496H 0002H 0010H
	sb	0f268h.1

;;	NOPus();
CLINEA 0000H 0001H 0497H 0002H 0009H
	bl	_NOPus

;;	PingSensor = 0;
CLINEA 0000H 0001H 0498H 0002H 0010H
	rb	0f268h.1

;;	PD1DIR = 1;		// PortD Bit0 set to Input Mode...
CLINEA 0000H 0001H 049BH 0002H 0030H
	sb	0f269h.1

;;	while(PingSensor == 0){
CLINEA 0000H 0001H 049CH 0002H 0018H
	bal	_$L125
_$L127 :
CBLOCK 220 3 1180

;;		NOPus();
CLINEA 0000H 0001H 049DH 0003H 000AH
	bl	_NOPus
CBLOCKEND 220 3 1182

;;	}
CLINEA 0000H 0000H 049EH 0002H 0002H
_$L125 :

;;	while(PingSensor == 0){
CLINEA 0000H 0000H 049CH 0000H 0000H
	tb	0f268h.1
	beq	_$L127

;;	while(PingSensor ==1){
CLINEA 0000H 0001H 049FH 0002H 0017H
	bal	_$L129
_$L131 :
CBLOCK 220 4 1183

;;		NOPus();
CLINEA 0000H 0001H 04A0H 0003H 000AH
	bl	_NOPus

;;		Ping_timer++;
CLINEA 0000H 0000H 04A1H 0003H 000FH
	l	er0,	NEAR _Ping_timer
	add	er0,	#1 
	st	er0,	NEAR _Ping_timer
CBLOCKEND 220 4 1186

;;	}
CLINEA 0000H 0000H 04A2H 0002H 0002H
_$L129 :

;;	while(PingSensor ==1){
CLINEA 0000H 0000H 049FH 0000H 0000H
	tb	0f268h.1
	bne	_$L131

;;	Ping_timer *= 11;	//Convert the ping timer response to us
CLINEA 0000H 0001H 04A3H 0002H 003AH
	l	er0,	NEAR _Ping_timer
	mov	er2,	er0
	sllc	r1,	#02h
	sll	r0,	#02h
	add	er0,	er2
	add	er0,	er0
	add	er0,	er2
	st	er0,	NEAR _Ping_timer

;;	Ping_out = (0.0162*Ping_timer) + 0.1359; //Convert us to distance based on Datasheet
CLINEA 0000H 0001H 04A4H 0002H 0055H
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
CBLOCKEND 220 2 1190

;;}
CLINEA 0000H 0001H 04A6H 0001H 0001H
	pop	xr4
	pop	pc
CBLOCKEND 220 1 1190
CFUNCTIONEND 220


	rseg $$Get_AccGyroData$main
CFUNCTION 221

_Get_AccGyroData	:
CBLOCK 221 1 1192

;;void Get_AccGyroData(void){
CLINEA 0000H 0001H 04A8H 0001H 001BH
	push	lr
	push	xr8
	push	er4
CBLOCK 221 2 1192
CRET 0006H
CSLOCAL 43H 0002H 0000H 0002H "i" 02H 00H 01H

;;	EPB3 = 0;		//Turn off Accel/Gyro Interrupt.  This can probably be removed...
CLINEA 0000H 0001H 04B0H 0002H 004DH
	rb	0f011h.7

;;	_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 04B2H 0002H 003BH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 04B3H 0002H 0046H
	bl	_i2c_stop

;;	I20MD = 1;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 04B4H 0002H 0035H
	sb	0f2a4h.1

;;	i2c_startReceive(MPU6050Address, &AccGyro_ReadData, 1, &AccGyro_Data, 14, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 04B5H 0002H 007CH
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
CLINEA 0000H 0000H 04B6H 0001H 0001H
	bal	_$L146

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04B6H 0002H 0051H
_$L136 :
CBLOCK 221 3 1206

;;		main_clrWDT();
CLINEA 0000H 0001H 04B7H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 221 3 1208

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04B6H 0001H 0001H
_$L146 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L136

;;	Accel_Xout[Accel_SavIndex] = (AccGyro_Data[0]<<8)+(AccGyro_Data[1]);
CLINEA 0000H 0001H 04BBH 0002H 0045H
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
CLINEA 0000H 0001H 04BCH 0002H 0045H
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
CLINEA 0000H 0001H 04BDH 0002H 0045H
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

;;	Gyro_Xout = (AccGyro_Data[8]<<8)+(AccGyro_Data[9]);
CLINEA 0000H 0001H 04C6H 0002H 0034H
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
	st	er0,	NEAR _Gyro_Xout
	st	er2,	NEAR _Gyro_Xout+02h

;;	Gyro_Yout = (AccGyro_Data[10]<<8)+(AccGyro_Data[11]);
CLINEA 0000H 0001H 04C7H 0002H 0036H
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
	st	er0,	NEAR _Gyro_Yout
	st	er2,	NEAR _Gyro_Yout+02h

;;	Gyro_Zout = (AccGyro_Data[12]<<8)+(AccGyro_Data[13]);
CLINEA 0000H 0001H 04C8H 0002H 0036H
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
	st	er0,	NEAR _Gyro_Zout
	st	er2,	NEAR _Gyro_Zout+02h

;;	Accel_Xout[Accel_SavIndex] -= Accel_Xcal[0];
CLINEA 0000H 0001H 04CAH 0002H 002DH
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
CLINEA 0000H 0001H 04CBH 0002H 002DH
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
CLINEA 0000H 0001H 04CCH 0002H 002DH
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

;;	Gyro_Xout -= Gyro_Xcal;
CLINEA 0000H 0001H 04CEH 0002H 0018H
	l	er0,	NEAR _Gyro_Xout
	l	er2,	NEAR _Gyro_Xout+02h
	push	xr0
	l	er0,	NEAR _Gyro_Xcal
	l	er2,	NEAR _Gyro_Xcal+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Gyro_Xout
	st	er2,	NEAR _Gyro_Xout+02h

;;	Gyro_Yout -= Gyro_Ycal;
CLINEA 0000H 0001H 04CFH 0002H 0018H
	l	er0,	NEAR _Gyro_Yout
	l	er2,	NEAR _Gyro_Yout+02h
	push	xr0
	l	er0,	NEAR _Gyro_Ycal
	l	er2,	NEAR _Gyro_Ycal+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Gyro_Yout
	st	er2,	NEAR _Gyro_Yout+02h

;;	Gyro_Zout -= Gyro_Zcal;
CLINEA 0000H 0001H 04D0H 0002H 0018H
	l	er0,	NEAR _Gyro_Zout
	l	er2,	NEAR _Gyro_Zout+02h
	push	xr0
	l	er0,	NEAR _Gyro_Zcal
	l	er2,	NEAR _Gyro_Zcal+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Gyro_Zout
	st	er2,	NEAR _Gyro_Zout+02h

;;	for(i=0; i<AccelAvg; i++)
CLINEA 0000H 0001H 04D2H 0002H 001AH
	mov	er0,	#0 
	st	er0,	NEAR _$ST0
_$L140 :
CBLOCK 221 4 1235

;;		Accel_Xout_Avg += Accel_Xout[i];
CLINEA 0000H 0001H 04D4H 0003H 0022H
	mov	er4,	er0
	sllc	r5,	#02h
	sll	r4,	#02h
	l	er8,	NEAR _Accel_Xout[er4]
	l	er10,	NEAR _Accel_Xout+02h[er4]
	push	xr8
	l	er0,	NEAR _Accel_Xout_Avg
	l	er2,	NEAR _Accel_Xout_Avg+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Xout_Avg
	st	er2,	NEAR _Accel_Xout_Avg+02h

;;		Accel_Yout_Avg += Accel_Yout[i];
CLINEA 0000H 0001H 04D5H 0003H 0022H
	l	er8,	NEAR _Accel_Yout[er4]
	l	er10,	NEAR _Accel_Yout+02h[er4]
	push	xr8
	l	er0,	NEAR _Accel_Yout_Avg
	l	er2,	NEAR _Accel_Yout_Avg+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Yout_Avg
	st	er2,	NEAR _Accel_Yout_Avg+02h

;;		Accel_Zout_Avg += Accel_Zout[i];
CLINEA 0000H 0001H 04D6H 0003H 0022H
	l	er0,	NEAR _Accel_Zout[er4]
	l	er2,	NEAR _Accel_Zout+02h[er4]
	push	xr0
	l	er0,	NEAR _Accel_Zout_Avg
	l	er2,	NEAR _Accel_Zout_Avg+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Zout_Avg
	st	er2,	NEAR _Accel_Zout_Avg+02h
CBLOCKEND 221 4 1239

;;	for(i=0; i<AccelAvg; i++)
CLINEA 0000H 0000H 04D2H 0002H 001AH
	l	er0,	NEAR _$ST0
	add	er0,	#1 
	st	er0,	NEAR _$ST0
	cmp	r0,	#0fh
	cmpc	r1,	#00h
	blts	_$L140

;;	Accel_Xout_Avg /= AccelAvg;
CLINEA 0000H 0001H 04D8H 0002H 001CH
	l	er0,	NEAR _Accel_Xout_Avg
	l	er2,	NEAR _Accel_Xout_Avg+02h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#070h
	mov	r3,	#041h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Xout_Avg
	st	er2,	NEAR _Accel_Xout_Avg+02h

;;	Accel_Yout_Avg /= AccelAvg;
CLINEA 0000H 0001H 04D9H 0002H 001CH
	l	er0,	NEAR _Accel_Yout_Avg
	l	er2,	NEAR _Accel_Yout_Avg+02h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#070h
	mov	r3,	#041h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Yout_Avg
	st	er2,	NEAR _Accel_Yout_Avg+02h

;;	Accel_Zout_Avg /= AccelAvg;
CLINEA 0000H 0001H 04DAH 0002H 001CH
	l	er0,	NEAR _Accel_Zout_Avg
	l	er2,	NEAR _Accel_Zout_Avg+02h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#070h
	mov	r3,	#041h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Zout_Avg
	st	er2,	NEAR _Accel_Zout_Avg+02h

;;	Accel_SavIndex++;
CLINEA 0000H 0000H 04DDH 0002H 0012H
	lea	OFFSET _Accel_SavIndex
	inc	[ea]
	l	r0,	NEAR _Accel_SavIndex

;;	if(Accel_SavIndex >= AccelAvg){
CLINEA 0000H 0001H 04DEH 0002H 0020H
	cmp	r0,	#0fh
	blt	_$L144
CBLOCK 221 5 1246

;;		Accel_SavIndex = 0;
CLINEA 0000H 0001H 04DFH 0003H 0015H
	mov	r0,	#00h
	st	r0,	NEAR _Accel_SavIndex
CBLOCKEND 221 5 1248

;;	}
CLINEA 0000H 0000H 04E0H 0002H 0002H
_$L144 :

;;	EPB3 = 1;		//Turns Accel/Gyro Interrupt back on... again, this may not be necessary
CLINEA 0000H 0001H 04E3H 0002H 0054H
	sb	0f011h.7

;;	AccGyro_CF_FlagCounter++;	//Counts up to the number of values are in the buffer so main loop can call CF filter function
CLINEA 0000H 0000H 04E4H 0002H 0079H
	lea	OFFSET _AccGyro_CF_FlagCounter
	inc	[ea]
CBLOCKEND 221 2 1253

;;}
CLINEA 0000H 0001H 04E5H 0001H 0001H
	pop	er4
	pop	xr8
	pop	pc
CBLOCKEND 221 1 1253
CFUNCTIONEND 221


	rseg $$Run_AccGyroCF$main
CFUNCTION 222

_Run_AccGyroCF	:
CBLOCK 222 1 1255

;;void Run_AccGyroCF(void){
CLINEA 0000H 0001H 04E7H 0001H 0019H
	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-08
	push	xr4
CBLOCK 222 2 1255
CRET 000EH
CSLOCAL 43H 0002H 0001H 0002H "i" 02H 00H 01H
CSLOCAL 43H 0001H 0002H 0002H "I2CCont" 02H 00H 00H

;;	CF_Gyro_CurrentCount = CF_Gyro_Counter * .001;		//Timer in Seconds (.007 used to convert 128Hz TBC to seconds)
CLINEA 0000H 0001H 04EDH 0002H 006FH
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
CLINEA 0000H 0001H 04EEH 0002H 0015H
	mov	er0,	#0 
	st	er0,	NEAR _CF_Gyro_Counter
	st	er0,	NEAR _CF_Gyro_Counter+02h

;;	CF_Gyro_YPitch = CF_YPitch + ((Gyro_Xout/AccGyro_GyroScaling) * CF_Gyro_CurrentCount);
CLINEA 0000H 0001H 04F0H 0002H 0057H
	l	er0,	NEAR _Gyro_Xout
	l	er2,	NEAR _Gyro_Xout+02h
	push	xr0
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

;;	CF_Gyro_XRoll = CF_XRoll - ((Gyro_Yout/AccGyro_GyroScaling) * CF_Gyro_CurrentCount);	
CLINEA 0000H 0001H 04F1H 0002H 0056H
	l	er0,	NEAR _Gyro_Yout
	l	er2,	NEAR _Gyro_Yout+02h
	push	xr0
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
	l	er4,	NEAR _CF_XRoll
	l	er6,	NEAR _CF_XRoll+02h
	push	qr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _CF_Gyro_XRoll
	st	er2,	NEAR _CF_Gyro_XRoll+02h

;;	CF_Accel_ForceMagApprox = abs(Accel_Xout_Avg) + abs(Accel_Yout_Avg) + abs(Accel_Zout_Avg);
CLINEA 0000H 0000H 04F3H 0002H 005BH
	l	er0,	NEAR _Accel_Xout_Avg
	l	er2,	NEAR _Accel_Xout_Avg+02h
	push	xr0
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	bl	_abs
	mov	er4,	er0
	l	er0,	NEAR _Accel_Yout_Avg
	l	er2,	NEAR _Accel_Yout_Avg+02h
	push	xr0
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	bl	_abs
	add	er4,	er0
	l	er0,	NEAR _Accel_Zout_Avg
	l	er2,	NEAR _Accel_Zout_Avg+02h
	push	xr0
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	bl	_abs
	mov	er2,	er0
	mov	er0,	er4
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
CLINEA 0000H 0001H 04F4H 0002H 0048H
	push	xr0
	mov	er0,	#0 
	mov	r2,	#080h
	mov	r3,	#046h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bgt	_$M8
	b	_$L148
_$M8 :
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
	blt	_$M9
	b	_$L148
_$M9 :
CBLOCK 222 3 1269

;;        CF_Accel_YPitch = atan2(Accel_Yout_Avg, Accel_Zout_Avg) * (57.29);	//57.29 = 180deg/pi
CLINEA 0000H 0000H 04F7H 0009H 005EH
	l	er0,	NEAR _Accel_Zout_Avg
	l	er2,	NEAR _Accel_Zout_Avg+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Accel_Yout_Avg
	l	er2,	NEAR _Accel_Yout_Avg+02h
	push	xr0
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
CLINEA 0000H 0001H 04F8H 0009H 004BH
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

;;        CF_Accel_XRoll = atan2(Accel_Xout_Avg, Accel_Zout_Avg) * (57.29);
CLINEA 0000H 0000H 04FBH 0009H 0049H
	l	er0,	NEAR _Accel_Zout_Avg
	l	er2,	NEAR _Accel_Zout_Avg+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Accel_Xout_Avg
	l	er2,	NEAR _Accel_Xout_Avg+02h
	push	xr0
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
CLINEA 0000H 0001H 04FCH 0009H 0048H
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
CBLOCKEND 222 3 1277

;;	else{
CLINEA 0000H 0001H 04FEH 0002H 0006H
	b	_$L155
_$L148 :
CBLOCK 222 4 1278

;;        CF_Accel_YPitch = atan2(Accel_Yout_Avg, Accel_Zout_Avg) * (57.29);	//57.29 = 180deg/pi
CLINEA 0000H 0000H 0500H 0009H 005EH
	l	er0,	NEAR _Accel_Zout_Avg
	l	er2,	NEAR _Accel_Zout_Avg+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Accel_Yout_Avg
	l	er2,	NEAR _Accel_Yout_Avg+02h
	push	xr0
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

;;		CF_YPitch = CF_Gyro_YPitch;
CLINEA 0000H 0001H 0501H 0003H 001DH
	l	er0,	NEAR _CF_Gyro_YPitch
	l	er2,	NEAR _CF_Gyro_YPitch+02h
	st	er0,	NEAR _CF_YPitch
	st	er2,	NEAR _CF_YPitch+02h

;;        CF_Accel_XRoll = atan2(Accel_Xout_Avg, Accel_Zout_Avg) * (57.29);
CLINEA 0000H 0000H 0504H 0009H 0049H
	l	er0,	NEAR _Accel_Zout_Avg
	l	er2,	NEAR _Accel_Zout_Avg+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Accel_Xout_Avg
	l	er2,	NEAR _Accel_Xout_Avg+02h
	push	xr0
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

;;		CF_XRoll = CF_Gyro_XRoll;
CLINEA 0000H 0001H 0505H 0003H 001BH
	l	er0,	NEAR _CF_Gyro_XRoll
	l	er2,	NEAR _CF_Gyro_XRoll+02h
CBLOCKEND 222 4 1286

;;	}
CLINEA 0000H 0000H 0506H 0002H 0002H
_$L155 :
	st	er0,	NEAR _CF_XRoll
	st	er2,	NEAR _CF_XRoll+02h

;;	Accel_PID_GoCounter++;		//Counts up to 4 to trigger the PID loop to start.
CLINEA 0000H 0000H 0527H 0002H 004BH
	lea	OFFSET _Accel_PID_GoCounter
	inc	[ea]
CBLOCKEND 222 2 1321

;;}
CLINEA 0000H 0001H 0529H 0001H 0001H
	pop	xr4
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 222 1 1321
CFUNCTIONEND 222


	rseg $$Get_MagData$main
CFUNCTION 223

_Get_MagData	:
CBLOCK 223 1 1324

;;void Get_MagData(void){
CLINEA 0000H 0001H 052CH 0001H 0017H
	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-08
	push	xr4
CBLOCK 223 2 1324
CRET 000EH

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 052EH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 052FH 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend( HMC5883Address, &Mag_ModeReg, 1, &Mag_ModeReg_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 0530H 0002H 007DH
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
CLINEA 0000H 0000H 0531H 0001H 0001H
	bal	_$L173

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0531H 0002H 004EH
_$L159 :
CBLOCK 223 3 1329

;;		main_clrWDT();
CLINEA 0000H 0001H 0532H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 223 3 1331

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0531H 0001H 0001H
_$L173 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L159

;;	_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 0535H 0002H 003BH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 0536H 0002H 0046H
	bl	_i2c_stop

;;	i2c_startReceive(HMC5883Address, &Mag_ReadData, 1, &Mag_Data, 6, (cbfI2c)_funcI2CFin);	//Begin I2C Recieve Command
CLINEA 0000H 0001H 0537H 0002H 0073H
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
CLINEA 0000H 0000H 0538H 0001H 0001H
	bal	_$L174

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0538H 0002H 0051H
_$L163 :
CBLOCK 223 4 1336

;;		main_clrWDT();
CLINEA 0000H 0001H 0539H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 223 4 1338

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0538H 0001H 0001H
_$L174 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L163

;;	Mag_Zout = (Mag_Data[2]<<8)+(Mag_Data[3]);
CLINEA 0000H 0001H 053EH 0002H 002BH
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
CLINEA 0000H 0001H 0540H 0002H 001CH
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
CLINEA 0000H 0001H 0541H 0002H 001CH
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
CLINEA 0000H 0001H 0543H 0002H 0013H
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$L165
CBLOCK 223 5 1347

;;		Mag_Angle = 90 - (atan(Mag_Xout/Mag_Yout)) * (180/3.1415927);
CLINEA 0000H 0000H 0544H 0003H 003FH
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
CBLOCKEND 223 5 1349

;;	}
CLINEA 0000H 0000H 0545H 0002H 0002H
_$L165 :

;;	if(Mag_Yout < 0){
CLINEA 0000H 0001H 0546H 0002H 0012H
	l	er0,	NEAR _Mag_Yout
	l	er2,	NEAR _Mag_Yout+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$L167
CBLOCK 223 6 1350

;;		Mag_Angle = 270 - (atan(Mag_Xout/Mag_Yout)) * (180/3.1415927);
CLINEA 0000H 0000H 0547H 0003H 0040H
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
CBLOCKEND 223 6 1352

;;	}
CLINEA 0000H 0000H 0548H 0002H 0002H
_$L167 :

;;	Mag_Angle -= 90;  //This will adjust and get the true 
CLINEA 0000H 0001H 054AH 0002H 0037H
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
CLINEA 0000H 0001H 054BH 0002H 0015H
	push	xr0
	mov	er0,	#0 
	mov	r2,	#0b4h
	mov	r3,	#043h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$L169
CBLOCK 223 7 1355

;;		Mag_Angle -= 360;
CLINEA 0000H 0001H 054CH 0003H 0013H
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
CBLOCKEND 223 7 1357

;;	}
CLINEA 0000H 0000H 054DH 0002H 0002H
_$L169 :

;;	if(Mag_Angle < 0){
CLINEA 0000H 0001H 054EH 0002H 0013H
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$L171
CBLOCK 223 8 1358

;;		Mag_Angle += 360;
CLINEA 0000H 0001H 054FH 0003H 0013H
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
CBLOCKEND 223 8 1360

;;	}
CLINEA 0000H 0000H 0550H 0002H 0002H
_$L171 :
CBLOCKEND 223 2 1361

;;}
CLINEA 0000H 0001H 0551H 0001H 0001H
	pop	xr4
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 223 1 1361
CFUNCTIONEND 223


	rseg $$ClearVariables$main
CFUNCTION 224

_ClearVariables	:
CBLOCK 224 1 1363

;;void ClearVariables(void){
CLINEA 0000H 0001H 0553H 0001H 001AH
CBLOCK 224 2 1363

;;	Temp_out = 0;
CLINEA 0000H 0001H 0554H 0002H 000EH
	mov	er0,	#0 
	st	er0,	NEAR _Temp_out
	st	er0,	NEAR _Temp_out+02h

;;	Mag_Xout = 0;
CLINEA 0000H 0001H 0555H 0002H 000EH
	st	er0,	NEAR _Mag_Xout
	st	er0,	NEAR _Mag_Xout+02h

;;	Mag_Yout = 0;
CLINEA 0000H 0001H 0556H 0002H 000EH
	st	er0,	NEAR _Mag_Yout
	st	er0,	NEAR _Mag_Yout+02h

;;	Mag_Zout = 0;
CLINEA 0000H 0001H 0557H 0002H 000EH
	st	er0,	NEAR _Mag_Zout
	st	er0,	NEAR _Mag_Zout+02h

;;	Mag_Angle = 0;
CLINEA 0000H 0001H 0558H 0002H 000FH
	st	er0,	NEAR _Mag_Angle
	st	er0,	NEAR _Mag_Angle+02h

;;	Ping_timer = 0;
CLINEA 0000H 0001H 0559H 0002H 0010H
	st	er0,	NEAR _Ping_timer

;;	Ping_out = 0;
CLINEA 0000H 0001H 055AH 0002H 000EH
	st	er0,	NEAR _Ping_out
	st	er0,	NEAR _Ping_out+02h

;;	Range_out = 0;
CLINEA 0000H 0001H 055BH 0002H 000FH
	st	er0,	NEAR _Range_out
CBLOCKEND 224 2 1372

;;}
CLINEA 0000H 0001H 055CH 0001H 0001H
	rt
CBLOCKEND 224 1 1372
CFUNCTIONEND 224


	rseg $$ReturnSensorData$main
CFUNCTION 225

_ReturnSensorData	:
CBLOCK 225 1 1374

;;void ReturnSensorData(void){
CLINEA 0000H 0001H 055EH 0001H 001CH
	push	lr
CBLOCK 225 2 1374
CRET 0000H
CLOCAL 47H 0002H 0024H 0002H "i" 02H 00H 01H

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 0560H 0002H 0017H
	mov	er0,	#0 
_$L179 :
CBLOCK 225 3 1377

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 0562H 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 225 3 1379

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0560H 0002H 0017H
	add	er0,	#1 
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L179

;;	sprintf(SensorReturn, "%f,%f,%f,%f,%f,%f,%f,%u", Accel_Xout, Accel_Yout, Accel_Zout, Gyro_Xout, Gyro_Yout, Gyro_Zout, Mag_Angle,Range_out);
CLINEA 0000H 0001H 0565H 0002H 008CH
	l	er0,	NEAR _Range_out
	push	er0
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Gyro_Zout
	l	er2,	NEAR _Gyro_Zout+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Gyro_Yout
	l	er2,	NEAR _Gyro_Yout+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	l	er0,	NEAR _Gyro_Xout
	l	er2,	NEAR _Gyro_Xout+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	mov	r0,	#BYTE1 OFFSET _Accel_Zout
	mov	r1,	#BYTE2 OFFSET _Accel_Zout
	push	er0
	mov	r0,	#BYTE1 OFFSET _Accel_Yout
	mov	r1,	#BYTE2 OFFSET _Accel_Yout
	push	er0
	mov	r0,	#BYTE1 OFFSET _Accel_Xout
	mov	r1,	#BYTE2 OFFSET _Accel_Xout
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S183
	mov	r1,	#BYTE2 OFFSET $$S183
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#44

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 0567H 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 0568H 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 056BH 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 056CH 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 056DH 0002H 0031H
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
CLINEA 0000H 0000H 056EH 0001H 0001H
	bal	_$L188

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 056EH 0002H 0019H
_$L186 :
CBLOCK 225 4 1390

;;		main_clrWDT();
CLINEA 0000H 0001H 056FH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 225 4 1392

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 056EH 0001H 0001H
_$L188 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L186
CBLOCKEND 225 2 1393

;;}
CLINEA 0000H 0001H 0571H 0001H 0001H
	pop	pc
CBLOCKEND 225 1 1393
CFUNCTIONEND 225


	rseg $$ReturnAccelData$main
CFUNCTION 226

_ReturnAccelData	:
CBLOCK 226 1 1395

;;void ReturnAccelData(void){
CLINEA 0000H 0001H 0573H 0001H 001BH
	push	lr
CBLOCK 226 2 1395
CRET 0000H
CLOCAL 47H 0002H 0024H 0002H "i" 02H 00H 01H

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 0575H 0002H 0017H
	mov	er0,	#0 
_$L192 :
CBLOCK 226 3 1398

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 0577H 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 226 3 1400

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0575H 0002H 0017H
	add	er0,	#1 
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L192

;;	sprintf(SensorReturn, "%f,%f,%f", Accel_Xout, Accel_Yout, Accel_Zout);
CLINEA 0000H 0001H 057BH 0002H 0047H
	mov	r0,	#BYTE1 OFFSET _Accel_Zout
	mov	r1,	#BYTE2 OFFSET _Accel_Zout
	push	er0
	mov	r0,	#BYTE1 OFFSET _Accel_Yout
	mov	r1,	#BYTE2 OFFSET _Accel_Yout
	push	er0
	mov	r0,	#BYTE1 OFFSET _Accel_Xout
	mov	r1,	#BYTE2 OFFSET _Accel_Xout
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S196
	mov	r1,	#BYTE2 OFFSET $$S196
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#10

;;	SensorReturn[148] = 0x0D;	//CR
CLINEA 0000H 0001H 057DH 0002H 001FH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;	//LF
CLINEA 0000H 0001H 057EH 0002H 001FH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0581H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 0582H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 0583H 0002H 0031H
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
CLINEA 0000H 0000H 0584H 0001H 0001H
	bal	_$L201

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0584H 0002H 0019H
_$L199 :
CBLOCK 226 4 1412

;;		main_clrWDT();
CLINEA 0000H 0001H 0585H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 226 4 1414

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0584H 0001H 0001H
_$L201 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L199
CBLOCKEND 226 2 1415

;;}
CLINEA 0000H 0001H 0587H 0001H 0001H
	pop	pc
CBLOCKEND 226 1 1415
CFUNCTIONEND 226


	rseg $$ReturnMagData$main
CFUNCTION 227

_ReturnMagData	:
CBLOCK 227 1 1417

;;void ReturnMagData(void){
CLINEA 0000H 0001H 0589H 0001H 0019H
	push	lr
CBLOCK 227 2 1417
CRET 0000H
CLOCAL 47H 0002H 0024H 0002H "i" 02H 00H 01H

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 058BH 0002H 0017H
	mov	er0,	#0 
_$L205 :
CBLOCK 227 3 1420

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 058DH 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 227 3 1422

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 058BH 0002H 0017H
	add	er0,	#1 
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L205

;;	sprintf(SensorReturn, "%f", Mag_Angle);
CLINEA 0000H 0001H 058FH 0002H 0028H
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	mov	r0,	#BYTE1 OFFSET $$S209
	mov	r1,	#BYTE2 OFFSET $$S209
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#12

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 0591H 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 0592H 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0595H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 0596H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 0597H 0002H 0031H
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
CLINEA 0000H 0000H 0598H 0001H 0001H
	bal	_$L214

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0598H 0002H 0019H
_$L212 :
CBLOCK 227 4 1432

;;		main_clrWDT();
CLINEA 0000H 0001H 0599H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 227 4 1434

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0598H 0001H 0001H
_$L214 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L212
CBLOCKEND 227 2 1435

;;}
CLINEA 0000H 0001H 059BH 0001H 0001H
	pop	pc
CBLOCKEND 227 1 1435
CFUNCTIONEND 227


	rseg $$CalibrateMotors$main
CFUNCTION 228

_CalibrateMotors	:
CBLOCK 228 1 1443

;;void CalibrateMotors(void){
CLINEA 0000H 0001H 05A3H 0001H 001BH
CBLOCK 228 2 1443
CLOCAL 4BH 0002H 0000H 0002H "i" 02H 00H 01H

;;	PFRUN = 0;
CLINEA 0000H 0001H 05DFH 0002H 000BH
	rb	0f973h.0

;;	PERUN = 0;
CLINEA 0000H 0001H 05E0H 0002H 000BH
	rb	0f937h.0

;;	PDRUN = 0;
CLINEA 0000H 0001H 05E1H 0002H 000BH
	rb	0f927h.0

;;	PCRUN = 0;
CLINEA 0000H 0001H 05E2H 0002H 000BH
	rb	0f917h.0

;;	PWF0D = PWMSafeDuty; //Can't be running to change
CLINEA 0000H 0001H 05E4H 0002H 0032H
	l	er0,	NEAR _PWMSafeDuty
	st	er0,	0f962h

;;	PWED = PWMSafeDuty;
CLINEA 0000H 0001H 05E5H 0002H 0014H
	st	er0,	0f932h

;;	PWDD = PWMSafeDuty;
CLINEA 0000H 0001H 05E6H 0002H 0014H
	st	er0,	0f922h

;;	PWCD = PWMSafeDuty;
CLINEA 0000H 0001H 05E7H 0002H 0014H
	st	er0,	0f912h

;;	PFRUN = 1;
CLINEA 0000H 0001H 05E9H 0002H 000BH
	sb	0f973h.0

;;	PERUN = 1;
CLINEA 0000H 0001H 05EAH 0002H 000BH
	sb	0f937h.0

;;	PDRUN = 1;
CLINEA 0000H 0001H 05EBH 0002H 000BH
	sb	0f927h.0

;;	PCRUN = 1;
CLINEA 0000H 0001H 05ECH 0002H 000BH
	sb	0f917h.0

;;	Mag_PIDCounter = 0;
CLINEA 0000H 0001H 05EEH 0002H 0014H
	mov	er0,	#0 
	st	er0,	NEAR _Mag_PIDCounter

;;	CF_Gyro_Counter = 0;
CLINEA 0000H 0001H 05EFH 0002H 0015H
	st	er0,	NEAR _CF_Gyro_Counter
	st	er0,	NEAR _CF_Gyro_Counter+02h

;;	Accel_PID_XRollCounter_I = 0;
CLINEA 0000H 0001H 05F0H 0002H 001EH
	st	er0,	NEAR _Accel_PID_XRollCounter_I

;;	Accel_PID_XRollCounter_D = 0;
CLINEA 0000H 0001H 05F1H 0002H 001EH
	st	er0,	NEAR _Accel_PID_XRollCounter_D

;;	Accel_PID_YPitchCounter_I = 0;
CLINEA 0000H 0001H 05F2H 0002H 001FH
	st	er0,	NEAR _Accel_PID_YPitchCounter_I

;;	Accel_PID_YPitchCounter_D = 0;
CLINEA 0000H 0001H 05F3H 0002H 001FH
	st	er0,	NEAR _Accel_PID_YPitchCounter_D

;;	Range_PIDCounter = 0;
CLINEA 0000H 0001H 05F4H 0002H 0016H
	st	er0,	NEAR _Range_PIDCounter
CBLOCKEND 228 2 1544

;;}
CLINEA 0000H 0001H 0608H 0001H 0001H
	rt
CBLOCKEND 228 1 1544
CFUNCTIONEND 228


	rseg $$CalibrateGyro$main
CFUNCTION 229

_CalibrateGyro	:
CBLOCK 229 1 1547

;;void CalibrateGyro(void){
CLINEA 0000H 0001H 060BH 0001H 0019H
	push	lr
	push	er4
CBLOCK 229 2 1547
CRET 0002H
CLOCAL 47H 0002H 0026H 0002H "i" 02H 00H 01H

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 060FH 0002H 0017H
	mov	er0,	#0 
_$L219 :
CBLOCK 229 3 1552

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 0611H 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 229 3 1554

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 060FH 0002H 0017H
	add	er0,	#1 
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L219

;;	sprintf(SensorReturn, "Gyro Calibration: Please Keep the Quad Flat and Return Any 2 chars to Start");
CLINEA 0000H 0001H 0613H 0002H 0066H
	mov	r0,	#BYTE1 OFFSET $$S223
	mov	r1,	#BYTE2 OFFSET $$S223
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#4 

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 0615H 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 0616H 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0618H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 0619H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 061AH 0002H 0031H
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
CLINEA 0000H 0000H 061BH 0001H 0001H
	bal	_$L253

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 061BH 0002H 0019H
_$L226 :
CBLOCK 229 4 1563

;;		NOP1000();
CLINEA 0000H 0001H 061CH 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 061DH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 229 4 1566

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 061BH 0001H 0001H
_$L253 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L226

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0621H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 0622H 0002H 000DH
	bl	_uart_stop

;;	uart_startReceive(RecWorld, 2, _funcUartFin);
CLINEA 0000H 0001H 0623H 0002H 002EH
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#2 
	mov	r0,	#BYTE1 OFFSET _RecWorld
	mov	r1,	#BYTE2 OFFSET _RecWorld
	bl	_uart_startReceive
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0624H 0001H 0001H
	bal	_$L254

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0624H 0002H 0019H
_$L230 :
CBLOCK 229 5 1572

;;		main_clrWDT();
CLINEA 0000H 0001H 0625H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 229 5 1574

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0624H 0001H 0001H
_$L254 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L230

;;	i = 0;
CLINEA 0000H 0001H 0628H 0002H 0007H
	mov	er4,	#0 

;;	EPB3 = 1;					//Enable Accel/Gyro Interrupt Pin
CLINEA 0000H 0001H 062AH 0002H 0030H
	sb	0f011h.7

;;	while(i < 10){
CLINEA 0000H 0000H 062BH 0002H 000FH
_$L234 :
CBLOCK 229 6 1579

;;		if(AccGyro_ReadFlag >= 1){		//Triggered by External Interrupt (flag set in AccelGyroDataReady_ISR)
CLINEA 0000H 0001H 062CH 0003H 0064H
	l	r0,	NEAR _AccGyro_ReadFlag
	cmp	r0,	#01h
	bge	_$M17
	b	_$L236
_$M17 :
CBLOCK 229 7 1580

;;			_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 0630H 0004H 003DH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;			i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 0631H 0004H 0048H
	bl	_i2c_stop

;;			I20MD = 1;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 0632H 0004H 0037H
	sb	0f2a4h.1

;;			i2c_startReceive(MPU6050Address, &AccGyro_ReadData, 1, &AccGyro_Data, 14, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 0633H 0004H 007EH
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

;;			while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0634H 0001H 0001H
	bal	_$L255

;;			while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0634H 0004H 0053H
_$L240 :
CBLOCK 229 8 1588

;;				main_clrWDT();	
CLINEA 0000H 0001H 0635H 0005H 0013H
	bl	_main_clrWDT
CBLOCKEND 229 8 1590

;;			while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0634H 0001H 0001H
_$L255 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L240

;;			Gyro_Xcal += (AccGyro_Data[8]<<8)+(AccGyro_Data[9]);
CLINEA 0000H 0001H 063AH 0004H 0037H
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

;;			Gyro_Ycal += (AccGyro_Data[10]<<8)+(AccGyro_Data[11]);
CLINEA 0000H 0001H 063BH 0004H 0039H
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

;;			Gyro_Zcal += (AccGyro_Data[12]<<8)+(AccGyro_Data[13]);
CLINEA 0000H 0001H 063CH 0004H 0039H
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

;;			Accel_Xcal[0] += (AccGyro_Data[0]<<8)+(AccGyro_Data[1]);
CLINEA 0000H 0001H 063DH 0004H 003BH
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
	l	er0,	NEAR _Accel_Xcal
	l	er2,	NEAR _Accel_Xcal+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Xcal
	st	er2,	NEAR _Accel_Xcal+02h

;;			Accel_Ycal[0] += (AccGyro_Data[2]<<8)+(AccGyro_Data[3]);
CLINEA 0000H 0001H 063EH 0004H 003BH
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
	l	er0,	NEAR _Accel_Ycal
	l	er2,	NEAR _Accel_Ycal+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Ycal
	st	er2,	NEAR _Accel_Ycal+02h

;;			i++;
CLINEA 0000H 0000H 063FH 0004H 0007H
	add	er4,	#1 
CBLOCKEND 229 7 1600

;;		}
CLINEA 0000H 0000H 0640H 0003H 0003H
_$L236 :
CBLOCKEND 229 6 1601

;;	while(i < 10){
CLINEA 0000H 0000H 062BH 0000H 0000H
	cmp	r4,	#0ah
	cmpc	r5,	#00h
	bges	_$M18
	b	_$L234
_$M18 :

;;	Gyro_Xcal /= 10;
CLINEA 0000H 0001H 0642H 0002H 0011H
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
CLINEA 0000H 0001H 0643H 0002H 0011H
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
CLINEA 0000H 0001H 0644H 0002H 0011H
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

;;	Accel_Xcal[0] /= 10;
CLINEA 0000H 0001H 0645H 0002H 0015H
	l	er0,	NEAR _Accel_Xcal
	l	er2,	NEAR _Accel_Xcal+02h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#020h
	mov	r3,	#041h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Xcal
	st	er2,	NEAR _Accel_Xcal+02h

;;	Accel_Ycal[0] /= 10;
CLINEA 0000H 0001H 0646H 0002H 0015H
	l	er0,	NEAR _Accel_Ycal
	l	er2,	NEAR _Accel_Ycal+02h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#020h
	mov	r3,	#041h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_Ycal
	st	er2,	NEAR _Accel_Ycal+02h

;;	EPB3 = 0;					//Enable Accel/Gyro Interrupt Pin
CLINEA 0000H 0001H 0647H 0002H 0030H
	rb	0f011h.7

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 0661H 0002H 0017H
	mov	er0,	#0 
_$L244 :
CBLOCK 229 9 1634

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 0663H 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 229 9 1636

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0661H 0002H 0017H
	add	er0,	#1 
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L244

;;	sprintf(SensorReturn, "Gyro Calibration Complete!");
CLINEA 0000H 0001H 0665H 0002H 0035H
	mov	r0,	#BYTE1 OFFSET $$S248
	mov	r1,	#BYTE2 OFFSET $$S248
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#4 

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 0666H 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 0667H 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0669H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 066AH 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 066BH 0002H 0031H
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
CLINEA 0000H 0000H 066CH 0001H 0001H
	bal	_$L256

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 066CH 0002H 0019H
_$L251 :
CBLOCK 229 10 1644

;;		NOP1000();
CLINEA 0000H 0001H 066DH 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 066EH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 229 10 1647

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 066CH 0001H 0001H
_$L256 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L251
CBLOCKEND 229 2 1648

;;}
CLINEA 0000H 0001H 0670H 0001H 0001H
	pop	er4
	pop	pc
CBLOCKEND 229 1 1648
CFUNCTIONEND 229


	rseg $$CalibrateAccel$main
CFUNCTION 230

_CalibrateAccel	:
CBLOCK 230 1 1650

;;void CalibrateAccel(void){
CLINEA 0000H 0001H 0672H 0001H 001AH
	push	lr
	push	er8
CBLOCK 230 2 1650
CRET 0002H
CLOCAL 47H 0002H 0028H 0002H "i" 02H 00H 01H

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 0676H 0002H 0017H
	mov	er0,	#0 
_$L260 :
CBLOCK 230 3 1655

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 0678H 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 230 3 1657

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0676H 0002H 0017H
	add	er0,	#1 
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L260

;;	sprintf(SensorReturn, "Accel Calibration: Keep Quad Flat! Return any 2 chars to Start");
CLINEA 0000H 0001H 067AH 0002H 0059H
	mov	r0,	#BYTE1 OFFSET $$S264
	mov	r1,	#BYTE2 OFFSET $$S264
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#4 

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 067BH 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 067CH 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 067EH 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 067FH 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 0680H 0002H 0031H
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
CLINEA 0000H 0000H 0681H 0001H 0001H
	bal	_$L350

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0681H 0002H 0019H
_$L267 :
CBLOCK 230 4 1665

;;		NOP1000();
CLINEA 0000H 0001H 0682H 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 0683H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 230 4 1668

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0681H 0001H 0001H
_$L350 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L267

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0686H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 0687H 0002H 000DH
	bl	_uart_stop

;;	uart_startReceive(RecWorld, 2, _funcUartFin);
CLINEA 0000H 0001H 0688H 0002H 002EH
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#2 
	mov	r0,	#BYTE1 OFFSET _RecWorld
	mov	r1,	#BYTE2 OFFSET _RecWorld
	bl	_uart_startReceive
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0689H 0001H 0001H
	bal	_$L351

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0689H 0002H 0019H
_$L271 :
CBLOCK 230 5 1673

;;		main_clrWDT();
CLINEA 0000H 0001H 068AH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 230 5 1675

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0689H 0001H 0001H
_$L351 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0689H 000DH 0011H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L271

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0001H 068DH 0006H 000BH
	mov	er8,	#0 

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 068DH 0013H 0015H
_$L275 :
CBLOCK 230 6 1677

;;		_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 0691H 0003H 003CH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;		i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 0692H 0003H 0047H
	bl	_i2c_stop

;;		I20MD = 1;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 0693H 0003H 0036H
	sb	0f2a4h.1

;;		i2c_startReceive(MPU6050Address, &AccGyro_ReadData, 1, &AccGyro_Data, 14, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 0694H 0003H 007DH
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
CLINEA 0000H 0000H 0695H 0001H 0001H
	bal	_$L352

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0695H 0003H 0052H
_$L281 :
CBLOCK 230 7 1685

;;			main_clrWDT();	
CLINEA 0000H 0001H 0696H 0004H 0012H
	bl	_main_clrWDT
CBLOCKEND 230 7 1687

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0695H 0001H 0001H
_$L352 :

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0695H 000DH 0011H
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L281

;;		Accel_Xcal[1] += (AccGyro_Data[0]<<8)+(AccGyro_Data[1]);
CLINEA 0000H 0001H 069CH 0003H 003AH
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
CLINEA 0000H 0001H 069DH 0003H 003AH
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
CBLOCKEND 230 6 1694

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 068DH 0013H 0015H
	add	er8,	#1 

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 068DH 000DH 0011H
	cmp	r8,	#0ah
	cmpc	r9,	#00h
	bges	_$M20
	b	_$L275
_$M20 :

;;	Accel_Xcal[1] /= 10;
CLINEA 0000H 0001H 069FH 0002H 0015H
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
CLINEA 0000H 0001H 06A0H 0002H 0015H
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
CLINEA 0000H 0001H 06A2H 0002H 0017H
	mov	er0,	#0 
_$L285 :
CBLOCK 230 8 1699

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 06A4H 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 230 8 1701

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 06A2H 0002H 0017H
	add	er0,	#1 

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 06A2H 000DH 0012H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L285

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 06A8H 0006H 000BH
	mov	er0,	#0 

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 06A8H 0014H 0016H
_$L291 :
CBLOCK 230 9 1705

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 06AAH 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 230 9 1707

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 06A8H 0014H 0016H
	add	er0,	#1 

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 06A8H 000DH 0012H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L291

;;	sprintf(SensorReturn, "Accel Calibration: Tilt the Quad 90deg in the ROLL Direction! Return any 2 chars to Start");
CLINEA 0000H 0001H 06ACH 0002H 0074H
	mov	r0,	#BYTE1 OFFSET $$S295
	mov	r1,	#BYTE2 OFFSET $$S295
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#4 

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 06ADH 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 06AEH 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 06B0H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 06B1H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 06B2H 0002H 0031H
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
CLINEA 0000H 0000H 06B3H 0001H 0001H
	bal	_$L353

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 06B3H 0002H 0019H
_$L298 :
CBLOCK 230 10 1715

;;		NOP1000();
CLINEA 0000H 0001H 06B4H 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 06B5H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 230 10 1718

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 06B3H 0001H 0001H
_$L353 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 06B3H 000DH 0012H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L298

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 06B8H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 06B9H 0002H 000DH
	bl	_uart_stop

;;	uart_startReceive(RecWorld, 2, _funcUartFin);
CLINEA 0000H 0001H 06BAH 0002H 002EH
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#2 
	mov	r0,	#BYTE1 OFFSET _RecWorld
	mov	r1,	#BYTE2 OFFSET _RecWorld
	bl	_uart_startReceive
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 06BBH 0001H 0001H
	bal	_$L354

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 06BBH 0002H 0019H
_$L302 :
CBLOCK 230 11 1723

;;		main_clrWDT();
CLINEA 0000H 0001H 06BCH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 230 11 1725

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 06BBH 0001H 0001H
_$L354 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 06BBH 000DH 0011H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L302

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0001H 06BFH 0006H 000BH
	mov	er8,	#0 

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 06BFH 0013H 0015H
_$L306 :
CBLOCK 230 12 1727

;;		_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 06C3H 0003H 003CH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;		i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 06C4H 0003H 0047H
	bl	_i2c_stop

;;		I20MD = 1;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 06C5H 0003H 0036H
	sb	0f2a4h.1

;;		i2c_startReceive(MPU6050Address, &AccGyro_ReadData, 1, &AccGyro_Data, 14, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 06C6H 0003H 007DH
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
CLINEA 0000H 0000H 06C7H 0001H 0001H
	bal	_$L355

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 06C7H 0003H 0052H
_$L312 :
CBLOCK 230 13 1735

;;			main_clrWDT();	
CLINEA 0000H 0001H 06C8H 0004H 0012H
	bl	_main_clrWDT
CBLOCKEND 230 13 1737

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 06C7H 0001H 0001H
_$L355 :

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 06C7H 000DH 0011H
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L312

;;		Accel_Zcal[1] += (AccGyro_Data[4]<<8)+(AccGyro_Data[5]);
CLINEA 0000H 0001H 06CEH 0003H 003AH
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
CLINEA 0000H 0001H 06CFH 0003H 003AH
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
CBLOCKEND 230 12 1744

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 06BFH 0013H 0015H
	add	er8,	#1 

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 06BFH 000DH 0011H
	cmp	r8,	#0ah
	cmpc	r9,	#00h
	bges	_$M21
	b	_$L306
_$M21 :

;;	Accel_Zcal[1] /= 10;
CLINEA 0000H 0001H 06D1H 0002H 0015H
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
CLINEA 0000H 0001H 06D2H 0002H 0015H
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
CLINEA 0000H 0001H 06D5H 0002H 0017H
	mov	er0,	#0 
_$L316 :
CBLOCK 230 14 1750

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 06D7H 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 230 14 1752

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 06D5H 0002H 0017H
	add	er0,	#1 

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 06D5H 000DH 0011H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L316

;;	sprintf(SensorReturn, "Accel Calibration: Tilt the Quad 90deg in the PITCH direction! Return any 2 chars to Start");
CLINEA 0000H 0001H 06D9H 0002H 0075H
	mov	r0,	#BYTE1 OFFSET $$S320
	mov	r1,	#BYTE2 OFFSET $$S320
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#4 

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 06DAH 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 06DBH 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 06DDH 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 06DEH 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 06DFH 0002H 0031H
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
CLINEA 0000H 0000H 06E0H 0001H 0001H
	bal	_$L356

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 06E0H 0002H 0019H
_$L323 :
CBLOCK 230 15 1760

;;		NOP1000();
CLINEA 0000H 0001H 06E1H 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 06E2H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 230 15 1763

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 06E0H 0001H 0001H
_$L356 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 06E0H 000DH 0011H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L323

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 06E5H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 06E6H 0002H 000DH
	bl	_uart_stop

;;	uart_startReceive(RecWorld, 2, _funcUartFin);
CLINEA 0000H 0001H 06E7H 0002H 002EH
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#2 
	mov	r0,	#BYTE1 OFFSET _RecWorld
	mov	r1,	#BYTE2 OFFSET _RecWorld
	bl	_uart_startReceive
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 06E8H 0001H 0001H
	bal	_$L357

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 06E8H 0002H 0019H
_$L327 :
CBLOCK 230 16 1768

;;		main_clrWDT();
CLINEA 0000H 0001H 06E9H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 230 16 1770

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 06E8H 0001H 0001H
_$L357 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 06E8H 000DH 0011H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L327

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0001H 06ECH 0006H 000BH
	mov	er8,	#0 

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 06ECH 0013H 0015H
_$L331 :
CBLOCK 230 17 1772

;;		_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 06F0H 0003H 003CH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;		i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 06F1H 0003H 0047H
	bl	_i2c_stop

;;		I20MD = 1;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 06F2H 0003H 0036H
	sb	0f2a4h.1

;;		i2c_startReceive(MPU6050Address, &AccGyro_ReadData, 1, &AccGyro_Data, 14, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 06F3H 0003H 007DH
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
CLINEA 0000H 0000H 06F4H 0001H 0001H
	bal	_$L358

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 06F4H 0003H 0052H
_$L337 :
CBLOCK 230 18 1780

;;			main_clrWDT();	
CLINEA 0000H 0001H 06F5H 0004H 0012H
	bl	_main_clrWDT
CBLOCKEND 230 18 1782

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 06F4H 0001H 0001H
_$L358 :

;;		while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 06F4H 000DH 0011H
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L337

;;		Accel_Zcal[2] += (AccGyro_Data[4]<<8)+(AccGyro_Data[5]);
CLINEA 0000H 0001H 06FBH 0003H 003AH
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
CLINEA 0000H 0001H 06FCH 0003H 003AH
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
CBLOCKEND 230 17 1789

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 06ECH 0013H 0015H
	add	er8,	#1 

;;	for(i = 0; i<10; i++){
CLINEA 0000H 0000H 06ECH 000DH 0011H
	cmp	r8,	#0ah
	cmpc	r9,	#00h
	bges	_$M22
	b	_$L331
_$M22 :

;;	Accel_Zcal[2] /= 10;
CLINEA 0000H 0001H 06FEH 0002H 0015H
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
CLINEA 0000H 0001H 06FFH 0002H 0015H
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
CLINEA 0000H 0001H 0702H 0002H 0031H
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
CLINEA 0000H 0001H 0703H 0002H 0031H
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
CLINEA 0000H 0001H 0704H 0002H 0031H
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
CLINEA 0000H 0001H 0707H 0002H 0017H
	mov	er0,	#0 
_$L341 :
CBLOCK 230 19 1800

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 0709H 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 230 19 1802

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0707H 0002H 0017H
	add	er0,	#1 

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0707H 000DH 0011H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L341

;;	sprintf(SensorReturn, "Accel Calibration Complete!");
CLINEA 0000H 0001H 070BH 0002H 0036H
	mov	r0,	#BYTE1 OFFSET $$S345
	mov	r1,	#BYTE2 OFFSET $$S345
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#4 

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 070CH 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 070DH 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 070FH 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 0710H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 0711H 0002H 0031H
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
CLINEA 0000H 0000H 0712H 0001H 0001H
	bal	_$L359

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0712H 0002H 0019H
_$L348 :
CBLOCK 230 20 1810

;;		NOP1000();
CLINEA 0000H 0001H 0713H 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 0714H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 230 20 1813

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0712H 0001H 0001H
_$L359 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0712H 000DH 0011H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L348
CBLOCKEND 230 2 1814

;;}
CLINEA 0000H 0001H 0716H 0001H 0001H
	pop	er8
	pop	pc
CBLOCKEND 230 1 1814
CFUNCTIONEND 230


	rseg $$SerialOutCoefficients$main
CFUNCTION 231

_SerialOutCoefficients	:
CBLOCK 231 1 1818

;;{
CLINEA 0000H 0001H 071AH 0001H 0001H
	push	lr
CBLOCK 231 2 1818
CRET 0000H
CLOCAL 47H 0002H 0024H 0002H "j" 02H 00H 01H

;;		for(j = 0; j<150; j++)
CLINEA 0000H 0001H 071DH 0003H 0018H
	mov	er0,	#0 
_$L363 :
CBLOCK 231 3 1822

;;			SensorReturn[j] = 0x20;
CLINEA 0000H 0001H 071FH 0004H 001AH
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 231 3 1824

;;		for(j = 0; j<150; j++)
CLINEA 0000H 0000H 071DH 0003H 0018H
	add	er0,	#1 

;;		for(j = 0; j<150; j++)
CLINEA 0000H 0000H 071DH 000DH 0011H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L363

;;		sprintf(SensorReturn, "Current Settings: kp=%f,ki=%f,kd=%f,a1=%f,a2=%f,Pb=%u,Db=%u", Accel_PID_XRoll_kp, Accel_PID_XRoll_ki, Accel_PID_XRoll_kd, CF_HPF, CF_LPF,Accel_PID_PBounds_Var_Pos,Accel_PID_DBounds_Var_Pos);
CLINEA 0000H 0001H 0722H 0003H 00D7H
	l	er0,	NEAR _Accel_PID_DBounds_Var_Pos
	push	er0
	l	er0,	NEAR _Accel_PID_PBounds_Var_Pos
	push	er0
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
	mov	r0,	#BYTE1 OFFSET $$S367
	mov	r1,	#BYTE2 OFFSET $$S367
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#48

;;		SensorReturn[148] = 0x0D;	//CR
CLINEA 0000H 0001H 0724H 0003H 0020H
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;		SensorReturn[149] = 0x0A;	//LF
CLINEA 0000H 0001H 0725H 0003H 0020H
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 0728H 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 0729H 0003H 000EH
	bl	_uart_stop

;;		uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 072AH 0003H 0032H
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
CLINEA 0000H 0000H 072BH 0001H 0001H
	bal	_$L372

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 072BH 0003H 001AH
_$L370 :
CBLOCK 231 4 1835

;;			main_clrWDT();
CLINEA 0000H 0001H 072CH 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 231 4 1837

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 072BH 0001H 0001H
_$L372 :

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 072BH 000DH 0011H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L370
CBLOCKEND 231 2 1838

;;}
CLINEA 0000H 0001H 072EH 0001H 0001H
	pop	pc
CBLOCKEND 231 1 1838
CFUNCTIONEND 231


	rseg $$UARTTunePID$main
CFUNCTION 232

_UARTTunePID	:
CBLOCK 232 1 1842

;;{
CLINEA 0000H 0001H 0732H 0001H 0001H
	push	lr
CBLOCK 232 2 1842
CRET 0000H
CLOCAL 47H 0002H 0024H 0002H "k" 02H 00H 01H
CLOCAL 4BH 0002H 0000H 0002H "i" 02H 00H 01H
CLOCAL 4BH 0002H 0000H 0002H "j" 02H 00H 01H

;;		for (k=0;k<7;k++)
CLINEA 0000H 0001H 0739H 0008H 000BH
	mov	er0,	#0 

;;		for (k=0;k<7;k++)
CLINEA 0000H 0000H 0739H 0010H 0012H
_$L377 :
CBLOCK 232 3 1850

;;			RecWorld[k] = 0;	//ie: to set ki to 1.5 =>send ki1.50000
CLINEA 0000H 0001H 073BH 0004H 003BH
	mov	r2,	#00h
	st	r2,	NEAR _RecWorld[er0]
CBLOCKEND 232 3 1852

;;		for (k=0;k<7;k++)
CLINEA 0000H 0000H 0739H 0010H 0012H
	add	er0,	#1 

;;		for (k=0;k<7;k++)
CLINEA 0000H 0000H 0739H 000CH 000FH
	cmp	r0,	#07h
	cmpc	r1,	#00h
	blts	_$L377

;;		ETM8 = 0; //Turn OFF TIMER8/9 ISR for this function...
CLINEA 0000H 0001H 073EH 0003H 0038H
	rb	0f013h.2

;;		ETM9 = 0; //Turn OFF TIMER8/9 ISR for this function...
CLINEA 0000H 0001H 073FH 0003H 0038H
	rb	0f013h.3

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 0742H 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 0743H 0003H 000EH
	bl	_uart_stop

;;		uart_startReceive(RecWorld, 8, _funcUartFin);
CLINEA 0000H 0001H 0744H 0003H 002FH
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#8 
	mov	r0,	#BYTE1 OFFSET _RecWorld
	mov	r1,	#BYTE2 OFFSET _RecWorld
	bl	_uart_startReceive
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0745H 0001H 0001H
	bal	_$L428

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0745H 0003H 001AH
_$L383 :
CBLOCK 232 4 1861

;;			main_clrWDT();
CLINEA 0000H 0001H 0746H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 232 4 1863

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0745H 0001H 0001H
_$L428 :

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0745H 000CH 000FH
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L383

;;		if(RecWorld[0] == 0x70){		//if RECWORLD == "pi"
CLINEA 0000H 0001H 0775H 0003H 0031H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#070h
	beq	_$M25
	b	_$L387
_$M25 :
CBLOCK 232 5 1909

;;			if(RecWorld[1] == 0x69){
CLINEA 0000H 0001H 0776H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#069h
	beq	_$M26
	b	_$L387
_$M26 :
CBLOCK 232 6 1910

;;				NewVar_Str[0] = RecWorld[2];
CLINEA 0000H 0001H 0777H 0005H 0020H
	l	r0,	NEAR _RecWorld+02h
	st	r0,	NEAR _NewVar_Str

;;				NewVar_Str[1] = RecWorld[3];
CLINEA 0000H 0001H 0778H 0005H 0020H
	l	r0,	NEAR _RecWorld+03h
	st	r0,	NEAR _NewVar_Str+01h

;;				NewVar_Str[2] = RecWorld[4];
CLINEA 0000H 0001H 0779H 0005H 0020H
	l	r0,	NEAR _RecWorld+04h
	st	r0,	NEAR _NewVar_Str+02h

;;				NewVar_Str[3] = RecWorld[5];
CLINEA 0000H 0001H 077AH 0005H 0020H
	l	r0,	NEAR _RecWorld+05h
	st	r0,	NEAR _NewVar_Str+03h

;;				NewVar_Str[4] = RecWorld[6];
CLINEA 0000H 0001H 077BH 0005H 0020H
	l	r0,	NEAR _RecWorld+06h
	st	r0,	NEAR _NewVar_Str+04h

;;				NewVar_Str[5] = RecWorld[7];
CLINEA 0000H 0001H 077CH 0005H 0020H
	l	r0,	NEAR _RecWorld+07h
	st	r0,	NEAR _NewVar_Str+05h

;;				sscanf(NewVar_Str, "%f", &NewVar);
CLINEA 0000H 0001H 077DH 0005H 0026H
	mov	r0,	#BYTE1 OFFSET _NewVar
	mov	r1,	#BYTE2 OFFSET _NewVar
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S209
	mov	r1,	#BYTE2 OFFSET $$S209
	push	er0
	mov	r0,	#BYTE1 OFFSET _NewVar_Str
	mov	r1,	#BYTE2 OFFSET _NewVar_Str
	push	er0
	bl	_sscanf_nn
	add	sp,	#6 

;;				Accel_PID_XRoll_kp = NewVar;
CLINEA 0000H 0001H 077EH 0005H 0020H
	l	er0,	NEAR _NewVar
	l	er2,	NEAR _NewVar+02h
	st	er0,	NEAR _Accel_PID_XRoll_kp
	st	er2,	NEAR _Accel_PID_XRoll_kp+02h

;;				Accel_PID_YPitch_kp = NewVar;
CLINEA 0000H 0001H 077FH 0005H 0021H
	st	er0,	NEAR _Accel_PID_YPitch_kp
	st	er2,	NEAR _Accel_PID_YPitch_kp+02h

;;				Accel_PID_XRoll_ki = NewVar/2;
CLINEA 0000H 0001H 0780H 0005H 0022H
	push	xr0
	mov	er0,	#0 
	mov	r2,	#00h
	mov	r3,	#040h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_PID_XRoll_ki
	st	er2,	NEAR _Accel_PID_XRoll_ki+02h

;;				Accel_PID_YPitch_ki = NewVar/2;
CLINEA 0000H 0001H 0781H 0005H 0023H
	l	er0,	NEAR _NewVar
	l	er2,	NEAR _NewVar+02h
	push	xr0
	mov	er0,	#0 
	mov	r2,	#00h
	mov	r3,	#040h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_PID_YPitch_ki
	st	er2,	NEAR _Accel_PID_YPitch_ki+02h
CBLOCKEND 232 6 1922

;;			}
CLINEA 0000H 0000H 0782H 0004H 0004H
_$L387 :
CBLOCKEND 232 5 1923

;;		if(RecWorld[0] == 0x70){		//if RECWORLD == "pb"
CLINEA 0000H 0001H 0785H 0003H 0031H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#070h
	beq	_$M27
	b	_$L391
_$M27 :
CBLOCK 232 7 1925

;;			if(RecWorld[1] == 0x62){
CLINEA 0000H 0001H 0786H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#062h
	bne	_$L391
CBLOCK 232 8 1926

;;				NewVar_Str[0] = RecWorld[2];
CLINEA 0000H 0001H 0787H 0005H 0020H
	l	r0,	NEAR _RecWorld+02h
	st	r0,	NEAR _NewVar_Str

;;				NewVar_Str[1] = RecWorld[3];
CLINEA 0000H 0001H 0788H 0005H 0020H
	l	r0,	NEAR _RecWorld+03h
	st	r0,	NEAR _NewVar_Str+01h

;;				NewVar_Str[2] = RecWorld[4];
CLINEA 0000H 0001H 0789H 0005H 0020H
	l	r0,	NEAR _RecWorld+04h
	st	r0,	NEAR _NewVar_Str+02h

;;				NewVar_Str[3] = RecWorld[5];
CLINEA 0000H 0001H 078AH 0005H 0020H
	l	r0,	NEAR _RecWorld+05h
	st	r0,	NEAR _NewVar_Str+03h

;;				NewVar_Str[4] = RecWorld[6];
CLINEA 0000H 0001H 078BH 0005H 0020H
	l	r0,	NEAR _RecWorld+06h
	st	r0,	NEAR _NewVar_Str+04h

;;				NewVar_Str[5] = RecWorld[7];
CLINEA 0000H 0001H 078CH 0005H 0020H
	l	r0,	NEAR _RecWorld+07h
	st	r0,	NEAR _NewVar_Str+05h

;;				sscanf(NewVar_Str, "%f", &NewVar);
CLINEA 0000H 0001H 078DH 0005H 0026H
	mov	r0,	#BYTE1 OFFSET _NewVar
	mov	r1,	#BYTE2 OFFSET _NewVar
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S209
	mov	r1,	#BYTE2 OFFSET $$S209
	push	er0
	mov	r0,	#BYTE1 OFFSET _NewVar_Str
	mov	r1,	#BYTE2 OFFSET _NewVar_Str
	push	er0
	bl	_sscanf_nn
	add	sp,	#6 

;;				Accel_PID_PBounds_Var_Pos = NewVar;
CLINEA 0000H 0001H 078EH 0005H 0027H
	l	er0,	NEAR _NewVar
	l	er2,	NEAR _NewVar+02h
	push	xr0
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	NEAR _Accel_PID_PBounds_Var_Pos

;;				Accel_PID_PBounds_Var_Neg = -1* NewVar;
CLINEA 0000H 0001H 078FH 0005H 002BH
	l	er0,	NEAR _NewVar
	push	xr0
	mov	er0,	#0 
	mov	r2,	#080h
	mov	r3,	#0bfh
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	NEAR _Accel_PID_PBounds_Var_Neg
CBLOCKEND 232 8 1937

;;			}
CLINEA 0000H 0000H 0791H 0004H 0004H
_$L391 :
CBLOCKEND 232 7 1938

;;		if(RecWorld[0] == 0x64){			//if RECWORLD == "db"
CLINEA 0000H 0001H 0794H 0003H 0032H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#064h
	beq	_$M28
	b	_$L395
_$M28 :
CBLOCK 232 9 1940

;;			if(RecWorld[1] == 0x62){
CLINEA 0000H 0001H 0795H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#062h
	bne	_$L395
CBLOCK 232 10 1941

;;				NewVar_Str[0] = RecWorld[2];
CLINEA 0000H 0001H 0796H 0005H 0020H
	l	r0,	NEAR _RecWorld+02h
	st	r0,	NEAR _NewVar_Str

;;				NewVar_Str[1] = RecWorld[3];
CLINEA 0000H 0001H 0797H 0005H 0020H
	l	r0,	NEAR _RecWorld+03h
	st	r0,	NEAR _NewVar_Str+01h

;;				NewVar_Str[2] = RecWorld[4];
CLINEA 0000H 0001H 0798H 0005H 0020H
	l	r0,	NEAR _RecWorld+04h
	st	r0,	NEAR _NewVar_Str+02h

;;				NewVar_Str[3] = RecWorld[5];
CLINEA 0000H 0001H 0799H 0005H 0020H
	l	r0,	NEAR _RecWorld+05h
	st	r0,	NEAR _NewVar_Str+03h

;;				NewVar_Str[4] = RecWorld[6];
CLINEA 0000H 0001H 079AH 0005H 0020H
	l	r0,	NEAR _RecWorld+06h
	st	r0,	NEAR _NewVar_Str+04h

;;				NewVar_Str[5] = RecWorld[7];
CLINEA 0000H 0001H 079BH 0005H 0020H
	l	r0,	NEAR _RecWorld+07h
	st	r0,	NEAR _NewVar_Str+05h

;;				sscanf(NewVar_Str, "%f", &NewVar);
CLINEA 0000H 0001H 079CH 0005H 0026H
	mov	r0,	#BYTE1 OFFSET _NewVar
	mov	r1,	#BYTE2 OFFSET _NewVar
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S209
	mov	r1,	#BYTE2 OFFSET $$S209
	push	er0
	mov	r0,	#BYTE1 OFFSET _NewVar_Str
	mov	r1,	#BYTE2 OFFSET _NewVar_Str
	push	er0
	bl	_sscanf_nn
	add	sp,	#6 

;;				Accel_PID_DBounds_Var_Pos = NewVar;
CLINEA 0000H 0001H 079DH 0005H 0027H
	l	er0,	NEAR _NewVar
	l	er2,	NEAR _NewVar+02h
	push	xr0
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	NEAR _Accel_PID_DBounds_Var_Pos

;;				Accel_PID_DBounds_Var_Neg = -1 * NewVar;
CLINEA 0000H 0001H 079EH 0005H 002CH
	l	er0,	NEAR _NewVar
	push	xr0
	mov	er0,	#0 
	mov	r2,	#080h
	mov	r3,	#0bfh
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	NEAR _Accel_PID_DBounds_Var_Neg
CBLOCKEND 232 10 1952

;;			}
CLINEA 0000H 0000H 07A0H 0004H 0004H
_$L395 :
CBLOCKEND 232 9 1953

;;		if(RecWorld[0] == 0x6B){			//if RECWORLD == "kp"
CLINEA 0000H 0001H 07A3H 0003H 0032H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#06bh
	bne	_$L399
CBLOCK 232 11 1955

;;			if(RecWorld[1] == 0x70){
CLINEA 0000H 0001H 07A4H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#070h
	bne	_$L399
CBLOCK 232 12 1956

;;				NewVar_Str[0] = RecWorld[2];
CLINEA 0000H 0001H 07A5H 0005H 0020H
	l	r0,	NEAR _RecWorld+02h
	st	r0,	NEAR _NewVar_Str

;;				NewVar_Str[1] = RecWorld[3];
CLINEA 0000H 0001H 07A6H 0005H 0020H
	l	r0,	NEAR _RecWorld+03h
	st	r0,	NEAR _NewVar_Str+01h

;;				NewVar_Str[2] = RecWorld[4];
CLINEA 0000H 0001H 07A7H 0005H 0020H
	l	r0,	NEAR _RecWorld+04h
	st	r0,	NEAR _NewVar_Str+02h

;;				NewVar_Str[3] = RecWorld[5];
CLINEA 0000H 0001H 07A8H 0005H 0020H
	l	r0,	NEAR _RecWorld+05h
	st	r0,	NEAR _NewVar_Str+03h

;;				NewVar_Str[4] = RecWorld[6];
CLINEA 0000H 0001H 07A9H 0005H 0020H
	l	r0,	NEAR _RecWorld+06h
	st	r0,	NEAR _NewVar_Str+04h

;;				NewVar_Str[5] = RecWorld[7];
CLINEA 0000H 0001H 07AAH 0005H 0020H
	l	r0,	NEAR _RecWorld+07h
	st	r0,	NEAR _NewVar_Str+05h

;;				sscanf(NewVar_Str, "%f", &NewVar);
CLINEA 0000H 0001H 07ABH 0005H 0026H
	mov	r0,	#BYTE1 OFFSET _NewVar
	mov	r1,	#BYTE2 OFFSET _NewVar
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S209
	mov	r1,	#BYTE2 OFFSET $$S209
	push	er0
	mov	r0,	#BYTE1 OFFSET _NewVar_Str
	mov	r1,	#BYTE2 OFFSET _NewVar_Str
	push	er0
	bl	_sscanf_nn
	add	sp,	#6 

;;				Accel_PID_XRoll_kp = NewVar;
CLINEA 0000H 0001H 07ACH 0005H 0020H
	l	er0,	NEAR _NewVar
	l	er2,	NEAR _NewVar+02h
	st	er0,	NEAR _Accel_PID_XRoll_kp
	st	er2,	NEAR _Accel_PID_XRoll_kp+02h

;;				Accel_PID_YPitch_kp = NewVar;
CLINEA 0000H 0001H 07ADH 0005H 0021H
	st	er0,	NEAR _Accel_PID_YPitch_kp
	st	er2,	NEAR _Accel_PID_YPitch_kp+02h
CBLOCKEND 232 12 1966

;;			}
CLINEA 0000H 0000H 07AEH 0004H 0004H
_$L399 :
CBLOCKEND 232 11 1967

;;		if(RecWorld[0] == 0x6B){			//if RECWORLD == "ki"
CLINEA 0000H 0001H 07B1H 0003H 0032H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#06bh
	bne	_$L403
CBLOCK 232 13 1969

;;			if(RecWorld[1] == 0x69){
CLINEA 0000H 0001H 07B2H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#069h
	bne	_$L403
CBLOCK 232 14 1970

;;				NewVar_Str[0] = RecWorld[2];
CLINEA 0000H 0001H 07B3H 0005H 0020H
	l	r0,	NEAR _RecWorld+02h
	st	r0,	NEAR _NewVar_Str

;;				NewVar_Str[1] = RecWorld[3];
CLINEA 0000H 0001H 07B4H 0005H 0020H
	l	r0,	NEAR _RecWorld+03h
	st	r0,	NEAR _NewVar_Str+01h

;;				NewVar_Str[2] = RecWorld[4];
CLINEA 0000H 0001H 07B5H 0005H 0020H
	l	r0,	NEAR _RecWorld+04h
	st	r0,	NEAR _NewVar_Str+02h

;;				NewVar_Str[3] = RecWorld[5];
CLINEA 0000H 0001H 07B6H 0005H 0020H
	l	r0,	NEAR _RecWorld+05h
	st	r0,	NEAR _NewVar_Str+03h

;;				NewVar_Str[4] = RecWorld[6];
CLINEA 0000H 0001H 07B7H 0005H 0020H
	l	r0,	NEAR _RecWorld+06h
	st	r0,	NEAR _NewVar_Str+04h

;;				NewVar_Str[5] = RecWorld[7];
CLINEA 0000H 0001H 07B8H 0005H 0020H
	l	r0,	NEAR _RecWorld+07h
	st	r0,	NEAR _NewVar_Str+05h

;;				sscanf(NewVar_Str, "%f", &NewVar);
CLINEA 0000H 0001H 07B9H 0005H 0026H
	mov	r0,	#BYTE1 OFFSET _NewVar
	mov	r1,	#BYTE2 OFFSET _NewVar
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S209
	mov	r1,	#BYTE2 OFFSET $$S209
	push	er0
	mov	r0,	#BYTE1 OFFSET _NewVar_Str
	mov	r1,	#BYTE2 OFFSET _NewVar_Str
	push	er0
	bl	_sscanf_nn
	add	sp,	#6 

;;				Accel_PID_XRoll_ki = NewVar;
CLINEA 0000H 0001H 07BAH 0005H 0020H
	l	er0,	NEAR _NewVar
	l	er2,	NEAR _NewVar+02h
	st	er0,	NEAR _Accel_PID_XRoll_ki
	st	er2,	NEAR _Accel_PID_XRoll_ki+02h

;;				Accel_PID_YPitch_ki = NewVar;
CLINEA 0000H 0001H 07BBH 0005H 0021H
	st	er0,	NEAR _Accel_PID_YPitch_ki
	st	er2,	NEAR _Accel_PID_YPitch_ki+02h
CBLOCKEND 232 14 1980

;;			}
CLINEA 0000H 0000H 07BCH 0004H 0004H
_$L403 :
CBLOCKEND 232 13 1981

;;		if(RecWorld[0] == 0x6B){			//if RECWORLD == "kd"
CLINEA 0000H 0001H 07BFH 0003H 0032H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#06bh
	bne	_$L407
CBLOCK 232 15 1983

;;			if(RecWorld[1] == 0x64){
CLINEA 0000H 0001H 07C0H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#064h
	bne	_$L407
CBLOCK 232 16 1984

;;				NewVar_Str[0] = RecWorld[2];
CLINEA 0000H 0001H 07C1H 0005H 0020H
	l	r0,	NEAR _RecWorld+02h
	st	r0,	NEAR _NewVar_Str

;;				NewVar_Str[1] = RecWorld[3];
CLINEA 0000H 0001H 07C2H 0005H 0020H
	l	r0,	NEAR _RecWorld+03h
	st	r0,	NEAR _NewVar_Str+01h

;;				NewVar_Str[2] = RecWorld[4];
CLINEA 0000H 0001H 07C3H 0005H 0020H
	l	r0,	NEAR _RecWorld+04h
	st	r0,	NEAR _NewVar_Str+02h

;;				NewVar_Str[3] = RecWorld[5];
CLINEA 0000H 0001H 07C4H 0005H 0020H
	l	r0,	NEAR _RecWorld+05h
	st	r0,	NEAR _NewVar_Str+03h

;;				NewVar_Str[4] = RecWorld[6];
CLINEA 0000H 0001H 07C5H 0005H 0020H
	l	r0,	NEAR _RecWorld+06h
	st	r0,	NEAR _NewVar_Str+04h

;;				NewVar_Str[5] = RecWorld[7];
CLINEA 0000H 0001H 07C6H 0005H 0020H
	l	r0,	NEAR _RecWorld+07h
	st	r0,	NEAR _NewVar_Str+05h

;;				sscanf(NewVar_Str, "%f", &NewVar);
CLINEA 0000H 0001H 07C7H 0005H 0026H
	mov	r0,	#BYTE1 OFFSET _NewVar
	mov	r1,	#BYTE2 OFFSET _NewVar
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S209
	mov	r1,	#BYTE2 OFFSET $$S209
	push	er0
	mov	r0,	#BYTE1 OFFSET _NewVar_Str
	mov	r1,	#BYTE2 OFFSET _NewVar_Str
	push	er0
	bl	_sscanf_nn
	add	sp,	#6 

;;				Accel_PID_XRoll_kd = NewVar;
CLINEA 0000H 0001H 07C8H 0005H 0020H
	l	er0,	NEAR _NewVar
	l	er2,	NEAR _NewVar+02h
	st	er0,	NEAR _Accel_PID_XRoll_kd
	st	er2,	NEAR _Accel_PID_XRoll_kd+02h

;;				Accel_PID_YPitch_kd = NewVar;
CLINEA 0000H 0001H 07C9H 0005H 0021H
	st	er0,	NEAR _Accel_PID_YPitch_kd
	st	er2,	NEAR _Accel_PID_YPitch_kd+02h
CBLOCKEND 232 16 1994

;;			}
CLINEA 0000H 0000H 07CAH 0004H 0004H
_$L407 :
CBLOCKEND 232 15 1995

;;		if(RecWorld[0] == 0x61){			//if RECWORLD == "a1"
CLINEA 0000H 0001H 07CDH 0003H 0032H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#061h
	beq	_$M29
	b	_$L411
_$M29 :
CBLOCK 232 17 1997

;;			if(RecWorld[1] == 0x31){
CLINEA 0000H 0001H 07CEH 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#031h
	bne	_$L411
CBLOCK 232 18 1998

;;				NewVar_Str[0] = RecWorld[2];
CLINEA 0000H 0001H 07CFH 0005H 0020H
	l	r0,	NEAR _RecWorld+02h
	st	r0,	NEAR _NewVar_Str

;;				NewVar_Str[1] = RecWorld[3];
CLINEA 0000H 0001H 07D0H 0005H 0020H
	l	r0,	NEAR _RecWorld+03h
	st	r0,	NEAR _NewVar_Str+01h

;;				NewVar_Str[2] = RecWorld[4];
CLINEA 0000H 0001H 07D1H 0005H 0020H
	l	r0,	NEAR _RecWorld+04h
	st	r0,	NEAR _NewVar_Str+02h

;;				NewVar_Str[3] = RecWorld[5];
CLINEA 0000H 0001H 07D2H 0005H 0020H
	l	r0,	NEAR _RecWorld+05h
	st	r0,	NEAR _NewVar_Str+03h

;;				NewVar_Str[4] = RecWorld[6];
CLINEA 0000H 0001H 07D3H 0005H 0020H
	l	r0,	NEAR _RecWorld+06h
	st	r0,	NEAR _NewVar_Str+04h

;;				NewVar_Str[5] = RecWorld[7];
CLINEA 0000H 0001H 07D4H 0005H 0020H
	l	r0,	NEAR _RecWorld+07h
	st	r0,	NEAR _NewVar_Str+05h

;;				sscanf(NewVar_Str, "%f", &NewVar);
CLINEA 0000H 0001H 07D5H 0005H 0026H
	mov	r0,	#BYTE1 OFFSET _NewVar
	mov	r1,	#BYTE2 OFFSET _NewVar
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S209
	mov	r1,	#BYTE2 OFFSET $$S209
	push	er0
	mov	r0,	#BYTE1 OFFSET _NewVar_Str
	mov	r1,	#BYTE2 OFFSET _NewVar_Str
	push	er0
	bl	_sscanf_nn
	add	sp,	#6 

;;				CF_HPF = NewVar;
CLINEA 0000H 0001H 07D6H 0005H 0014H
	l	er0,	NEAR _NewVar
	l	er2,	NEAR _NewVar+02h
	st	er0,	NEAR _CF_HPF
	st	er2,	NEAR _CF_HPF+02h

;;				CF_LPF = 1-NewVar;
CLINEA 0000H 0001H 07D7H 0005H 0016H
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
CBLOCKEND 232 18 2008

;;			}
CLINEA 0000H 0000H 07D8H 0004H 0004H
_$L411 :
CBLOCKEND 232 17 2009

;;		if(RecWorld[0] == 0x61){			//if RECWORLD == "a2"
CLINEA 0000H 0001H 07DBH 0003H 0032H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#061h
	beq	_$M30
	b	_$L415
_$M30 :
CBLOCK 232 19 2011

;;			if(RecWorld[1] == 0x32){
CLINEA 0000H 0001H 07DCH 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#032h
	bne	_$L415
CBLOCK 232 20 2012

;;				NewVar_Str[0] = RecWorld[2];
CLINEA 0000H 0001H 07DDH 0005H 0020H
	l	r0,	NEAR _RecWorld+02h
	st	r0,	NEAR _NewVar_Str

;;				NewVar_Str[1] = RecWorld[3];
CLINEA 0000H 0001H 07DEH 0005H 0020H
	l	r0,	NEAR _RecWorld+03h
	st	r0,	NEAR _NewVar_Str+01h

;;				NewVar_Str[2] = RecWorld[4];
CLINEA 0000H 0001H 07DFH 0005H 0020H
	l	r0,	NEAR _RecWorld+04h
	st	r0,	NEAR _NewVar_Str+02h

;;				NewVar_Str[3] = RecWorld[5];
CLINEA 0000H 0001H 07E0H 0005H 0020H
	l	r0,	NEAR _RecWorld+05h
	st	r0,	NEAR _NewVar_Str+03h

;;				NewVar_Str[4] = RecWorld[6];
CLINEA 0000H 0001H 07E1H 0005H 0020H
	l	r0,	NEAR _RecWorld+06h
	st	r0,	NEAR _NewVar_Str+04h

;;				NewVar_Str[5] = RecWorld[7];
CLINEA 0000H 0001H 07E2H 0005H 0020H
	l	r0,	NEAR _RecWorld+07h
	st	r0,	NEAR _NewVar_Str+05h

;;				sscanf(NewVar_Str, "%f", &NewVar);
CLINEA 0000H 0001H 07E3H 0005H 0026H
	mov	r0,	#BYTE1 OFFSET _NewVar
	mov	r1,	#BYTE2 OFFSET _NewVar
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S209
	mov	r1,	#BYTE2 OFFSET $$S209
	push	er0
	mov	r0,	#BYTE1 OFFSET _NewVar_Str
	mov	r1,	#BYTE2 OFFSET _NewVar_Str
	push	er0
	bl	_sscanf_nn
	add	sp,	#6 

;;				CF_HPF = 1-NewVar;
CLINEA 0000H 0001H 07E4H 0005H 0016H
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
CLINEA 0000H 0001H 07E5H 0005H 0014H
	l	er0,	NEAR _NewVar
	l	er2,	NEAR _NewVar+02h
	st	er0,	NEAR _CF_LPF
	st	er2,	NEAR _CF_LPF+02h
CBLOCKEND 232 20 2022

;;			}
CLINEA 0000H 0000H 07E6H 0004H 0004H
_$L415 :
CBLOCKEND 232 19 2023

;;		for(k = 0; k<150; k++)
CLINEA 0000H 0001H 07E9H 0007H 000CH
	mov	er0,	#0 

;;		for(k = 0; k<150; k++)
CLINEA 0000H 0000H 07E9H 0015H 0017H
_$L419 :
CBLOCK 232 21 2026

;;			SensorReturn[k] = 0x20;
CLINEA 0000H 0001H 07EBH 0004H 001AH
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 232 21 2028

;;		for(k = 0; k<150; k++)
CLINEA 0000H 0000H 07E9H 0015H 0017H
	add	er0,	#1 

;;		for(k = 0; k<150; k++)
CLINEA 0000H 0000H 07E9H 000EH 0013H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L419

;;		sprintf(SensorReturn, "    New Settings: kp=%f,ki=%f,kd=%f,a1=%f,a2=%f,Pb=%u,Db=%u", Accel_PID_XRoll_kp, Accel_PID_XRoll_ki, Accel_PID_XRoll_kd, CF_HPF, CF_LPF,Accel_PID_PBounds_Var_Pos,Accel_PID_DBounds_Var_Pos);
CLINEA 0000H 0001H 07EEH 0003H 00D7H
	l	er0,	NEAR _Accel_PID_DBounds_Var_Pos
	push	er0
	l	er0,	NEAR _Accel_PID_PBounds_Var_Pos
	push	er0
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
	mov	r0,	#BYTE1 OFFSET $$S423
	mov	r1,	#BYTE2 OFFSET $$S423
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#48

;;		SensorReturn[148] = 0x0D;	//CR
CLINEA 0000H 0001H 07F0H 0003H 0020H
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;		SensorReturn[149] = 0x0A;	//LF
CLINEA 0000H 0001H 07F1H 0003H 0020H
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 07F4H 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 07F5H 0003H 000EH
	bl	_uart_stop

;;		uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 07F6H 0003H 0032H
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
CLINEA 0000H 0000H 07F7H 0001H 0001H
	bal	_$L429

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 07F7H 0003H 001AH
_$L426 :
CBLOCK 232 22 2039

;;			main_clrWDT();
CLINEA 0000H 0001H 07F8H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 232 22 2041

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 07F7H 0001H 0001H
_$L429 :

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 07F7H 000EH 0013H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L426

;;		ETM8 = 1;	//Turn TIMER8/9 ISR Back ON
CLINEA 0000H 0001H 07FBH 0003H 0027H
	sb	0f013h.2

;;		ETM9 = 1;	//Turn TIMER8/9 ISR Back ON		
CLINEA 0000H 0001H 07FCH 0003H 0029H
	sb	0f013h.3
CBLOCKEND 232 2 2045

;;}
CLINEA 0000H 0001H 07FDH 0001H 0001H
	pop	pc
CBLOCKEND 232 1 2045
CFUNCTIONEND 232


	rseg $$SoftStart$main
CFUNCTION 233

_SoftStart	:
CBLOCK 233 1 2049

;;{
CLINEA 0000H 0001H 0801H 0001H 0001H
	push	lr
CBLOCK 233 2 2049
CRET 0000H

;;	PWED += PWMtoRPMOffset_Mot2;	
CLINEA 0000H 0001H 0805H 0002H 001EH
	l	er0,	0f932h
	l	er2,	NEAR _PWMtoRPMOffset_Mot2
	add	er0,	er2
	st	er0,	0f932h

;;	PWDD += PWMtoRPMOffset_Mot3;	
CLINEA 0000H 0001H 0806H 0002H 001EH
	l	er0,	0f922h
	l	er2,	NEAR _PWMtoRPMOffset_Mot3
	add	er0,	er2
	st	er0,	0f922h

;;	PWCD += PWMtoRPMOffset_Mot4;
CLINEA 0000H 0001H 0807H 0002H 001DH
	l	er0,	0f912h
	l	er2,	NEAR _PWMtoRPMOffset_Mot4
	add	er0,	er2
	st	er0,	0f912h

;;	while(PWF0D < PWMIdleDutyRun){
CLINEA 0000H 0001H 0808H 0002H 001FH
	bal	_$L431
_$L433 :
CBLOCK 233 3 2056

;;		NOPms(50);
CLINEA 0000H 0001H 0809H 0003H 000CH
	mov	er0,	#50
	bl	_NOPms

;;		PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 080AH 0003H 001BH
	rb	0f973h.0

;;		PERUN = 0;
CLINEA 0000H 0001H 080BH 0003H 000CH
	rb	0f937h.0

;;		PDRUN = 0;
CLINEA 0000H 0001H 080CH 0003H 000CH
	rb	0f927h.0

;;		PCRUN = 0;
CLINEA 0000H 0001H 080DH 0003H 000CH
	rb	0f917h.0

;;		PWF0D += 1; 		//Can't be running to change (Only this variable)
CLINEA 0000H 0001H 080EH 0003H 0041H
	l	er0,	0f962h
	add	er0,	#1 
	st	er0,	0f962h

;;		PWED += 1;	
CLINEA 0000H 0001H 080FH 0003H 000DH
	l	er0,	0f932h
	add	er0,	#1 
	st	er0,	0f932h

;;		PWDD += 1;	
CLINEA 0000H 0001H 0810H 0003H 000DH
	l	er0,	0f922h
	add	er0,	#1 
	st	er0,	0f922h

;;		PWCD += 1;
CLINEA 0000H 0001H 0811H 0003H 000CH
	l	er0,	0f912h
	add	er0,	#1 
	st	er0,	0f912h

;;		PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0813H 0003H 001AH
	sb	0f973h.0

;;		PERUN = 1;
CLINEA 0000H 0001H 0814H 0003H 000CH
	sb	0f937h.0

;;		PDRUN = 1;
CLINEA 0000H 0001H 0815H 0003H 000CH
	sb	0f927h.0

;;		PCRUN = 1;
CLINEA 0000H 0001H 0816H 0003H 000CH
	sb	0f917h.0
CBLOCKEND 233 3 2071

;;	}
CLINEA 0000H 0000H 0817H 0002H 0002H
_$L431 :

;;	while(PWF0D < PWMIdleDutyRun){
CLINEA 0000H 0000H 0808H 000EH 0013H
	l	er0,	0f962h
	l	er2,	NEAR _PWMIdleDutyRun
	cmp	er0,	er2
	blt	_$L433

;;	while(PrePIDCount < 10){
CLINEA 0000H 0000H 0818H 0001H 0001H
	bal	_$L445

;;	while(PrePIDCount < 10){
CLINEA 0000H 0000H 0818H 0002H 0019H
_$L437 :
CBLOCK 233 4 2072

;;		if(AccGyro_ReadFlag >= 1){		//Triggered by External Interrupt (flag set in AccelGyroDataReady_ISR)
CLINEA 0000H 0001H 0819H 0003H 0064H
	l	r0,	NEAR _AccGyro_ReadFlag
	cmp	r0,	#01h
	blt	_$L439
CBLOCK 233 5 2073

;;			Get_AccGyroData();
CLINEA 0000H 0001H 081BH 0004H 0015H
	bl	_Get_AccGyroData

;;			AccGyro_ReadFlag = 0;
CLINEA 0000H 0001H 081DH 0004H 0018H
	mov	r0,	#00h
	st	r0,	NEAR _AccGyro_ReadFlag
CBLOCKEND 233 5 2078

;;		}
CLINEA 0000H 0000H 081EH 0003H 0003H
_$L439 :

;;		if(AccGyro_CF_FlagCounter > 0){	//This Value is incremented after Get_AccGyroData(); is called
CLINEA 0000H 0001H 081FH 0003H 0060H
	l	r0,	NEAR _AccGyro_CF_FlagCounter
	cmp	r0,	#00h
	ble	_$L441
CBLOCK 233 6 2079

;;			Run_AccGyroCF();
CLINEA 0000H 0001H 0821H 0004H 0013H
	bl	_Run_AccGyroCF

;;			AccGyro_CF_FlagCounter--;	//Decremented because this value is not a static 1/0... number shows number of items in buffer that have not gone though the CF yet
CLINEA 0000H 0000H 0823H 0004H 00A0H
	lea	OFFSET _AccGyro_CF_FlagCounter
	dec	[ea]
CBLOCKEND 233 6 2084

;;		}
CLINEA 0000H 0000H 0824H 0003H 0003H
_$L441 :

;;		if(Accel_PID_GoCounter>= 1){		//This increments in the Run_AccGyroCF()... I don't know if this is the best trigger.. but for now, it works.  Calls GetAccGyroData and AccGyroCF once within the routine.
CLINEA 0000H 0001H 0825H 0003H 00CAH
	l	r0,	NEAR _Accel_PID_GoCounter
	cmp	r0,	#01h
	blt	_$L443
CBLOCK 233 7 2085

;;			AccelSensorControlPID_P(); 		
CLINEA 0000H 0001H 0827H 0004H 0020H
	bl	_AccelSensorControlPID_P

;;			AccelSensorControlPID_I(); 		
CLINEA 0000H 0001H 0828H 0004H 0020H
	bl	_AccelSensorControlPID_I

;;			AccelSensorControlPID_D(); 		
CLINEA 0000H 0001H 0829H 0004H 0020H
	bl	_AccelSensorControlPID_D

;;			Accel_PID_GoCounter = 0;
CLINEA 0000H 0001H 082BH 0004H 001BH
	mov	r0,	#00h
	st	r0,	NEAR _Accel_PID_GoCounter

;;			PrePIDCount++;			//Comment this out to always loop (i.e.: no shut-down...)
CLINEA 0000H 0000H 082CH 0004H 004DH
	lea	OFFSET _PrePIDCount
	inc	[ea]
CBLOCKEND 233 7 2093

;;		}
CLINEA 0000H 0000H 082DH 0003H 0003H
_$L443 :

;;		main_clrWDT();
CLINEA 0000H 0001H 082EH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 233 4 2095

;;	while(PrePIDCount < 10){
CLINEA 0000H 0000H 0818H 0001H 0001H
_$L445 :

;;	while(PrePIDCount < 10){
CLINEA 0000H 0000H 0818H 000EH 0013H
	l	r0,	NEAR _PrePIDCount
	cmp	r0,	#0ah
	blt	_$L437

;;	Accel_PID_XRollErrSum = 0;
CLINEA 0000H 0001H 0830H 0002H 001BH
	mov	er0,	#0 
	st	er0,	NEAR _Accel_PID_XRollErrSum
	st	er0,	NEAR _Accel_PID_XRollErrSum+02h

;;	Accel_PID_YPitchErrSum = 0;	
CLINEA 0000H 0001H 0831H 0002H 001DH
	st	er0,	NEAR _Accel_PID_YPitchErrSum
	st	er0,	NEAR _Accel_PID_YPitchErrSum+02h
CBLOCKEND 233 2 2099

;;}
CLINEA 0000H 0001H 0833H 0001H 0001H
	pop	pc
CBLOCKEND 233 1 2099
CFUNCTIONEND 233


	rseg $$RampUpMotorTest$main
CFUNCTION 234

_RampUpMotorTest	:
CBLOCK 234 1 2104

;;void RampUpMotorTest(void){
CLINEA 0000H 0001H 0838H 0001H 001BH
CBLOCK 234 2 2104

;;	if(PWMCounter < PWMSensorResPerInc){
CLINEA 0000H 0001H 0839H 0002H 0025H
	l	r0,	NEAR _PWMCounter
	l	r1,	NEAR _PWMSensorResPerInc
	cmp	r0,	r1
	bge	_$L447
CBLOCK 234 3 2105

;;		PWMCounter++;
CLINEA 0000H 0000H 083AH 0003H 000FH
	add	r0,	#01h
	st	r0,	NEAR _PWMCounter
CBLOCKEND 234 3 2107

;;	else{
CLINEA 0000H 0001H 083CH 0002H 0006H
	rt
_$L447 :
CBLOCK 234 4 2108

;;		if(PWED < PWMUpperDutyLimitCalib){
CLINEA 0000H 0001H 083DH 0003H 0024H
	l	er0,	0f932h
	l	er2,	NEAR _PWMUpperDutyLimitCalib
	cmp	er0,	er2
	blt	_$M33
	b	_$L456
_$M33 :
CBLOCK 234 5 2109

;;			if(PWMflag == 0){
CLINEA 0000H 0001H 083EH 0004H 0014H
	l	r0,	NEAR _PWMflag
	bne	_$L452
CBLOCK 234 6 2110

;;				PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 083FH 0005H 001DH
	rb	0f973h.0

;;				PERUN = 0;
CLINEA 0000H 0001H 0840H 0005H 000EH
	rb	0f937h.0

;;				PDRUN = 0;
CLINEA 0000H 0001H 0841H 0005H 000EH
	rb	0f927h.0

;;				PCRUN = 0;
CLINEA 0000H 0001H 0842H 0005H 000EH
	rb	0f917h.0

;;				PWF0D += MotorStep; //Can't be running to change (Only this variable)
CLINEA 0000H 0001H 0843H 0005H 0049H
	l	er0,	0f962h
	l	er2,	NEAR _MotorStep
	add	er0,	er2
	st	er0,	0f962h

;;				PWED += MotorStep;
CLINEA 0000H 0001H 0844H 0005H 0016H
	l	er0,	0f932h
	add	er0,	er2
	st	er0,	0f932h

;;				PWDD += MotorStep;
CLINEA 0000H 0001H 0845H 0005H 0016H
	l	er0,	0f922h
	add	er0,	er2
	st	er0,	0f922h

;;				PWCD += MotorStep;
CLINEA 0000H 0001H 0846H 0005H 0016H
	l	er0,	0f912h
	add	er0,	er2
	st	er0,	0f912h

;;				PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0847H 0005H 001CH
	sb	0f973h.0

;;				PERUN = 1;
CLINEA 0000H 0001H 0848H 0005H 000EH
	sb	0f937h.0

;;				PDRUN = 1;
CLINEA 0000H 0001H 0849H 0005H 000EH
	sb	0f927h.0

;;				PCRUN = 1;
CLINEA 0000H 0001H 084AH 0005H 000EH
	sb	0f917h.0
CBLOCKEND 234 6 2123

;;			}
CLINEA 0000H 0000H 084BH 0004H 0004H
_$L452 :

;;			if(PWMflag == 1){
CLINEA 0000H 0001H 084CH 0004H 0014H
	l	r0,	NEAR _PWMflag
	cmp	r0,	#01h
	bne	_$L456
CBLOCK 234 7 2124

;;				PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 084DH 0005H 001DH
	rb	0f973h.0

;;				PERUN = 0;
CLINEA 0000H 0001H 084EH 0005H 000EH
	rb	0f937h.0

;;				PDRUN = 0;
CLINEA 0000H 0001H 084FH 0005H 000EH
	rb	0f927h.0

;;				PCRUN = 0;
CLINEA 0000H 0001H 0850H 0005H 000EH
	rb	0f917h.0

;;				PWF0D -= MotorStep; //Can't be running to change (Only this variable)
CLINEA 0000H 0001H 0851H 0005H 0049H
	l	er0,	0f962h
	l	er2,	NEAR _MotorStep
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f962h

;;				PWED -= MotorStep;
CLINEA 0000H 0001H 0852H 0005H 0016H
	l	er0,	0f932h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f932h

;;				PWDD -= MotorStep;
CLINEA 0000H 0001H 0853H 0005H 0016H
	l	er0,	0f922h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f922h

;;				PWCD -= MotorStep;
CLINEA 0000H 0001H 0854H 0005H 0016H
	l	er0,	0f912h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f912h

;;				PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0855H 0005H 001CH
	sb	0f973h.0

;;				PERUN = 1;
CLINEA 0000H 0001H 0856H 0005H 000EH
	sb	0f937h.0

;;				PDRUN = 1;
CLINEA 0000H 0001H 0857H 0005H 000EH
	sb	0f927h.0

;;				PCRUN = 1;
CLINEA 0000H 0001H 0858H 0005H 000EH
	sb	0f917h.0

;;				if(PWED <= PWMSafeDuty){
CLINEA 0000H 0001H 0859H 0005H 001CH
	l	er0,	0f932h
	l	er2,	NEAR _PWMSafeDuty
	cmp	er0,	er2
	bgt	_$L456
CBLOCK 234 8 2137

;;					PWMflag = 2;
CLINEA 0000H 0001H 085AH 0006H 0011H
	mov	r0,	#02h
	st	r0,	NEAR _PWMflag
CBLOCKEND 234 8 2139

;;				}
CLINEA 0000H 0000H 085BH 0005H 0005H
_$L456 :
CBLOCKEND 234 7 2140
CBLOCKEND 234 5 2141

;;		if(PWED >= PWMUpperDutyLimitCalib){
CLINEA 0000H 0001H 085EH 0003H 0025H
	l	er0,	0f932h
	l	er2,	NEAR _PWMUpperDutyLimitCalib
	cmp	er0,	er2
	blt	_$L458
CBLOCK 234 9 2142

;;			PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 085FH 0004H 001CH
	rb	0f973h.0

;;			PERUN = 0;
CLINEA 0000H 0001H 0860H 0004H 000DH
	rb	0f937h.0

;;			PDRUN = 0;
CLINEA 0000H 0001H 0861H 0004H 000DH
	rb	0f927h.0

;;			PCRUN = 0;
CLINEA 0000H 0001H 0862H 0004H 000DH
	rb	0f917h.0

;;			PWF0D -= MotorStep; //Can't be running to change (Only this variable)
CLINEA 0000H 0001H 0863H 0004H 0048H
	l	er0,	0f962h
	l	er2,	NEAR _MotorStep
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f962h

;;			PWED -= MotorStep;
CLINEA 0000H 0001H 0864H 0004H 0015H
	l	er0,	0f932h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f932h

;;			PWDD -= MotorStep;
CLINEA 0000H 0001H 0865H 0004H 0015H
	l	er0,	0f922h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f922h

;;			PWCD -= MotorStep;
CLINEA 0000H 0001H 0866H 0004H 0015H
	l	er0,	0f912h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f912h

;;			PWMflag = 1;
CLINEA 0000H 0001H 0867H 0004H 000FH
	mov	r0,	#01h
	st	r0,	NEAR _PWMflag

;;			PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0868H 0004H 001BH
	sb	0f973h.0

;;			PERUN = 1;
CLINEA 0000H 0001H 0869H 0004H 000DH
	sb	0f937h.0

;;			PDRUN = 1;
CLINEA 0000H 0001H 086AH 0004H 000DH
	sb	0f927h.0

;;			PCRUN = 1;
CLINEA 0000H 0001H 086BH 0004H 000DH
	sb	0f917h.0
CBLOCKEND 234 9 2156

;;		}
CLINEA 0000H 0000H 086CH 0003H 0003H
_$L458 :

;;		PWMCounter = 0;
CLINEA 0000H 0001H 086DH 0003H 0011H
	mov	r0,	#00h
	st	r0,	NEAR _PWMCounter
CBLOCKEND 234 4 2158

;;	}
CLINEA 0000H 0000H 086EH 0002H 0002H
CBLOCKEND 234 2 2159

;;}
CLINEA 0000H 0001H 086FH 0001H 0001H
	rt
CBLOCKEND 234 1 2159
CFUNCTIONEND 234


	rseg $$DistanceSensorControl$main
CFUNCTION 235

_DistanceSensorControl	:
CBLOCK 235 1 2160

;;void DistanceSensorControl(void){
CLINEA 0000H 0001H 0870H 0001H 0021H
	push	lr
CBLOCK 235 2 2160
CRET 0000H

;;	if((Range_out < Range_ZHiThres)||(Range_out > Range_Ceiling)){	//65 = 4Ft Level, 240 accounts for sensor error when too close to ground.
CLINEA 0000H 0001H 0871H 0002H 0089H
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
	blt	_$L462
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
	ble	_$L461
_$L462 :
CBLOCK 235 3 2161

;;		PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 0872H 0003H 001BH
	rb	0f973h.0

;;		PERUN = 0;
CLINEA 0000H 0001H 0873H 0003H 000CH
	rb	0f937h.0

;;		PDRUN = 0;
CLINEA 0000H 0001H 0874H 0003H 000CH
	rb	0f927h.0

;;		PCRUN = 0;
CLINEA 0000H 0001H 0875H 0003H 000CH
	rb	0f917h.0

;;		PWF0D += MotorStep; //Can't be running to change (Only this variable)
CLINEA 0000H 0001H 0876H 0003H 0047H
	l	er0,	0f962h
	l	er2,	NEAR _MotorStep
	add	er0,	er2
	st	er0,	0f962h

;;		PWED += MotorStep;
CLINEA 0000H 0001H 0877H 0003H 0014H
	l	er0,	0f932h
	add	er0,	er2
	st	er0,	0f932h

;;		PWDD += MotorStep;
CLINEA 0000H 0001H 0878H 0003H 0014H
	l	er0,	0f922h
	add	er0,	er2
	st	er0,	0f922h

;;		PWCD += MotorStep;
CLINEA 0000H 0001H 0879H 0003H 0014H
	l	er0,	0f912h
	add	er0,	er2
	st	er0,	0f912h

;;		PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 087AH 0003H 001AH
	sb	0f973h.0

;;		PERUN = 1;
CLINEA 0000H 0001H 087BH 0003H 000CH
	sb	0f937h.0

;;		PDRUN = 1;
CLINEA 0000H 0001H 087CH 0003H 000CH
	sb	0f927h.0

;;		PCRUN = 1;
CLINEA 0000H 0001H 087DH 0003H 000CH
	sb	0f917h.0
CBLOCKEND 235 3 2174

;;	}			
CLINEA 0000H 0000H 087EH 0002H 0005H
_$L461 :

;;	if(Range_out > 75){	//4Ft Level
CLINEA 0000H 0001H 087FH 0002H 0020H
	l	er0,	NEAR _Range_out
	cmp	r0,	#04bh
	cmpc	r1,	#00h
	ble	_$L468
CBLOCK 235 4 2175

;;		PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 0880H 0003H 001BH
	rb	0f973h.0

;;		PERUN = 0;
CLINEA 0000H 0001H 0881H 0003H 000CH
	rb	0f937h.0

;;		PDRUN = 0;
CLINEA 0000H 0001H 0882H 0003H 000CH
	rb	0f927h.0

;;		PCRUN = 0;
CLINEA 0000H 0001H 0883H 0003H 000CH
	rb	0f917h.0

;;		PWF0D -= MotorStep; //Can't be running to change (Only this variable)
CLINEA 0000H 0001H 0884H 0003H 0047H
	l	er0,	0f962h
	l	er2,	NEAR _MotorStep
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f962h

;;		PWED -= MotorStep;
CLINEA 0000H 0001H 0885H 0003H 0014H
	l	er0,	0f932h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f932h

;;		PWDD -= MotorStep;
CLINEA 0000H 0001H 0886H 0003H 0014H
	l	er0,	0f922h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f922h

;;		PWCD -= MotorStep;
CLINEA 0000H 0001H 0887H 0003H 0014H
	l	er0,	0f912h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f912h

;;		PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0888H 0003H 001AH
	sb	0f973h.0

;;		PERUN = 1;
CLINEA 0000H 0001H 0889H 0003H 000CH
	sb	0f937h.0

;;		PDRUN = 1;
CLINEA 0000H 0001H 088AH 0003H 000CH
	sb	0f927h.0

;;		PCRUN = 1;
CLINEA 0000H 0001H 088BH 0003H 000CH
	sb	0f917h.0
CBLOCKEND 235 4 2188

;;	}
CLINEA 0000H 0000H 088CH 0002H 0002H
_$L468 :
CBLOCKEND 235 2 2232

;;}
CLINEA 0000H 0001H 08B8H 0001H 0001H
	pop	pc
CBLOCKEND 235 1 2232
CFUNCTIONEND 235


	rseg $$MagSensorControl$main
CFUNCTION 236

_MagSensorControl	:
CBLOCK 236 1 2295

;;void MagSensorControl(void){
CLINEA 0000H 0001H 08F7H 0001H 001CH
	push	lr
CBLOCK 236 2 2295
CRET 0000H

;;	if((Mag_Angle > Mag_CWThres)&&(Mag_Angle < Mag_OpposingPole)){
CLINEA 0000H 0001H 08F8H 0002H 003FH
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	l	er0,	NEAR _Mag_CWThres
	l	er2,	NEAR _Mag_CWThres+02h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L471
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	l	er0,	NEAR _Mag_OpposingPole
	l	er2,	NEAR _Mag_OpposingPole+02h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$L471
CBLOCK 236 3 2296

;;		PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 08F9H 0003H 001BH
	rb	0f973h.0

;;		PERUN = 0;
CLINEA 0000H 0001H 08FAH 0003H 000CH
	rb	0f937h.0

;;		PDRUN = 0;
CLINEA 0000H 0001H 08FBH 0003H 000CH
	rb	0f927h.0

;;		PCRUN = 0;
CLINEA 0000H 0001H 08FCH 0003H 000CH
	rb	0f917h.0

;;		PWF0D += Mag_MotorStep; //Can't be running to change (Only this variable)
CLINEA 0000H 0001H 08FDH 0003H 004BH
	l	er0,	0f962h
	l	er2,	NEAR _Mag_MotorStep
	add	er0,	er2
	st	er0,	0f962h

;;		PWED -= Mag_MotorStep;
CLINEA 0000H 0001H 08FEH 0003H 0018H
	l	er0,	0f932h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f932h

;;		PWDD -= Mag_MotorStep;
CLINEA 0000H 0001H 08FFH 0003H 0018H
	l	er0,	0f922h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f922h

;;		PWCD += Mag_MotorStep;
CLINEA 0000H 0001H 0900H 0003H 0018H
	l	er0,	0f912h
	add	er0,	er2
	st	er0,	0f912h

;;		PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0901H 0003H 001AH
	sb	0f973h.0

;;		PERUN = 1;
CLINEA 0000H 0001H 0902H 0003H 000CH
	sb	0f937h.0

;;		PDRUN = 1;
CLINEA 0000H 0001H 0903H 0003H 000CH
	sb	0f927h.0

;;		PCRUN = 1;
CLINEA 0000H 0001H 0904H 0003H 000CH
	sb	0f917h.0
CBLOCKEND 236 3 2309

;;	}
CLINEA 0000H 0000H 0905H 0002H 0002H
_$L471 :

;;	if((Mag_Angle < Mag_CCWThres)&&(Mag_Angle > Mag_OpposingPole)){
CLINEA 0000H 0001H 0906H 0002H 0040H
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	l	er0,	NEAR _Mag_CCWThres
	l	er2,	NEAR _Mag_CCWThres+02h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$L478
	l	er0,	NEAR _Mag_Angle
	l	er2,	NEAR _Mag_Angle+02h
	push	xr0
	l	er0,	NEAR _Mag_OpposingPole
	l	er2,	NEAR _Mag_OpposingPole+02h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L478
CBLOCK 236 4 2310

;;		PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 0907H 0003H 001BH
	rb	0f973h.0

;;		PERUN = 0;
CLINEA 0000H 0001H 0908H 0003H 000CH
	rb	0f937h.0

;;		PDRUN = 0;
CLINEA 0000H 0001H 0909H 0003H 000CH
	rb	0f927h.0

;;		PCRUN = 0;
CLINEA 0000H 0001H 090AH 0003H 000CH
	rb	0f917h.0

;;		PWF0D -= Mag_MotorStep; //Can't be running to change (Only this variable)
CLINEA 0000H 0001H 090BH 0003H 004BH
	l	er0,	0f962h
	l	er2,	NEAR _Mag_MotorStep
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f962h

;;		PWED += Mag_MotorStep;
CLINEA 0000H 0001H 090CH 0003H 0018H
	l	er0,	0f932h
	add	er0,	er2
	st	er0,	0f932h

;;		PWDD += Mag_MotorStep;
CLINEA 0000H 0001H 090DH 0003H 0018H
	l	er0,	0f922h
	add	er0,	er2
	st	er0,	0f922h

;;		PWCD -= Mag_MotorStep;
CLINEA 0000H 0001H 090EH 0003H 0018H
	l	er0,	0f912h
	sub	r0,	r2
	subc	r1,	r3
	st	er0,	0f912h

;;		PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 090FH 0003H 001AH
	sb	0f973h.0

;;		PERUN = 1;
CLINEA 0000H 0001H 0910H 0003H 000CH
	sb	0f937h.0

;;		PDRUN = 1;
CLINEA 0000H 0001H 0911H 0003H 000CH
	sb	0f927h.0

;;		PCRUN = 1;
CLINEA 0000H 0001H 0912H 0003H 000CH
	sb	0f917h.0
CBLOCKEND 236 4 2323

;;	}
CLINEA 0000H 0000H 0913H 0002H 0002H
_$L478 :
CBLOCKEND 236 2 2324

;;}
CLINEA 0000H 0001H 0914H 0001H 0001H
	pop	pc
CBLOCKEND 236 1 2324
CFUNCTIONEND 236


	rseg $$MagSensorControlPID$main
CFUNCTION 237

_MagSensorControlPID	:
CBLOCK 237 1 2326

;;void MagSensorControlPID(void){
CLINEA 0000H 0001H 0916H 0001H 001FH
	push	lr
	push	xr4
CBLOCK 237 2 2326
CRET 0004H
CLOCAL 47H 0002H 0024H 0002H "i" 02H 00H 01H

;;	if(Mag_PIDSetpoint > 180){
CLINEA 0000H 0001H 091BH 0002H 001BH
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
	ble	_$L486
CBLOCK 237 3 2331

;;		Mag_PIDCorrectionFactor = 360-Mag_PIDSetpoint;
CLINEA 0000H 0001H 091CH 0003H 0030H
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
CLINEA 0000H 0001H 091DH 0003H 003BH
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
CLINEA 0000H 0001H 091EH 0003H 001FH
	push	xr0
	mov	er0,	#0 
	mov	r2,	#034h
	mov	r3,	#043h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L488
CBLOCK 237 4 2334

;;			Mag_PIDError = Mag_PIDAngleScaled - 360;
CLINEA 0000H 0001H 091FH 0004H 002BH
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
CBLOCKEND 237 4 2337

;;		else{
CLINEA 0000H 0001H 0922H 0003H 0007H
	bal	_$L490
_$L488 :
CBLOCK 237 5 2338

;;			Mag_PIDError= Mag_PIDAngleScaled;
CLINEA 0000H 0001H 0923H 0004H 0024H
	l	er0,	NEAR _Mag_PIDAngleScaled
	l	er2,	NEAR _Mag_PIDAngleScaled+02h
CBLOCKEND 237 5 2340

;;		}
CLINEA 0000H 0000H 0924H 0003H 0003H
_$L490 :

;;	else{
CLINEA 0000H 0001H 0926H 0002H 0006H
	bal	_$L494
_$L486 :
CBLOCK 237 6 2342

;;		Mag_PIDCorrectionFactor = Mag_PIDSetpoint;					
CLINEA 0000H 0001H 0927H 0003H 0031H
	l	er0,	NEAR _Mag_PIDSetpoint
	l	er2,	NEAR _Mag_PIDSetpoint+02h
	st	er0,	NEAR _Mag_PIDCorrectionFactor
	st	er2,	NEAR _Mag_PIDCorrectionFactor+02h

;;		Mag_PIDAngleScaled = Mag_Angle - Mag_PIDCorrectionFactor;
CLINEA 0000H 0001H 0929H 0003H 003BH
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
CLINEA 0000H 0001H 092AH 0003H 001FH
	push	xr0
	mov	er0,	#0 
	mov	r2,	#034h
	mov	r3,	#043h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L492
CBLOCK 237 7 2346

;;			Mag_PIDError = Mag_PIDAngleScaled - 360;
CLINEA 0000H 0001H 092BH 0004H 002BH
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
CBLOCKEND 237 7 2349

;;		else{
CLINEA 0000H 0001H 092EH 0003H 0007H
	bal	_$L494
_$L492 :
CBLOCK 237 8 2350

;;			Mag_PIDError = Mag_PIDAngleScaled;
CLINEA 0000H 0001H 092FH 0004H 0025H
	l	er0,	NEAR _Mag_PIDAngleScaled
	l	er2,	NEAR _Mag_PIDAngleScaled+02h
CBLOCKEND 237 8 2352

;;		}
CLINEA 0000H 0000H 0930H 0003H 0003H
_$L494 :
	st	er0,	NEAR _Mag_PIDError
	st	er2,	NEAR _Mag_PIDError+02h
CBLOCKEND 237 6 2353

;;	Mag_PIDError *= -1;
CLINEA 0000H 0001H 0932H 0002H 0014H
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
CLINEA 0000H 0001H 0938H 0002H 006DH
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
CLINEA 0000H 0001H 0939H 0002H 0014H
	mov	er0,	#0 
	st	er0,	NEAR _Mag_PIDCounter

;;	Mag_PIDErrSum += (Mag_PIDError * Mag_PIDCurrentCount);
CLINEA 0000H 0001H 093CH 0002H 0037H
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
CLINEA 0000H 0001H 0940H 0002H 0024H
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
CLINEA 0000H 0001H 0941H 0002H 001FH
	l	er0,	NEAR _Mag_PIDError
	l	er2,	NEAR _Mag_PIDError+02h
	st	er0,	NEAR _Mag_PIDErrPrev
	st	er2,	NEAR _Mag_PIDErrPrev+02h

;;	Mag_PIDOutput = (Mag_PID_kp*Mag_PIDError) + (Mag_PID_ki*Mag_PIDErrSum) + (Mag_PID_kd*Mag_PIDdErr);
CLINEA 0000H 0001H 0944H 0002H 0063H
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
CLINEA 0000H 0001H 0948H 0002H 001AH
	rb	0f973h.0

;;	PERUN = 0;
CLINEA 0000H 0001H 0949H 0002H 000BH
	rb	0f937h.0

;;	PDRUN = 0;
CLINEA 0000H 0001H 094AH 0002H 000BH
	rb	0f927h.0

;;	PCRUN = 0;
CLINEA 0000H 0001H 094BH 0002H 000BH
	rb	0f917h.0

;;	PWF0D -= Mag_PIDOutput; 		//Can't be running to change (Only this variable)
CLINEA 0000H 0001H 094DH 0002H 004CH
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
CLINEA 0000H 0001H 094EH 0002H 0034H
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
CLINEA 0000H 0001H 094FH 0002H 0034H
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
CLINEA 0000H 0001H 0950H 0002H 0017H
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
CLINEA 0000H 0001H 0951H 0002H 0014H
	bl	_CheckSafetyLimit
CBLOCKEND 237 3 2412

;;	PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0952H 0002H 0019H
	sb	0f973h.0

;;	PERUN = 1;
CLINEA 0000H 0001H 0953H 0002H 000BH
	sb	0f937h.0

;;	PDRUN = 1;
CLINEA 0000H 0001H 0954H 0002H 000BH
	sb	0f927h.0

;;	PCRUN = 1;
CLINEA 0000H 0001H 0955H 0002H 000BH
	sb	0f917h.0

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 0959H 0002H 0017H
	mov	er0,	#0 
_$L497 :
CBLOCK 237 9 2394

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 095BH 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 237 9 2396

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0959H 0002H 0017H
	add	er0,	#1 

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0959H 000EH 0013H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L497

;;	sprintf(SensorReturn, "%f,%f,%f,%f", Mag_Angle, Mag_PIDOutput, Mag_PID_kd, Mag_PID_kp);
CLINEA 0000H 0001H 095FH 0002H 0058H
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
	mov	r0,	#BYTE1 OFFSET $$S501
	mov	r1,	#BYTE2 OFFSET $$S501
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#36

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 0961H 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 0962H 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0965H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 0966H 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 0967H 0002H 0031H
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
CLINEA 0000H 0000H 0968H 0001H 0001H
	bal	_$L506

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0968H 0002H 0019H
_$L504 :
CBLOCK 237 10 2408

;;		NOP1000();
CLINEA 0000H 0001H 0969H 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 096AH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 237 10 2411

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0968H 0001H 0001H
_$L506 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0968H 000EH 0013H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L504
CBLOCKEND 237 2 2412

;;}
CLINEA 0000H 0001H 096CH 0001H 0001H
	pop	xr4
	pop	pc
CBLOCKEND 237 1 2412
CFUNCTIONEND 237


	rseg $$AccelSensorControlPID_P$main
CFUNCTION 238

_AccelSensorControlPID_P	:
CBLOCK 238 1 2414

;;void AccelSensorControlPID_P(void){
CLINEA 0000H 0001H 096EH 0001H 0023H
	push	lr
	push	xr4
CBLOCK 238 2 2414
CRET 0004H
CLOCAL 4BH 0002H 0000H 0002H "i" 02H 00H 01H
CSLOCAL 43H 0004H 0003H 0002H "Accel_PID_XRollOutput" 02H 00H 03H
CSLOCAL 43H 0004H 0004H 0002H "Accel_PID_YPitchOutput" 02H 00H 03H

;;		Accel_PID_XRollError = -CF_XRoll;	//Setpoint - Error (in this case setpoint is 0)
CLINEA 0000H 0001H 0983H 0003H 0053H
	l	er0,	NEAR _CF_XRoll
	l	er2,	NEAR _CF_XRoll+02h
	push	xr0
	bl	__fnegu8sw
	pop	xr0
	st	er0,	NEAR _Accel_PID_XRollError
	st	er2,	NEAR _Accel_PID_XRollError+02h

;;		testP = Accel_PID_XRollOutput;
CLINEA 0000H 0001H 098DH 0003H 0020H
	push	xr0
	l	er0,	NEAR _Accel_PID_XRoll_kp
	l	er2,	NEAR _Accel_PID_XRoll_kp+02h
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr0
	push	xr0
	bl	__ftolu8sw
	pop	er4
	add	sp,	#2 
	st	er4,	NEAR _testP

;;		Accel_PID_XRollOutput += (Accel_PID_XRoll_ki*Accel_PID_XRollErrSum);
CLINEA 0000H 0001H 098EH 0003H 0046H
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
	st	er0,	NEAR _$ST3
	st	er2,	NEAR _$ST3+02h

;;		Accel_PID_YPitchError = -CF_YPitch;		//Setpoint - Error (in this case setpoint is 0)
CLINEA 0000H 0001H 0993H 0003H 0056H
	l	er0,	NEAR _CF_YPitch
	l	er2,	NEAR _CF_YPitch+02h
	push	xr0
	bl	__fnegu8sw
	pop	xr0
	st	er0,	NEAR _Accel_PID_YPitchError
	st	er2,	NEAR _Accel_PID_YPitchError+02h

;;		Accel_PID_YPitchOutput = (Accel_PID_YPitch_kp*Accel_PID_YPitchError) + (Accel_PID_YPitch_ki*Accel_PID_YPitchErrSum);
CLINEA 0000H 0001H 099EH 0003H 0076H
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
	st	er0,	NEAR _$ST4
	st	er2,	NEAR _$ST4+02h

;;		if(PrePIDCount >= 10){
CLINEA 0000H 0001H 09A0H 0003H 0018H
	l	r0,	NEAR _PrePIDCount
	cmp	r0,	#0ah
	bge	_$M38
	b	_$L515
_$M38 :
CBLOCK 238 3 2464

;;			if(Accel_PID_XRollError > 0){
CLINEA 0000H 0001H 09A1H 0004H 0020H
	l	er0,	NEAR _Accel_PID_XRollError
	l	er2,	NEAR _Accel_PID_XRollError+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L510
CBLOCK 238 4 2465

;;				PERUN = 0;
CLINEA 0000H 0001H 09A3H 0005H 000EH
	rb	0f937h.0

;;				PDRUN = 0;
CLINEA 0000H 0001H 09A4H 0005H 000EH
	rb	0f927h.0

;;				PWED = PWMIdleDutyRun + Accel_PID_XRollOutput + PWMtoRPMOffset_Mot2;	
CLINEA 0000H 0001H 09A7H 0005H 0049H
	l	er0,	NEAR _PWMIdleDutyRun
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _$ST3
	l	er2,	NEAR _$ST3+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr4
	l	er0,	NEAR _PWMtoRPMOffset_Mot2
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	pop	xr0
	push	qr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f932h

;;				PWDD = PWMIdleDutyRun;
CLINEA 0000H 0001H 09AAH 0005H 001AH
	l	er0,	NEAR _PWMIdleDutyRun
	st	er0,	0f922h

;;				CheckSafetyLimit();
CLINEA 0000H 0001H 09ABH 0005H 0017H
	bl	_CheckSafetyLimit

;;				PDRUN = 1;
CLINEA 0000H 0001H 09AEH 0005H 000EH
CBLOCKEND 238 4 2480

;;			else{
CLINEA 0000H 0001H 09B1H 0004H 0008H
	bal	_$L512
_$L510 :
CBLOCK 238 5 2481

;;				PERUN = 0;
CLINEA 0000H 0001H 09B3H 0005H 000EH
	rb	0f937h.0

;;				PDRUN = 0;
CLINEA 0000H 0001H 09B4H 0005H 000EH
	rb	0f927h.0

;;				PWED = PWMIdleDutyRun;	
CLINEA 0000H 0001H 09B7H 0005H 001BH
	l	er0,	NEAR _PWMIdleDutyRun
	st	er0,	0f932h

;;				PWDD = PWMIdleDutyRun - Accel_PID_XRollOutput + PWMtoRPMOffset_Mot4;
CLINEA 0000H 0001H 09B9H 0005H 0048H
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _$ST3
	l	er2,	NEAR _$ST3+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr4
	l	er0,	NEAR _PWMtoRPMOffset_Mot4
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	pop	xr0
	push	qr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f922h

;;				CheckSafetyLimit();
CLINEA 0000H 0001H 09BAH 0005H 0017H
	bl	_CheckSafetyLimit

;;				PDRUN = 1;
CLINEA 0000H 0001H 09BDH 0005H 000EH
CBLOCKEND 238 5 2495

;;			}
CLINEA 0000H 0000H 09BFH 0004H 0004H
_$L512 :
	sb	0f937h.0
	sb	0f927h.0

;;			if(Accel_PID_YPitchError > 0){
CLINEA 0000H 0001H 09C0H 0004H 0021H
	l	er0,	NEAR _Accel_PID_YPitchError
	l	er2,	NEAR _Accel_PID_YPitchError+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L513
CBLOCK 238 6 2496

;;				PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 09C1H 0005H 001DH
	rb	0f973h.0

;;				PCRUN = 0;
CLINEA 0000H 0001H 09C4H 0005H 000EH
	rb	0f917h.0

;;				PWF0D = PWMIdleDutyRun + Accel_PID_YPitchOutput; 		//Can't be running to change (Only this variable)
CLINEA 0000H 0001H 09C5H 0005H 0068H
	l	er0,	NEAR _PWMIdleDutyRun
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _$ST4
	l	er2,	NEAR _$ST4+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f962h

;;				PWCD = PWMIdleDutyRun;	
CLINEA 0000H 0001H 09C7H 0005H 001BH
	l	er0,	NEAR _PWMIdleDutyRun
	st	er0,	0f912h

;;				CheckSafetyLimit();
CLINEA 0000H 0001H 09C9H 0005H 0017H
	bl	_CheckSafetyLimit

;;				PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 09CAH 0005H 001CH
	sb	0f973h.0

;;				PCRUN = 1;
CLINEA 0000H 0001H 09CDH 0005H 000EH
	sb	0f917h.0
CBLOCKEND 238 6 2510

;;			else{
CLINEA 0000H 0001H 09CFH 0004H 0008H
	bal	_$L515
_$L513 :
CBLOCK 238 7 2511

;;				PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 09D0H 0005H 001DH
	rb	0f973h.0

;;				PCRUN = 0;
CLINEA 0000H 0001H 09D3H 0005H 000EH
	rb	0f917h.0

;;				PWF0D = PWMIdleDutyRun; 		//Can't be running to change (Only this variable)
CLINEA 0000H 0001H 09D4H 0005H 004FH
	l	er0,	NEAR _PWMIdleDutyRun
	st	er0,	0f962h

;;				PWCD = PWMIdleDutyRun - Accel_PID_YPitchOutput + PWMtoRPMOffset_Mot3;	
CLINEA 0000H 0001H 09D6H 0005H 004AH
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _$ST4
	l	er2,	NEAR _$ST4+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr4
	l	er0,	NEAR _PWMtoRPMOffset_Mot3
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	pop	xr0
	push	qr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f912h

;;				CheckSafetyLimit();
CLINEA 0000H 0001H 09D8H 0005H 0017H
	bl	_CheckSafetyLimit

;;				PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 09D9H 0005H 001CH
	sb	0f973h.0

;;				PCRUN = 1;
CLINEA 0000H 0001H 09DCH 0005H 000EH
	sb	0f917h.0
CBLOCKEND 238 7 2525

;;			}
CLINEA 0000H 0000H 09DDH 0004H 0004H
_$L515 :
CBLOCKEND 238 3 2526
CBLOCKEND 238 2 2555

;;}
CLINEA 0000H 0001H 09FBH 0001H 0001H
	pop	xr4
	pop	pc
CBLOCKEND 238 1 2555
CFUNCTIONEND 238


	rseg $$AccelSensorControlPID_I$main
CFUNCTION 239

_AccelSensorControlPID_I	:
CBLOCK 239 1 2557

;;void AccelSensorControlPID_I(void){
CLINEA 0000H 0001H 09FDH 0001H 0023H
	push	lr
	push	xr4
CBLOCK 239 2 2557
CRET 0004H
CLOCAL 4BH 0002H 0000H 0002H "i" 02H 00H 01H
CSLOCAL 43H 0004H 0005H 0002H "Accel_PID_XRollCurrentCount" 02H 00H 03H
CSLOCAL 43H 0004H 0006H 0002H "Accel_PID_XRollOutput" 02H 00H 03H
CSLOCAL 43H 0004H 0007H 0002H "Accel_PID_YPitchCurrentCount" 02H 00H 03H
CSLOCAL 43H 0004H 0008H 0002H "Accel_PID_YPitchOutput" 02H 00H 03H

;;		Accel_PID_XRollCurrentCount = Accel_PID_XRollCounter_I * .001;	//Timer in Seconds
CLINEA 0000H 0001H 0A12H 0003H 0053H
	l	er0,	NEAR _Accel_PID_XRollCounter_I
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
	st	er0,	NEAR _$ST5
	st	er2,	NEAR _$ST5+02h

;;		Accel_PID_XRollCounter_I = 0;
CLINEA 0000H 0001H 0A13H 0003H 001FH
	mov	er0,	#0 
	st	er0,	NEAR _Accel_PID_XRollCounter_I

;;		Accel_PID_XRollErrSum += (Accel_PID_XRollError * Accel_PID_XRollCurrentCount);
CLINEA 0000H 0001H 0A16H 0003H 0050H
	l	er0,	NEAR _$ST5
	push	xr0
	l	er0,	NEAR _Accel_PID_XRollError
	l	er2,	NEAR _Accel_PID_XRollError+02h
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	l	er0,	NEAR _Accel_PID_XRollErrSum
	l	er2,	NEAR _Accel_PID_XRollErrSum+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_PID_XRollErrSum
	st	er2,	NEAR _Accel_PID_XRollErrSum+02h

;;		testI = (Accel_PID_XRoll_ki*Accel_PID_XRollErrSum);
CLINEA 0000H 0001H 0A1AH 0003H 0035H
	push	xr0
	l	er0,	NEAR _Accel_PID_XRoll_ki
	l	er2,	NEAR _Accel_PID_XRoll_ki+02h
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	NEAR _testI

;;		Accel_PID_XRollOutput += testI;
CLINEA 0000H 0001H 0A1BH 0003H 0021H
	l	er4,	NEAR _Accel_PID_XRollError
	l	er6,	NEAR _Accel_PID_XRollError+02h
	push	xr4
	l	er4,	NEAR _Accel_PID_XRoll_kp
	l	er6,	NEAR _Accel_PID_XRoll_kp+02h
	push	xr4
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr4
	mov	r2,	r1
	extbw	er2
	mov	r2,	r3
	push	xr0
	bl	__fildu8sw
	pop	xr0
	push	qr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _$ST6
	st	er2,	NEAR _$ST6+02h

;;		Accel_PID_YPitchCurrentCount = Accel_PID_YPitchCounter_I * .001;		//Timer in Seconds
CLINEA 0000H 0001H 0A20H 0003H 0056H
	l	er0,	NEAR _Accel_PID_YPitchCounter_I
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
	st	er0,	NEAR _$ST7
	st	er2,	NEAR _$ST7+02h

;;		Accel_PID_YPitchCounter_I = 0;
CLINEA 0000H 0001H 0A21H 0003H 0020H
	mov	er0,	#0 
	st	er0,	NEAR _Accel_PID_YPitchCounter_I

;;		Accel_PID_YPitchErrSum += (Accel_PID_YPitchError * Accel_PID_YPitchCurrentCount);
CLINEA 0000H 0001H 0A25H 0003H 0053H
	l	er0,	NEAR _$ST7
	push	xr0
	l	er0,	NEAR _Accel_PID_YPitchError
	l	er2,	NEAR _Accel_PID_YPitchError+02h
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	l	er0,	NEAR _Accel_PID_YPitchErrSum
	l	er2,	NEAR _Accel_PID_YPitchErrSum+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_PID_YPitchErrSum
	st	er2,	NEAR _Accel_PID_YPitchErrSum+02h

;;		Accel_PID_YPitchOutput = (Accel_PID_YPitch_kp*Accel_PID_YPitchError) + (Accel_PID_YPitch_ki*Accel_PID_YPitchErrSum);
CLINEA 0000H 0001H 0A29H 0003H 0076H
	l	er0,	NEAR _Accel_PID_YPitchError
	l	er2,	NEAR _Accel_PID_YPitchError+02h
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
	st	er0,	NEAR _$ST8
	st	er2,	NEAR _$ST8+02h

;;		if(PrePIDCount >= 10){
CLINEA 0000H 0001H 0A2BH 0003H 0018H
	l	r0,	NEAR _PrePIDCount
	cmp	r0,	#0ah
	bge	_$M40
	b	_$L524
_$M40 :
CBLOCK 239 3 2603

;;			if(Accel_PID_XRollError > 0){
CLINEA 0000H 0001H 0A2CH 0004H 0020H
	l	er0,	NEAR _Accel_PID_XRollError
	l	er2,	NEAR _Accel_PID_XRollError+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L519
CBLOCK 239 4 2604

;;				PERUN = 0;
CLINEA 0000H 0001H 0A2EH 0005H 000EH
	rb	0f937h.0

;;				PDRUN = 0;
CLINEA 0000H 0001H 0A2FH 0005H 000EH
	rb	0f927h.0

;;				PWED = PWMIdleDutyRun + Accel_PID_XRollOutput + PWMtoRPMOffset_Mot2;	
CLINEA 0000H 0001H 0A32H 0005H 0049H
	l	er0,	NEAR _PWMIdleDutyRun
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _$ST6
	l	er2,	NEAR _$ST6+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr4
	l	er0,	NEAR _PWMtoRPMOffset_Mot2
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	pop	xr0
	push	qr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f932h

;;				PWDD = PWMIdleDutyRun;
CLINEA 0000H 0001H 0A35H 0005H 001AH
	l	er0,	NEAR _PWMIdleDutyRun
	st	er0,	0f922h

;;				CheckSafetyLimit();
CLINEA 0000H 0001H 0A36H 0005H 0017H
	bl	_CheckSafetyLimit

;;				PDRUN = 1;
CLINEA 0000H 0001H 0A39H 0005H 000EH
CBLOCKEND 239 4 2619

;;			else{
CLINEA 0000H 0001H 0A3CH 0004H 0008H
	bal	_$L521
_$L519 :
CBLOCK 239 5 2620

;;				PERUN = 0;
CLINEA 0000H 0001H 0A3EH 0005H 000EH
	rb	0f937h.0

;;				PDRUN = 0;
CLINEA 0000H 0001H 0A3FH 0005H 000EH
	rb	0f927h.0

;;				PWED = PWMIdleDutyRun;	
CLINEA 0000H 0001H 0A42H 0005H 001BH
	l	er0,	NEAR _PWMIdleDutyRun
	st	er0,	0f932h

;;				PWDD = PWMIdleDutyRun - Accel_PID_XRollOutput + PWMtoRPMOffset_Mot4;
CLINEA 0000H 0001H 0A44H 0005H 0048H
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _$ST6
	l	er2,	NEAR _$ST6+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr4
	l	er0,	NEAR _PWMtoRPMOffset_Mot4
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	pop	xr0
	push	qr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f922h

;;				CheckSafetyLimit();
CLINEA 0000H 0001H 0A45H 0005H 0017H
	bl	_CheckSafetyLimit

;;				PDRUN = 1;
CLINEA 0000H 0001H 0A48H 0005H 000EH
CBLOCKEND 239 5 2634

;;			}
CLINEA 0000H 0000H 0A4AH 0004H 0004H
_$L521 :
	sb	0f937h.0
	sb	0f927h.0

;;			if(Accel_PID_YPitchError > 0){
CLINEA 0000H 0001H 0A4BH 0004H 0021H
	l	er0,	NEAR _Accel_PID_YPitchError
	l	er2,	NEAR _Accel_PID_YPitchError+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L522
CBLOCK 239 6 2635

;;				PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 0A4CH 0005H 001DH
	rb	0f973h.0

;;				PCRUN = 0;
CLINEA 0000H 0001H 0A4FH 0005H 000EH
	rb	0f917h.0

;;				PWF0D = PWMIdleDutyRun + Accel_PID_YPitchOutput; 		//Can't be running to change (Only this variable)
CLINEA 0000H 0001H 0A50H 0005H 0068H
	l	er0,	NEAR _PWMIdleDutyRun
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _$ST8
	l	er2,	NEAR _$ST8+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f962h

;;				PWCD = PWMIdleDutyRun;	
CLINEA 0000H 0001H 0A52H 0005H 001BH
	l	er0,	NEAR _PWMIdleDutyRun
	st	er0,	0f912h

;;				CheckSafetyLimit();
CLINEA 0000H 0001H 0A54H 0005H 0017H
	bl	_CheckSafetyLimit

;;				PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0A55H 0005H 001CH
	sb	0f973h.0

;;				PCRUN = 1;
CLINEA 0000H 0001H 0A58H 0005H 000EH
	sb	0f917h.0
CBLOCKEND 239 6 2649

;;			else{
CLINEA 0000H 0001H 0A5AH 0004H 0008H
	bal	_$L524
_$L522 :
CBLOCK 239 7 2650

;;				PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 0A5BH 0005H 001DH
	rb	0f973h.0

;;				PCRUN = 0;
CLINEA 0000H 0001H 0A5EH 0005H 000EH
	rb	0f917h.0

;;				PWF0D = PWMIdleDutyRun; 		//Can't be running to change (Only this variable)
CLINEA 0000H 0001H 0A5FH 0005H 004FH
	l	er0,	NEAR _PWMIdleDutyRun
	st	er0,	0f962h

;;				PWCD = PWMIdleDutyRun - Accel_PID_YPitchOutput + PWMtoRPMOffset_Mot3;	
CLINEA 0000H 0001H 0A61H 0005H 004AH
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _$ST8
	l	er2,	NEAR _$ST8+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr4
	l	er0,	NEAR _PWMtoRPMOffset_Mot3
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	pop	xr0
	push	qr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f912h

;;				CheckSafetyLimit();
CLINEA 0000H 0001H 0A63H 0005H 0017H
	bl	_CheckSafetyLimit

;;				PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0A64H 0005H 001CH
	sb	0f973h.0

;;				PCRUN = 1;
CLINEA 0000H 0001H 0A67H 0005H 000EH
	sb	0f917h.0
CBLOCKEND 239 7 2664

;;			}
CLINEA 0000H 0000H 0A68H 0004H 0004H
_$L524 :
CBLOCKEND 239 3 2665
CBLOCKEND 239 2 2694

;;}
CLINEA 0000H 0001H 0A86H 0001H 0001H
	pop	xr4
	pop	pc
CBLOCKEND 239 1 2694
CFUNCTIONEND 239


	rseg $$AccelSensorControlPID_D$main
CFUNCTION 240

_AccelSensorControlPID_D	:
CBLOCK 240 1 2696

;;void AccelSensorControlPID_D(void){
CLINEA 0000H 0001H 0A88H 0001H 0023H
	push	lr
	push	xr8
	push	xr4
CBLOCK 240 2 2696
CRET 0008H
CLOCAL 4BH 0002H 0000H 0002H "i" 02H 00H 01H
CSLOCAL 43H 0004H 0009H 0002H "Accel_PID_XRollCurrentCount" 02H 00H 03H
CSLOCAL 43H 0004H 000AH 0002H "Accel_PID_XRollOutput" 02H 00H 03H
CSLOCAL 43H 0004H 000BH 0002H "Accel_PID_YPitchCurrentCount" 02H 00H 03H
CSLOCAL 43H 0004H 000CH 0002H "Accel_PID_YPitchOutput" 02H 00H 03H

;;		Accel_PID_XRollCurrentCount = Accel_PID_XRollCounter_D * .001;	//Timer in Seconds
CLINEA 0000H 0001H 0A9EH 0003H 0053H
	l	er0,	NEAR _Accel_PID_XRollCounter_D
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
	st	er0,	NEAR _$ST9
	st	er2,	NEAR _$ST9+02h

;;		Accel_PID_XRollCounter_D = 0;
CLINEA 0000H 0001H 0A9FH 0003H 001FH
	mov	er0,	#0 
	st	er0,	NEAR _Accel_PID_XRollCounter_D

;;		Accel_PID_XRolldErr	/= Accel_PID_XRollCurrentCount;
CLINEA 0000H 0001H 0AA3H 0003H 0035H
	l	er0,	NEAR _Accel_PID_XRollError
	l	er2,	NEAR _Accel_PID_XRollError+02h
	push	xr0
	l	er0,	NEAR _Accel_PID_XRollErrPrev
	l	er2,	NEAR _Accel_PID_XRollErrPrev+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	l	er0,	NEAR _$ST9
	l	er2,	NEAR _$ST9+02h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_PID_XRolldErr
	st	er2,	NEAR _Accel_PID_XRolldErr+02h

;;		if( Accel_PID_XRollError<0)
CLINEA 0000H 0001H 0AA5H 0003H 001DH
	l	er0,	NEAR _Accel_PID_XRollError
	l	er2,	NEAR _Accel_PID_XRollError+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$L528
CBLOCK 240 3 2726

;;			if(Accel_PID_XRollErrPrev>=0)
CLINEA 0000H 0001H 0AA7H 0004H 0020H
	l	er0,	NEAR _Accel_PID_XRollErrPrev
	l	er2,	NEAR _Accel_PID_XRollErrPrev+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$L528
CBLOCK 240 4 2728

;;				Accel_PID_XRollErrSum = 0;
CLINEA 0000H 0001H 0AA9H 0005H 001EH
	mov	er0,	#0 
	st	er0,	NEAR _Accel_PID_XRollErrSum
	st	er0,	NEAR _Accel_PID_XRollErrSum+02h
CBLOCKEND 240 4 2730

;;			}
CLINEA 0000H 0000H 0AAAH 0004H 0004H
_$L528 :
CBLOCKEND 240 3 2731

;;		if( Accel_PID_XRollError>=0)
CLINEA 0000H 0001H 0AADH 0003H 001EH
	l	er0,	NEAR _Accel_PID_XRollError
	l	er2,	NEAR _Accel_PID_XRollError+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$L532
CBLOCK 240 5 2734

;;			if(Accel_PID_XRollErrPrev<0)
CLINEA 0000H 0001H 0AAFH 0004H 001FH
	l	er0,	NEAR _Accel_PID_XRollErrPrev
	l	er2,	NEAR _Accel_PID_XRollErrPrev+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$L532
CBLOCK 240 6 2736

;;				Accel_PID_XRollErrSum = 0;
CLINEA 0000H 0001H 0AB1H 0005H 001EH
	mov	er0,	#0 
	st	er0,	NEAR _Accel_PID_XRollErrSum
	st	er0,	NEAR _Accel_PID_XRollErrSum+02h
CBLOCKEND 240 6 2738

;;			}
CLINEA 0000H 0000H 0AB2H 0004H 0004H
_$L532 :
CBLOCKEND 240 5 2739

;;		Accel_PID_XRollErrPrev = Accel_PID_XRollError;
CLINEA 0000H 0001H 0AB5H 0003H 0030H
	l	er0,	NEAR _Accel_PID_XRollError
	l	er2,	NEAR _Accel_PID_XRollError+02h
	st	er0,	NEAR _Accel_PID_XRollErrPrev
	st	er2,	NEAR _Accel_PID_XRollErrPrev+02h

;;		testD = (Accel_PID_XRoll_kd*Accel_PID_XRolldErr);
CLINEA 0000H 0001H 0AC2H 0003H 0033H
	l	er0,	NEAR _Accel_PID_XRoll_kd
	l	er2,	NEAR _Accel_PID_XRoll_kd+02h
	push	xr0
	l	er0,	NEAR _Accel_PID_XRolldErr
	l	er2,	NEAR _Accel_PID_XRolldErr+02h
	push	xr0
	bl	__fmulu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er8
	add	sp,	#2 
	st	er8,	NEAR _testD

;;		Accel_PID_XRollOutput += testD;
CLINEA 0000H 0001H 0AC4H 0003H 0021H
	l	er0,	NEAR _Accel_PID_XRollError
	l	er2,	NEAR _Accel_PID_XRollError+02h
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
	pop	xr4
	mov	r2,	r9
	extbw	er2
	mov	r2,	r3
	mov	er10,	er2
	push	xr8
	bl	__fildu8sw
	pop	xr0
	push	qr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _$ST10
	st	er2,	NEAR _$ST10+02h

;;		Accel_PID_YPitchCurrentCount = Accel_PID_YPitchCounter_D * .001;		//Timer in Seconds
CLINEA 0000H 0001H 0AC8H 0003H 0056H
	l	er0,	NEAR _Accel_PID_YPitchCounter_D
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
	st	er0,	NEAR _$ST11
	st	er2,	NEAR _$ST11+02h

;;		Accel_PID_YPitchCounter_D = 0;
CLINEA 0000H 0001H 0AC9H 0003H 0020H
	mov	er0,	#0 
	st	er0,	NEAR _Accel_PID_YPitchCounter_D

;;		Accel_PID_YPitchdErr /= Accel_PID_YPitchCurrentCount;
CLINEA 0000H 0001H 0ACEH 0003H 0037H
	l	er0,	NEAR _Accel_PID_YPitchError
	l	er2,	NEAR _Accel_PID_YPitchError+02h
	push	xr0
	l	er0,	NEAR _Accel_PID_YPitchErrPrev
	l	er2,	NEAR _Accel_PID_YPitchErrPrev+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	l	er0,	NEAR _$ST11
	l	er2,	NEAR _$ST11+02h
	push	xr0
	bl	__fdivu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _Accel_PID_YPitchdErr
	st	er2,	NEAR _Accel_PID_YPitchdErr+02h

;;		if( Accel_PID_YPitchError<0)
CLINEA 0000H 0001H 0AD0H 0003H 001EH
	l	er0,	NEAR _Accel_PID_YPitchError
	l	er2,	NEAR _Accel_PID_YPitchError+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$L536
CBLOCK 240 7 2769

;;			if(Accel_PID_YPitchErrPrev>=0) 
CLINEA 0000H 0001H 0AD2H 0004H 0022H
	l	er0,	NEAR _Accel_PID_YPitchErrPrev
	l	er2,	NEAR _Accel_PID_YPitchErrPrev+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$L536
CBLOCK 240 8 2771

;;				Accel_PID_YPitchErrSum = 0;
CLINEA 0000H 0001H 0AD4H 0005H 001FH
	mov	er0,	#0 
	st	er0,	NEAR _Accel_PID_YPitchErrSum
	st	er0,	NEAR _Accel_PID_YPitchErrSum+02h
CBLOCKEND 240 8 2773

;;			}
CLINEA 0000H 0000H 0AD5H 0004H 0004H
_$L536 :
CBLOCKEND 240 7 2774

;;		if( Accel_PID_YPitchError>=0)
CLINEA 0000H 0001H 0AD7H 0003H 001FH
	l	er0,	NEAR _Accel_PID_YPitchError
	l	er2,	NEAR _Accel_PID_YPitchError+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$L540
CBLOCK 240 9 2776

;;			if(Accel_PID_YPitchErrPrev<0)
CLINEA 0000H 0001H 0AD9H 0004H 0020H
	l	er0,	NEAR _Accel_PID_YPitchErrPrev
	l	er2,	NEAR _Accel_PID_YPitchErrPrev+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$L540
CBLOCK 240 10 2778

;;				Accel_PID_YPitchErrSum = 0;
CLINEA 0000H 0001H 0ADBH 0005H 001FH
	mov	er0,	#0 
	st	er0,	NEAR _Accel_PID_YPitchErrSum
	st	er0,	NEAR _Accel_PID_YPitchErrSum+02h
CBLOCKEND 240 10 2780

;;			}
CLINEA 0000H 0000H 0ADCH 0004H 0004H
_$L540 :
CBLOCKEND 240 9 2781

;;		Accel_PID_YPitchErrPrev = Accel_PID_YPitchError;
CLINEA 0000H 0001H 0ADFH 0003H 0032H
	l	er0,	NEAR _Accel_PID_YPitchError
	l	er2,	NEAR _Accel_PID_YPitchError+02h
	st	er0,	NEAR _Accel_PID_YPitchErrPrev
	st	er2,	NEAR _Accel_PID_YPitchErrPrev+02h

;;		Accel_PID_YPitchOutput = (Accel_PID_YPitch_kp*Accel_PID_YPitchError) + (Accel_PID_YPitch_ki*Accel_PID_YPitchErrSum) + (Accel_PID_YPitch_kd*Accel_PID_YPitchdErr);
CLINEA 0000H 0001H 0AEAH 0003H 00A3H
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
	l	er4,	NEAR _Accel_PID_YPitch_kd
	l	er6,	NEAR _Accel_PID_YPitch_kd+02h
	push	xr4
	l	er4,	NEAR _Accel_PID_YPitchdErr
	l	er6,	NEAR _Accel_PID_YPitchdErr+02h
	push	xr4
	bl	__fmulu8sw
	add	sp,	#4 
	pop	xr4
	push	xr0
	push	xr4
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _$ST12
	st	er2,	NEAR _$ST12+02h

;;		if(PrePIDCount >= 10){
CLINEA 0000H 0001H 0AECH 0003H 0018H
	l	r0,	NEAR _PrePIDCount
	cmp	r0,	#0ah
	bge	_$M42
	b	_$L549
_$M42 :
CBLOCK 240 11 2796

;;			if(Accel_PID_XRollError > 0){
CLINEA 0000H 0001H 0AEDH 0004H 0020H
	l	er0,	NEAR _Accel_PID_XRollError
	l	er2,	NEAR _Accel_PID_XRollError+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L544
CBLOCK 240 12 2797

;;				PERUN = 0;
CLINEA 0000H 0001H 0AEFH 0005H 000EH
	rb	0f937h.0

;;				PDRUN = 0;
CLINEA 0000H 0001H 0AF0H 0005H 000EH
	rb	0f927h.0

;;				PWED = PWMIdleDutyRun + Accel_PID_XRollOutput + PWMtoRPMOffset_Mot2;	
CLINEA 0000H 0001H 0AF3H 0005H 0049H
	l	er0,	NEAR _PWMIdleDutyRun
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _$ST10
	l	er2,	NEAR _$ST10+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	pop	xr4
	l	er0,	NEAR _PWMtoRPMOffset_Mot2
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	pop	xr0
	push	qr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f932h

;;				PWDD = PWMIdleDutyRun;
CLINEA 0000H 0001H 0AF6H 0005H 001AH
	l	er0,	NEAR _PWMIdleDutyRun
	st	er0,	0f922h

;;				CheckSafetyLimit();
CLINEA 0000H 0001H 0AF7H 0005H 0017H
	bl	_CheckSafetyLimit

;;				PDRUN = 1;
CLINEA 0000H 0001H 0AFAH 0005H 000EH
CBLOCKEND 240 12 2812

;;			else{
CLINEA 0000H 0001H 0AFDH 0004H 0008H
	bal	_$L546
_$L544 :
CBLOCK 240 13 2813

;;				PERUN = 0;
CLINEA 0000H 0001H 0AFFH 0005H 000EH
	rb	0f937h.0

;;				PDRUN = 0;
CLINEA 0000H 0001H 0B00H 0005H 000EH
	rb	0f927h.0

;;				PWED = PWMIdleDutyRun;	
CLINEA 0000H 0001H 0B03H 0005H 001BH
	l	er0,	NEAR _PWMIdleDutyRun
	st	er0,	0f932h

;;				PWDD = PWMIdleDutyRun - Accel_PID_XRollOutput + PWMtoRPMOffset_Mot4;
CLINEA 0000H 0001H 0B05H 0005H 0048H
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _$ST10
	l	er2,	NEAR _$ST10+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr4
	l	er0,	NEAR _PWMtoRPMOffset_Mot4
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	pop	xr0
	push	qr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f922h

;;				CheckSafetyLimit();
CLINEA 0000H 0001H 0B06H 0005H 0017H
	bl	_CheckSafetyLimit

;;				PDRUN = 1;
CLINEA 0000H 0001H 0B09H 0005H 000EH
CBLOCKEND 240 13 2827

;;			}
CLINEA 0000H 0000H 0B0BH 0004H 0004H
_$L546 :
	sb	0f937h.0
	sb	0f927h.0

;;			if(Accel_PID_YPitchError > 0){
CLINEA 0000H 0001H 0B0CH 0004H 0021H
	l	er0,	NEAR _Accel_PID_YPitchError
	l	er2,	NEAR _Accel_PID_YPitchError+02h
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L547
CBLOCK 240 14 2828

;;				PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 0B0DH 0005H 001DH
	rb	0f973h.0

;;				PCRUN = 0;
CLINEA 0000H 0001H 0B10H 0005H 000EH
	rb	0f917h.0

;;				PWF0D = PWMIdleDutyRun + Accel_PID_YPitchOutput; 		//Can't be running to change (Only this variable)
CLINEA 0000H 0001H 0B11H 0005H 0068H
	l	er0,	NEAR _PWMIdleDutyRun
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _$ST12
	l	er2,	NEAR _$ST12+02h
	push	xr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f962h

;;				PWCD = PWMIdleDutyRun;	
CLINEA 0000H 0001H 0B13H 0005H 001BH
	l	er0,	NEAR _PWMIdleDutyRun
	st	er0,	0f912h

;;				CheckSafetyLimit();
CLINEA 0000H 0001H 0B15H 0005H 0017H
	bl	_CheckSafetyLimit

;;				PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0B16H 0005H 001CH
	sb	0f973h.0

;;				PCRUN = 1;
CLINEA 0000H 0001H 0B19H 0005H 000EH
	sb	0f917h.0
CBLOCKEND 240 14 2842

;;			else{
CLINEA 0000H 0001H 0B1BH 0004H 0008H
	bal	_$L549
_$L547 :
CBLOCK 240 15 2843

;;				PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 0B1CH 0005H 001DH
	rb	0f973h.0

;;				PCRUN = 0;
CLINEA 0000H 0001H 0B1FH 0005H 000EH
	rb	0f917h.0

;;				PWF0D = PWMIdleDutyRun; 		//Can't be running to change (Only this variable)
CLINEA 0000H 0001H 0B20H 0005H 004FH
	l	er0,	NEAR _PWMIdleDutyRun
	st	er0,	0f962h

;;				PWCD = PWMIdleDutyRun - Accel_PID_YPitchOutput + PWMtoRPMOffset_Mot3;	
CLINEA 0000H 0001H 0B22H 0005H 004AH
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	l	er0,	NEAR _$ST12
	l	er2,	NEAR _$ST12+02h
	push	xr0
	bl	__fsubu8sw
	add	sp,	#4 
	pop	xr4
	l	er0,	NEAR _PWMtoRPMOffset_Mot3
	mov	er2,	#0 
	push	xr0
	bl	__fuldu8sw
	pop	xr0
	push	qr0
	bl	__faddu8sw
	add	sp,	#4 
	bl	__ftolu8sw
	pop	er0
	add	sp,	#2 
	st	er0,	0f912h

;;				CheckSafetyLimit();
CLINEA 0000H 0001H 0B24H 0005H 0017H
	bl	_CheckSafetyLimit

;;				PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0B25H 0005H 001CH
	sb	0f973h.0

;;				PCRUN = 1;
CLINEA 0000H 0001H 0B28H 0005H 000EH
	sb	0f917h.0
CBLOCKEND 240 15 2857

;;			}
CLINEA 0000H 0000H 0B29H 0004H 0004H
_$L549 :
CBLOCKEND 240 11 2858
CBLOCKEND 240 2 2888

;;}
CLINEA 0000H 0001H 0B48H 0001H 0001H
	pop	xr4
	pop	xr8
	pop	pc
CBLOCKEND 240 1 2888
CFUNCTIONEND 240


	rseg $$RangeSensorControlPID$main
CFUNCTION 241

_RangeSensorControlPID	:
CBLOCK 241 1 2889

;;void RangeSensorControlPID(void){
CLINEA 0000H 0001H 0B49H 0001H 0021H
	push	lr
	push	xr8
	push	xr4
CBLOCK 241 2 2889
CRET 0008H
CLOCAL 47H 0002H 0024H 0002H "i" 02H 00H 01H

;;	Range_PIDError = Range_PIDSetpoint - Range_out;
CLINEA 0000H 0001H 0B4EH 0002H 0030H
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
CLINEA 0000H 0001H 0B51H 0002H 0071H
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
CLINEA 0000H 0001H 0B52H 0002H 0016H
	mov	er4,	#0 
	st	er4,	NEAR _Range_PIDCounter

;;	Range_PIDErrSum += (Range_PIDError * Range_PIDCurrentCount);
CLINEA 0000H 0001H 0B55H 0002H 003DH
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
CLINEA 0000H 0001H 0B59H 0002H 0028H
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
CLINEA 0000H 0001H 0B5AH 0002H 0023H
	st	er0,	NEAR _Range_PIDErrPrev
	st	er2,	NEAR _Range_PIDErrPrev+02h

;;	Range_PIDOutput = (Range_PID_kp*Range_PIDError) + (Range_PID_ki*Range_PIDErrSum) + (Range_PID_kd*Range_PIDdErr);
CLINEA 0000H 0001H 0B5DH 0002H 0071H
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
CLINEA 0000H 0001H 0B61H 0002H 001AH
	rb	0f973h.0

;;	PERUN = 0;
CLINEA 0000H 0001H 0B62H 0002H 000BH
	rb	0f937h.0

;;	PDRUN = 0;
CLINEA 0000H 0001H 0B63H 0002H 000BH
	rb	0f927h.0

;;	PCRUN = 0;
CLINEA 0000H 0001H 0B64H 0002H 000BH
	rb	0f917h.0

;;	PWF0D += Range_PIDOutput; 		//Can't be running to change (Only this variable)
CLINEA 0000H 0001H 0B65H 0002H 004EH
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
CLINEA 0000H 0001H 0B66H 0002H 001AH
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
CLINEA 0000H 0001H 0B67H 0002H 001AH
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
CLINEA 0000H 0001H 0B68H 0002H 0019H
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
CLINEA 0000H 0001H 0B69H 0002H 0014H
	bl	_CheckSafetyLimit

;;	PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0B6AH 0002H 0019H
	sb	0f973h.0

;;	PERUN = 1;
CLINEA 0000H 0001H 0B6BH 0002H 000BH
	sb	0f937h.0

;;	PDRUN = 1;
CLINEA 0000H 0001H 0B6CH 0002H 000BH
	sb	0f927h.0

;;	PCRUN = 1;
CLINEA 0000H 0001H 0B6DH 0002H 000BH
	sb	0f917h.0

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0001H 0B6FH 0002H 0017H
	mov	er0,	#0 
_$L553 :
CBLOCK 241 3 2928

;;		SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 0B71H 0003H 0019H
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er0]
CBLOCKEND 241 3 2930

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0B6FH 0002H 0017H
	add	er0,	#1 

;;	for(i = 0; i<150; i++)
CLINEA 0000H 0000H 0B6FH 000EH 0013H
	cmp	r0,	#096h
	cmpc	r1,	#00h
	blts	_$L553

;;	sprintf(SensorReturn, "%f,%f,%f", Range_out, Range_PIDCurrentCount,Range_PIDOutput);
CLINEA 0000H 0001H 0B75H 0002H 0055H
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
	mov	r0,	#BYTE1 OFFSET $$S196
	mov	r1,	#BYTE2 OFFSET $$S196
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#22

;;	SensorReturn[148] = 0x0D;
CLINEA 0000H 0001H 0B77H 0002H 001AH
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+094h

;;	SensorReturn[149] = 0x0A;
CLINEA 0000H 0001H 0B78H 0002H 001AH
	mov	r0,	#0ah
	st	r0,	NEAR _SensorReturn+095h

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0B7BH 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 0B7CH 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(SensorReturn, 150, _funcUartFin);
CLINEA 0000H 0001H 0B7DH 0002H 0031H
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
CLINEA 0000H 0000H 0B7EH 0001H 0001H
	bal	_$L561

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0B7EH 0002H 0019H
_$L559 :
CBLOCK 241 4 2942

;;		main_clrWDT();
CLINEA 0000H 0001H 0B7FH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 241 4 2944

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0B7EH 0001H 0001H
_$L561 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0B7EH 000EH 0013H
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L559
CBLOCKEND 241 2 2946

;;}
CLINEA 0000H 0001H 0B82H 0001H 0001H
	pop	xr4
	pop	xr8
	pop	pc
CBLOCKEND 241 1 2946
CFUNCTIONEND 241


	rseg $$CheckSafetyLimit$main
CFUNCTION 242

_CheckSafetyLimit	:
CBLOCK 242 1 2948

;;void CheckSafetyLimit(void){	
CLINEA 0000H 0001H 0B84H 0001H 001DH
CBLOCK 242 2 2948

;;	if(PWED > PWMUpperDutyLimitRun){
CLINEA 0000H 0001H 0B86H 0002H 0021H
	l	er0,	0f932h
	l	er2,	NEAR _PWMUpperDutyLimitRun
	cmp	er0,	er2
	ble	_$L563
CBLOCK 242 3 2950

;;		PWED = PWMUpperDutyLimitRun;
CLINEA 0000H 0001H 0B87H 0003H 001EH
	st	er2,	0f932h
CBLOCKEND 242 3 2952

;;	}
CLINEA 0000H 0000H 0B88H 0002H 0002H
_$L563 :

;;	if(PWED < PWMLowerDutyLimitRun){
CLINEA 0000H 0001H 0B89H 0002H 0021H
	l	er0,	0f932h
	l	er2,	NEAR _PWMLowerDutyLimitRun
	cmp	er0,	er2
	bge	_$L565
CBLOCK 242 4 2953

;;		PWED = PWMLowerDutyLimitRun;
CLINEA 0000H 0001H 0B8AH 0003H 001EH
	st	er2,	0f932h
CBLOCKEND 242 4 2955

;;	}
CLINEA 0000H 0000H 0B8BH 0002H 0002H
_$L565 :

;;	if(PWF0D > PWMUpperDutyLimitRun){
CLINEA 0000H 0001H 0B8CH 0002H 0022H
	l	er0,	0f962h
	l	er2,	NEAR _PWMUpperDutyLimitRun
	cmp	er0,	er2
	ble	_$L567
CBLOCK 242 5 2956

;;		PWF0D = PWMUpperDutyLimitRun;
CLINEA 0000H 0001H 0B8DH 0003H 001FH
	st	er2,	0f962h
CBLOCKEND 242 5 2958

;;	}
CLINEA 0000H 0000H 0B8EH 0002H 0002H
_$L567 :

;;	if(PWF0D < PWMLowerDutyLimitRun){
CLINEA 0000H 0001H 0B8FH 0002H 0022H
	l	er0,	0f962h
	l	er2,	NEAR _PWMLowerDutyLimitRun
	cmp	er0,	er2
	bge	_$L569
CBLOCK 242 6 2959

;;		PWF0D = PWMLowerDutyLimitRun;
CLINEA 0000H 0001H 0B90H 0003H 001FH
	st	er2,	0f962h
CBLOCKEND 242 6 2961

;;	}
CLINEA 0000H 0000H 0B91H 0002H 0002H
_$L569 :

;;	if(PWDD > PWMUpperDutyLimitRun){
CLINEA 0000H 0001H 0B92H 0002H 0021H
	l	er0,	0f922h
	l	er2,	NEAR _PWMUpperDutyLimitRun
	cmp	er0,	er2
	ble	_$L571
CBLOCK 242 7 2962

;;		PWDD = PWMUpperDutyLimitRun;
CLINEA 0000H 0001H 0B93H 0003H 001EH
	st	er2,	0f922h
CBLOCKEND 242 7 2964

;;	}
CLINEA 0000H 0000H 0B94H 0002H 0002H
_$L571 :

;;	if(PWDD < PWMLowerDutyLimitRun){
CLINEA 0000H 0001H 0B95H 0002H 0021H
	l	er0,	0f922h
	l	er2,	NEAR _PWMLowerDutyLimitRun
	cmp	er0,	er2
	bge	_$L573
CBLOCK 242 8 2965

;;		PWDD = PWMLowerDutyLimitRun;
CLINEA 0000H 0001H 0B96H 0003H 001EH
	st	er2,	0f922h
CBLOCKEND 242 8 2967

;;	}
CLINEA 0000H 0000H 0B97H 0002H 0002H
_$L573 :

;;	if(PWCD > PWMUpperDutyLimitRun){
CLINEA 0000H 0001H 0B98H 0002H 0021H
	l	er0,	0f912h
	l	er2,	NEAR _PWMUpperDutyLimitRun
	cmp	er0,	er2
	ble	_$L575
CBLOCK 242 9 2968

;;		PWCD = PWMUpperDutyLimitRun;
CLINEA 0000H 0001H 0B99H 0003H 001EH
	st	er2,	0f912h
CBLOCKEND 242 9 2970

;;	}
CLINEA 0000H 0000H 0B9AH 0002H 0002H
_$L575 :

;;	if(PWCD < PWMLowerDutyLimitRun){
CLINEA 0000H 0001H 0B9BH 0002H 0021H
	l	er0,	0f912h
	l	er2,	NEAR _PWMLowerDutyLimitRun
	cmp	er0,	er2
	bge	_$L577
CBLOCK 242 10 2971

;;		PWCD = PWMLowerDutyLimitRun;
CLINEA 0000H 0001H 0B9CH 0003H 001EH
	st	er2,	0f912h
CBLOCKEND 242 10 2973

;;	}
CLINEA 0000H 0000H 0B9DH 0002H 0002H
_$L577 :
CBLOCKEND 242 2 2974

;;}
CLINEA 0000H 0001H 0B9EH 0001H 0001H
	rt
CBLOCKEND 242 1 2974
CFUNCTIONEND 242


	rseg $$CheckSafetyLimitUnscaled$main
CFUNCTION 243

_CheckSafetyLimitUnscaled	:
CBLOCK 243 1 2976

;;void CheckSafetyLimitUnscaled(void){	
CLINEA 0000H 0001H 0BA0H 0001H 0025H
CBLOCK 243 2 2976

;;	if(Accel_PID_Motor1 > (49151)){
CLINEA 0000H 0001H 0BA2H 0002H 0020H
	l	er0,	NEAR _Accel_PID_Motor1
	mov	er2,	#0 
	cmp	r0,	#0ffh
	cmpc	r1,	#0bfh
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	bles	_$L580
CBLOCK 243 3 2978

;;		Accel_PID_Motor1 = 49151;
CLINEA 0000H 0001H 0BA3H 0003H 001BH
	mov	r0,	#0ffh
	mov	r1,	#0bfh
	st	er0,	NEAR _Accel_PID_Motor1
CBLOCKEND 243 3 2980

;;	}
CLINEA 0000H 0000H 0BA4H 0002H 0002H
_$L580 :

;;	if(Accel_PID_Motor1 < 16383){
CLINEA 0000H 0001H 0BA5H 0002H 001EH
	l	er0,	NEAR _Accel_PID_Motor1
	cmp	r0,	#0ffh
	cmpc	r1,	#03fh
	bge	_$L582
CBLOCK 243 4 2981

;;		Accel_PID_Motor1 = 16383;
CLINEA 0000H 0001H 0BA6H 0003H 001BH
	mov	r0,	#0ffh
	mov	r1,	#03fh
	st	er0,	NEAR _Accel_PID_Motor1
CBLOCKEND 243 4 2983

;;	}
CLINEA 0000H 0000H 0BA7H 0002H 0002H
_$L582 :

;;	if(Accel_PID_Motor2 > (49151)){
CLINEA 0000H 0001H 0BA8H 0002H 0020H
	l	er0,	NEAR _Accel_PID_Motor2
	mov	er2,	#0 
	cmp	r0,	#0ffh
	cmpc	r1,	#0bfh
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	bles	_$L584
CBLOCK 243 5 2984

;;		Accel_PID_Motor2 = 49151;
CLINEA 0000H 0001H 0BA9H 0003H 001BH
	mov	r0,	#0ffh
	mov	r1,	#0bfh
	st	er0,	NEAR _Accel_PID_Motor2
CBLOCKEND 243 5 2986

;;	}
CLINEA 0000H 0000H 0BAAH 0002H 0002H
_$L584 :

;;	if(Accel_PID_Motor2 < (16383)){
CLINEA 0000H 0001H 0BABH 0002H 0020H
	l	er0,	NEAR _Accel_PID_Motor2
	cmp	r0,	#0ffh
	cmpc	r1,	#03fh
	bge	_$L586
CBLOCK 243 6 2987

;;		Accel_PID_Motor2 = 16383;
CLINEA 0000H 0001H 0BACH 0003H 001BH
	mov	r0,	#0ffh
	mov	r1,	#03fh
	st	er0,	NEAR _Accel_PID_Motor2
CBLOCKEND 243 6 2989

;;	}
CLINEA 0000H 0000H 0BADH 0002H 0002H
_$L586 :

;;	if(Accel_PID_Motor3 > (49151)){
CLINEA 0000H 0001H 0BAEH 0002H 0020H
	l	er0,	NEAR _Accel_PID_Motor3
	mov	er2,	#0 
	cmp	r0,	#0ffh
	cmpc	r1,	#0bfh
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	bles	_$L588
CBLOCK 243 7 2990

;;		Accel_PID_Motor3 = 49151;
CLINEA 0000H 0001H 0BAFH 0003H 001BH
	mov	r0,	#0ffh
	mov	r1,	#0bfh
	st	er0,	NEAR _Accel_PID_Motor3
CBLOCKEND 243 7 2992

;;	}
CLINEA 0000H 0000H 0BB0H 0002H 0002H
_$L588 :

;;	if(Accel_PID_Motor3 < (16383)){
CLINEA 0000H 0001H 0BB1H 0002H 0020H
	l	er0,	NEAR _Accel_PID_Motor3
	cmp	r0,	#0ffh
	cmpc	r1,	#03fh
	bge	_$L590
CBLOCK 243 8 2993

;;		Accel_PID_Motor3 = 16383;
CLINEA 0000H 0001H 0BB2H 0003H 001BH
	mov	r0,	#0ffh
	mov	r1,	#03fh
	st	er0,	NEAR _Accel_PID_Motor3
CBLOCKEND 243 8 2995

;;	}
CLINEA 0000H 0000H 0BB3H 0002H 0002H
_$L590 :

;;	if(Accel_PID_Motor4 > (49151)){
CLINEA 0000H 0001H 0BB4H 0002H 0020H
	l	er0,	NEAR _Accel_PID_Motor4
	mov	er2,	#0 
	cmp	r0,	#0ffh
	cmpc	r1,	#0bfh
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	bles	_$L592
CBLOCK 243 9 2996

;;		Accel_PID_Motor4 = 49151;
CLINEA 0000H 0001H 0BB5H 0003H 001BH
	mov	r0,	#0ffh
	mov	r1,	#0bfh
	st	er0,	NEAR _Accel_PID_Motor4
CBLOCKEND 243 9 2998

;;	}
CLINEA 0000H 0000H 0BB6H 0002H 0002H
_$L592 :

;;	if(Accel_PID_Motor4 < (16383)){
CLINEA 0000H 0001H 0BB7H 0002H 0020H
	l	er0,	NEAR _Accel_PID_Motor4
	cmp	r0,	#0ffh
	cmpc	r1,	#03fh
	bge	_$L594
CBLOCK 243 10 2999

;;		Accel_PID_Motor4 = 16383;
CLINEA 0000H 0001H 0BB8H 0003H 001BH
	mov	r0,	#0ffh
	mov	r1,	#03fh
	st	er0,	NEAR _Accel_PID_Motor4
CBLOCKEND 243 10 3001

;;	}
CLINEA 0000H 0000H 0BB9H 0002H 0002H
_$L594 :
CBLOCKEND 243 2 3002

;;}
CLINEA 0000H 0001H 0BBAH 0001H 0001H
	rt
CBLOCKEND 243 1 3002
CFUNCTIONEND 243


	rseg $$Shutdown$main
CFUNCTION 244

_Shutdown	:
CBLOCK 244 1 3004

;;void Shutdown(void){
CLINEA 0000H 0001H 0BBCH 0001H 0014H
	push	lr
CBLOCK 244 2 3004
CRET 0000H

;;	if((PWED > PWMSafeDuty)||(PWF0D > PWMSafeDuty)||(PWDD > PWMSafeDuty)||(PWCD > PWMSafeDuty)){
CLINEA 0000H 0001H 0BBDH 0002H 005DH
	l	er0,	0f932h
	l	er2,	NEAR _PWMSafeDuty
	cmp	er0,	er2
	bgt	_$L598
	l	er0,	0f962h
	cmp	er0,	er2
	bgt	_$L598
	l	er0,	0f922h
	cmp	er0,	er2
	bgt	_$L598
	l	er0,	0f912h
	cmp	er0,	er2
	bgt	_$M47
	b	_$L611
_$M47 :
_$L598 :
CBLOCK 244 3 3005
CBLOCK 244 4 3006

;;			main_clrWDT();					
CLINEA 0000H 0001H 0BBFH 0004H 0016H
	bl	_main_clrWDT

;;			PFRUN = 0;	//Turn OFF PWM
CLINEA 0000H 0001H 0BC0H 0004H 001CH
	rb	0f973h.0

;;			PERUN = 0;
CLINEA 0000H 0001H 0BC1H 0004H 000DH
	rb	0f937h.0

;;			PDRUN = 0;
CLINEA 0000H 0001H 0BC2H 0004H 000DH
	rb	0f927h.0

;;			PCRUN = 0;
CLINEA 0000H 0001H 0BC3H 0004H 000DH
	rb	0f917h.0

;;			PWF0D -= 10; //Can't be running to change (Only this variable)
CLINEA 0000H 0001H 0BC4H 0004H 0041H
	l	er0,	0f962h
	add	er0,	#-10
	st	er0,	0f962h

;;			PWED -= 10;
CLINEA 0000H 0001H 0BC5H 0004H 000EH
	l	er0,	0f932h
	add	er0,	#-10
	st	er0,	0f932h

;;			PWDD -= 10;
CLINEA 0000H 0001H 0BC6H 0004H 000EH
	l	er0,	0f922h
	add	er0,	#-10
	st	er0,	0f922h

;;			PWCD -= 10;
CLINEA 0000H 0001H 0BC7H 0004H 000EH
	l	er0,	0f912h
	add	er0,	#-10
	st	er0,	0f912h

;;			PFRUN = 1;	//Turn ON PWM
CLINEA 0000H 0001H 0BC8H 0004H 001BH
	sb	0f973h.0

;;			PERUN = 1;
CLINEA 0000H 0001H 0BC9H 0004H 000DH
	sb	0f937h.0

;;			PDRUN = 1;
CLINEA 0000H 0001H 0BCAH 0004H 000DH
	sb	0f927h.0

;;			PCRUN = 1;
CLINEA 0000H 0001H 0BCBH 0004H 000DH
	sb	0f917h.0

;;			NOPms(100);
CLINEA 0000H 0001H 0BCCH 0004H 000EH
	mov	r0,	#064h
	mov	r1,	#00h
	bl	_NOPms

;;			if(PWED <= PWMSafeDuty){
CLINEA 0000H 0001H 0BCEH 0004H 001BH
	l	er0,	0f932h
	l	er2,	NEAR _PWMSafeDuty
	cmp	er0,	er2
	bgt	_$L614
CBLOCK 244 5 3022

;;				PWED = PWMSafeDuty;
CLINEA 0000H 0001H 0BCFH 0005H 0017H
	st	er2,	0f932h
CBLOCKEND 244 5 3024

;;			}
CLINEA 0000H 0000H 0BD0H 0004H 0004H
_$L614 :

;;			if(PWF0D <= PWMSafeDuty){
CLINEA 0000H 0001H 0BD1H 0004H 001CH
	l	er0,	0f962h
	cmp	er0,	er2
	bgt	_$L616
CBLOCK 244 6 3025

;;				PWF0D = PWMSafeDuty;
CLINEA 0000H 0001H 0BD2H 0005H 0018H
	st	er2,	0f962h
CBLOCKEND 244 6 3027

;;			}
CLINEA 0000H 0000H 0BD3H 0004H 0004H
_$L616 :

;;			if(PWDD <= PWMSafeDuty){
CLINEA 0000H 0001H 0BD4H 0004H 001BH
	l	er0,	0f922h
	cmp	er0,	er2
	bgt	_$L618
CBLOCK 244 7 3028

;;				PWDD = PWMSafeDuty;
CLINEA 0000H 0001H 0BD5H 0005H 0017H
	st	er2,	0f922h
CBLOCKEND 244 7 3030

;;			}
CLINEA 0000H 0000H 0BD6H 0004H 0004H
_$L618 :

;;			if(PWCD <= PWMSafeDuty){
CLINEA 0000H 0001H 0BD7H 0004H 001BH
	l	er0,	0f912h
	cmp	er0,	er2
	bgt	_$L620
CBLOCK 244 8 3031

;;				PWCD = PWMSafeDuty;
CLINEA 0000H 0001H 0BD8H 0005H 0017H
	st	er2,	0f912h
CBLOCKEND 244 8 3033

;;			}
CLINEA 0000H 0000H 0BD9H 0004H 0004H
_$L620 :
CBLOCKEND 244 4 3035

;;		}while((PWED > PWMSafeDuty)||(PWF0D > PWMSafeDuty)||(PWDD > PWMSafeDuty)||(PWCD > PWMSafeDuty));
CLINEA 0000H 0000H 0BDBH 0003H 0062H
	l	er0,	0f932h
	cmp	er0,	er2
	ble	_$M48
	b	_$L598
_$M48 :
	l	er0,	0f962h
	cmp	er0,	er2
	ble	_$M49
	b	_$L598
_$M49 :
	l	er0,	0f922h
	cmp	er0,	er2
	ble	_$M50
	b	_$L598
_$M50 :
	l	er0,	0f912h
	cmp	er0,	er2
	ble	_$M51
	b	_$L598
_$M51 :
_$L611 :
CBLOCKEND 244 3 3036

;;	Accel_PID_Motor1 = 16383;
CLINEA 0000H 0001H 0BDDH 0002H 001AH
	mov	r0,	#0ffh
	mov	r1,	#03fh
	st	er0,	NEAR _Accel_PID_Motor1

;;	Accel_PID_Motor2 = 16383;
CLINEA 0000H 0001H 0BDEH 0002H 001AH
	st	er0,	NEAR _Accel_PID_Motor2

;;	Accel_PID_Motor3 = 16383;
CLINEA 0000H 0001H 0BDFH 0002H 001AH
	st	er0,	NEAR _Accel_PID_Motor3

;;	Accel_PID_Motor4 = 16383;
CLINEA 0000H 0001H 0BE0H 0002H 001AH
	st	er0,	NEAR _Accel_PID_Motor4
CBLOCKEND 244 2 3042

;;}
CLINEA 0000H 0001H 0BE2H 0001H 0001H
	pop	pc
CBLOCKEND 244 1 3042
CFUNCTIONEND 244


	rseg $$ESC1_PWM$main
CFUNCTION 215

_ESC1_PWM	:
CBLOCK 215 1 3046

;;void ESC1_PWM(void){
CLINEA 0000H 0001H 0BE6H 0001H 0014H
CBLOCK 215 2 3046

;;      PC0DIR = 0;       // PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 0BF5H 0007H 003BH
	rb	0f261h.0

;;      PC0C1  = 1;       // PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0BF8H 0007H 003BH
	sb	0f263h.0

;;      PC0C0  = 1;       
CLINEA 0000H 0001H 0BF9H 0007H 0018H
	sb	0f262h.0

;;      PC0MD1  = 1;            // PortC Bit0 set to PWM Output (1,0)...
CLINEA 0000H 0001H 0BFCH 0007H 0046H
	sb	0f265h.0

;;      PC0MD0  = 0;      
CLINEA 0000H 0001H 0BFDH 0007H 0018H
	rb	0f264h.0

;;      PFCS1 = 0;        //00= LS; 01=HS; 10=PLL
CLINEA 0000H 0001H 0C01H 0007H 002FH
	rb	0f972h.1

;;      PFCS0 = 1;
CLINEA 0000H 0001H 0C02H 0007H 0010H
	sb	0f972h.0

;;      PWFP = PWMPeriod;            // Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)
CLINEA 0000H 0001H 0C05H 0007H 0092H
	l	er0,	NEAR _PWMPeriod
	st	er0,	0f960h

;;      PWF0D =    PWMSafeDuty;           //12    ~  0.25 % duty cycle @ 160Hz
CLINEA 0000H 0001H 0C0FH 0007H 004CH
	l	er0,	NEAR _PWMSafeDuty
	st	er0,	0f962h

;;      PFRUN = 0;        // OFF to start
CLINEA 0000H 0001H 0C11H 0007H 0027H
	rb	0f973h.0
CBLOCKEND 215 2 3090

;;}
CLINEA 0000H 0001H 0C12H 0001H 0001H
	rt
CBLOCKEND 215 1 3090
CFUNCTIONEND 215


	rseg $$ESC2_PWM$main
CFUNCTION 216

_ESC2_PWM	:
CBLOCK 216 1 3095

;;void ESC2_PWM(void){
CLINEA 0000H 0001H 0C17H 0001H 0014H
CBLOCK 216 2 3095

;;      PB2DIR = 0;       // PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 0C26H 0007H 003BH
	rb	0f259h.2

;;      PB2C1  = 1;       // PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0C29H 0007H 003BH
	sb	0f25bh.2

;;      PB2C0  = 1;       
CLINEA 0000H 0001H 0C2AH 0007H 0018H
	sb	0f25ah.2

;;      PB2MD1  = 0;            // PortB Bit0 set to PWM Output (0,1)...
CLINEA 0000H 0001H 0C2DH 0007H 0046H
	rb	0f25dh.2

;;      PB2MD0  = 1;      
CLINEA 0000H 0001H 0C2EH 0007H 0018H
	sb	0f25ch.2

;;      PECS1 = 0;        //00= LS; 01=HS; 10=PLL
CLINEA 0000H 0001H 0C32H 0007H 002FH
	rb	0f936h.1

;;      PECS0 = 1;
CLINEA 0000H 0001H 0C33H 0007H 0010H
	sb	0f936h.0

;;      PWEP = PWMPeriod;            // Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)
CLINEA 0000H 0001H 0C36H 0007H 0092H
	l	er0,	NEAR _PWMPeriod
	st	er0,	0f930h

;;      PWED =    PWMSafeDuty;           //12    ~  0.25 % duty cycle @ 160Hz
CLINEA 0000H 0001H 0C40H 0007H 004BH
	l	er0,	NEAR _PWMSafeDuty
	st	er0,	0f932h

;;      PERUN = 0;        // OFF to start
CLINEA 0000H 0001H 0C42H 0007H 0027H
	rb	0f937h.0
CBLOCKEND 216 2 3139

;;}
CLINEA 0000H 0001H 0C43H 0001H 0001H
	rt
CBLOCKEND 216 1 3139
CFUNCTIONEND 216


	rseg $$ESC3_PWM$main
CFUNCTION 217

_ESC3_PWM	:
CBLOCK 217 1 3145

;;void ESC3_PWM(void){
CLINEA 0000H 0001H 0C49H 0001H 0014H
CBLOCK 217 2 3145

;;      PA1DIR = 0;       // PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 0C58H 0007H 003BH
	rb	0f251h.1

;;      PA1C1  = 1;       // PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0C5BH 0007H 003BH
	sb	0f253h.1

;;      PA1C0  = 1;       
CLINEA 0000H 0001H 0C5CH 0007H 0018H
	sb	0f252h.1

;;      PA1MD1  = 0;            // PortB Bit0 set to PWM Output (0,1)...
CLINEA 0000H 0001H 0C5FH 0007H 0046H
	rb	0f255h.1

;;      PA1MD0  = 1;      
CLINEA 0000H 0001H 0C60H 0007H 0018H
	sb	0f254h.1

;;      PDCS1 = 0;        //00= LS; 01=HS; 10=PLL
CLINEA 0000H 0001H 0C64H 0007H 002FH
	rb	0f926h.1

;;      PDCS0 = 1;
CLINEA 0000H 0001H 0C65H 0007H 0010H
	sb	0f926h.0

;;      PWDP = PWMPeriod;            // Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)
CLINEA 0000H 0001H 0C68H 0007H 0092H
	l	er0,	NEAR _PWMPeriod
	st	er0,	0f920h

;;      PWDD =    PWMSafeDuty;           //12    ~  0.25 % duty cycle @ 160Hz
CLINEA 0000H 0001H 0C72H 0007H 004BH
	l	er0,	NEAR _PWMSafeDuty
	st	er0,	0f922h

;;      PDRUN = 0;        // OFF to start
CLINEA 0000H 0001H 0C74H 0007H 0027H
	rb	0f927h.0
CBLOCKEND 217 2 3189

;;}
CLINEA 0000H 0001H 0C75H 0001H 0001H
	rt
CBLOCKEND 217 1 3189
CFUNCTIONEND 217


	rseg $$ESC4_PWM$main
CFUNCTION 218

_ESC4_PWM	:
CBLOCK 218 1 3196

;;void ESC4_PWM(void){
CLINEA 0000H 0001H 0C7CH 0001H 0014H
CBLOCK 218 2 3196

;;      PA0DIR = 0;       // PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 0C8BH 0007H 003BH
	rb	0f251h.0

;;      PA0C1  = 1;       // PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0C8EH 0007H 003BH
	sb	0f253h.0

;;      PA0C0  = 1;       
CLINEA 0000H 0001H 0C8FH 0007H 0018H
	sb	0f252h.0

;;      PA0MD1  = 0;            // PortB Bit0 set to PWM Output (0,1)...
CLINEA 0000H 0001H 0C92H 0007H 0046H
	rb	0f255h.0

;;      PA0MD0  = 1;      
CLINEA 0000H 0001H 0C93H 0007H 0018H
	sb	0f254h.0

;;      PCCS1 = 0;        //00= LS; 01=HS; 10=PLL
CLINEA 0000H 0001H 0C97H 0007H 002FH
	rb	0f916h.1

;;      PCCS0 = 1;
CLINEA 0000H 0001H 0C98H 0007H 0010H
	sb	0f916h.0

;;      PWCP = PWMPeriod;            // Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)
CLINEA 0000H 0001H 0C9BH 0007H 0092H
	l	er0,	NEAR _PWMPeriod
	st	er0,	0f910h

;;      PWCD =    PWMSafeDuty;           //12    ~  0.25 % duty cycle @ 160Hz
CLINEA 0000H 0001H 0CA6H 0007H 004BH
	l	er0,	NEAR _PWMSafeDuty
	st	er0,	0f912h

;;      PCRUN = 0;        // OFF to start
CLINEA 0000H 0001H 0CAAH 0007H 0027H
	rb	0f917h.0
CBLOCKEND 218 2 3243

;;}
CLINEA 0000H 0001H 0CABH 0001H 0001H
	rt
CBLOCKEND 218 1 3243
CFUNCTIONEND 218


	rseg $$TBC_ISR$main
CFUNCTION 256

_TBC_ISR	:
CBLOCK 256 1 3248

;;{
CLINEA 0000H 0001H 0CB0H 0001H 0001H
CBLOCK 256 2 3248

;;	E128H = 0;	//Turn OFF TBC Interrupt
CLINEA 0000H 0001H 0CB1H 0002H 0024H
	rb	0f016h.5

;;	E128H = 1;	//Turn ON TBC Interrupt
CLINEA 0000H 0001H 0CB2H 0002H 0023H
	sb	0f016h.5
CBLOCKEND 256 2 3251

;;}
CLINEA 0000H 0001H 0CB3H 0001H 0001H
	rt
CBLOCKEND 256 1 3251
CFUNCTIONEND 256


	rseg $$TMR89_ISR$main
CFUNCTION 257

_TMR89_ISR	:
CBLOCK 257 1 3256

;;{
CLINEA 0000H 0001H 0CB8H 0001H 0001H
	push	lr
CBLOCK 257 2 3256
CRET 0000H

;;	LED_1 ^= 1;
CLINEA 0000H 0001H 0CB9H 0002H 000CH
	tb	0f250h.2
	beq	_$M58
	rb	0f250h.2
	bal	_$M59
_$M58 :
	sb	0f250h.2
_$M59 :

;;	Accel_PID_XRollCounter_I++;
CLINEA 0000H 0000H 0CC0H 0002H 001CH
	l	er0,	NEAR _Accel_PID_XRollCounter_I
	add	er0,	#1 
	st	er0,	NEAR _Accel_PID_XRollCounter_I

;;	if(Accel_PID_XRollCounter_I >= 65535){
CLINEA 0000H 0001H 0CC1H 0002H 0027H
	mov	er2,	#0 
	cmp	r0,	#0ffh
	cmpc	r1,	#0ffh
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	blts	_$L639
CBLOCK 257 3 3265

;;		Accel_PID_XRollCounter_I = 0;
CLINEA 0000H 0001H 0CC2H 0003H 001FH
	mov	er0,	#0 
	st	er0,	NEAR _Accel_PID_XRollCounter_I
CBLOCKEND 257 3 3267

;;	}
CLINEA 0000H 0000H 0CC3H 0002H 0002H
_$L639 :

;;	Accel_PID_YPitchCounter_I++;
CLINEA 0000H 0000H 0CC4H 0002H 001DH
	l	er0,	NEAR _Accel_PID_YPitchCounter_I
	add	er0,	#1 
	st	er0,	NEAR _Accel_PID_YPitchCounter_I

;;	if(Accel_PID_YPitchCounter_I >= 65535){
CLINEA 0000H 0001H 0CC5H 0002H 0028H
	mov	er2,	#0 
	cmp	r0,	#0ffh
	cmpc	r1,	#0ffh
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	blts	_$L641
CBLOCK 257 4 3269

;;		Accel_PID_YPitchCounter_I = 0;
CLINEA 0000H 0001H 0CC6H 0003H 0020H
	mov	er0,	#0 
	st	er0,	NEAR _Accel_PID_YPitchCounter_I
CBLOCKEND 257 4 3271

;;	}
CLINEA 0000H 0000H 0CC7H 0002H 0002H
_$L641 :

;;	Accel_PID_XRollCounter_D++;
CLINEA 0000H 0000H 0CC8H 0002H 001CH
	l	er0,	NEAR _Accel_PID_XRollCounter_D
	add	er0,	#1 
	st	er0,	NEAR _Accel_PID_XRollCounter_D

;;	if(Accel_PID_XRollCounter_D >= 65535){
CLINEA 0000H 0001H 0CC9H 0002H 0027H
	mov	er2,	#0 
	cmp	r0,	#0ffh
	cmpc	r1,	#0ffh
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	blts	_$L643
CBLOCK 257 5 3273

;;		Accel_PID_XRollCounter_D = 0;
CLINEA 0000H 0001H 0CCAH 0003H 001FH
	mov	er0,	#0 
	st	er0,	NEAR _Accel_PID_XRollCounter_D
CBLOCKEND 257 5 3275

;;	}
CLINEA 0000H 0000H 0CCBH 0002H 0002H
_$L643 :

;;	Accel_PID_YPitchCounter_D++;
CLINEA 0000H 0000H 0CCCH 0002H 001DH
	l	er0,	NEAR _Accel_PID_YPitchCounter_D
	add	er0,	#1 
	st	er0,	NEAR _Accel_PID_YPitchCounter_D

;;	if(Accel_PID_YPitchCounter_D >= 65535){
CLINEA 0000H 0001H 0CCDH 0002H 0028H
	mov	er2,	#0 
	cmp	r0,	#0ffh
	cmpc	r1,	#0ffh
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	blts	_$L645
CBLOCK 257 6 3277

;;		Accel_PID_YPitchCounter_D = 0;
CLINEA 0000H 0001H 0CCEH 0003H 0020H
	mov	er0,	#0 
	st	er0,	NEAR _Accel_PID_YPitchCounter_D
CBLOCKEND 257 6 3279

;;	}
CLINEA 0000H 0000H 0CCFH 0002H 0002H
_$L645 :

;;	CF_Gyro_Counter++;
CLINEA 0000H 0000H 0CD6H 0002H 0013H
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
CLINEA 0000H 0001H 0CD7H 0002H 001EH
	push	xr0
	mov	r0,	#00h
	mov	r1,	#0ffh
	mov	r2,	#07fh
	mov	r3,	#047h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$L647
CBLOCK 257 7 3287

;;		CF_Gyro_Counter = 0;
CLINEA 0000H 0001H 0CD8H 0003H 0016H
	mov	er0,	#0 
	st	er0,	NEAR _CF_Gyro_Counter
	st	er0,	NEAR _CF_Gyro_Counter+02h
CBLOCKEND 257 7 3289

;;	}
CLINEA 0000H 0000H 0CD9H 0002H 0002H
_$L647 :
CBLOCKEND 257 2 3290

;;}
CLINEA 0000H 0001H 0CDAH 0001H 0001H
	pop	pc
CBLOCKEND 257 1 3290
CFUNCTIONEND 257


	rseg $$AccelGyroDataReady_ISR$main
CFUNCTION 258

_AccelGyroDataReady_ISR	:
CBLOCK 258 1 3294

;;{
CLINEA 0000H 0001H 0CDEH 0001H 0001H
CBLOCK 258 2 3294

;;	AccGyro_ReadFlag = 1;
CLINEA 0000H 0001H 0CDFH 0002H 0016H
	mov	r0,	#01h
	st	r0,	NEAR _AccGyro_ReadFlag
CBLOCKEND 258 2 3296

;;}
CLINEA 0000H 0001H 0CE0H 0001H 0001H
	rt
CBLOCKEND 258 1 3296
CFUNCTIONEND 258


	rseg $$_funcUartFin$main
CFUNCTION 245

__funcUartFin	:
CBLOCK 245 1 3307

;;{
CLINEA 0000H 0001H 0CEBH 0001H 0001H
	push	lr
CBLOCK 245 2 3307
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	uart_continue();					// Function in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 0CECH 0002H 0054H
	bl	_uart_continue

;;	_flgUartFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 0CEDH 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __flgUartFin
CBLOCKEND 245 2 3311

;;}
CLINEA 0000H 0001H 0CEFH 0001H 0001H
	pop	pc
CBLOCKEND 245 1 3311
CFUNCTIONEND 245


	rseg $$_funcI2CFin$main
CFUNCTION 246

__funcI2CFin	:
CBLOCK 246 1 3322

;;{
CLINEA 0000H 0001H 0CFAH 0001H 0001H
	push	lr
CBLOCK 246 2 3322
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	i2c_continue();					// Function in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 0CFBH 0002H 0053H
	bl	_i2c_continue

;;	_flgI2CFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 0CFCH 0002H 0025H
	mov	r0,	#01h
	st	r0,	NEAR __flgI2CFin
CBLOCKEND 246 2 3326

;;}
CLINEA 0000H 0001H 0CFEH 0001H 0001H
	pop	pc
CBLOCKEND 246 1 3326
CFUNCTIONEND 246


	rseg $$_intI2c$main
CFUNCTION 250

__intI2c	:
CBLOCK 250 1 3336

;;{
CLINEA 0000H 0001H 0D08H 0001H 0001H
CBLOCK 250 2 3336

;;	i2c_continue();
CLINEA 0000H 0001H 0D09H 0002H 0010H
	b	_i2c_continue
CBLOCKEND 250 2 3339
CLINEA 0000H 0001H 0D0BH 0001H 0001H
CBLOCKEND 250 1 3339
CFUNCTIONEND 250


	rseg $$checkI2C$main
CFUNCTION 247

_checkI2C	:
CBLOCK 247 1 3349

;;{
CLINEA 0000H 0001H 0D15H 0001H 0001H
	push	lr
CBLOCK 247 2 3349
CRET 0000H
CLOCAL 47H 0002H 0024H 0002H "ret" 02H 00H 01H

;;	while (ret != 1) {
CLINEA 0000H 0000H 0D1AH 0002H 0013H
_$L656 :
CBLOCK 247 3 3354

;;		ret = i2c_continue();
CLINEA 0000H 0000H 0D1BH 0003H 0017H
	bl	_i2c_continue
CBLOCK 247 4 3356
CBLOCKEND 247 4 3358
CBLOCKEND 247 3 3359

;;	while (ret != 1) {
CLINEA 0000H 0000H 0D1AH 000EH 0013H
	cmp	r0,	#01h
	cmpc	r1,	#00h
	bne	_$L656
CBLOCKEND 247 2 3360

;;}
CLINEA 0000H 0001H 0D20H 0001H 0001H
	pop	pc
CBLOCKEND 247 1 3360
CFUNCTIONEND 247


	rseg $$main_reqNotHalt$main
CFUNCTION 248

_main_reqNotHalt	:
CBLOCK 248 1 3370

;;{
CLINEA 0000H 0001H 0D2AH 0001H 0001H
CBLOCK 248 2 3370

;;	_reqNotHalt = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 0D2BH 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __reqNotHalt
CBLOCKEND 248 2 3372

;;}
CLINEA 0000H 0001H 0D2CH 0001H 0001H
	rt
CBLOCKEND 248 1 3372
CFUNCTIONEND 248


	rseg $$_intUart$main
CFUNCTION 249

__intUart	:
CBLOCK 249 1 3382

;;{
CLINEA 0000H 0001H 0D36H 0001H 0001H
CBLOCK 249 2 3382

;;		uart_continue(); //in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 0D37H 0003H 0047H
	b	_uart_continue
CBLOCKEND 249 2 3384
CLINEA 0000H 0001H 0D38H 0001H 0001H
CBLOCKEND 249 1 3384
CFUNCTIONEND 249


	rseg $$SetOSC$main
CFUNCTION 208

_SetOSC	:
CBLOCK 208 1 3389

;;static void SetOSC(void){
CLINEA 0000H 0001H 0D3DH 0001H 0019H
CBLOCK 208 2 3389

;;	SYSC0 = 0;			// Used to select the frequency of the HSCLK => 00=8.192MHz.
CLINEA 0000H 0001H 0D40H 0002H 004AH
	rb	0f002h.0

;;	SYSC1 = 0;
CLINEA 0000H 0001H 0D41H 0002H 000BH
	rb	0f002h.1

;;	OSCM1 = 1;			// 10 => Built-in PLL oscillation mode
CLINEA 0000H 0001H 0D43H 0002H 0034H
	sb	0f002h.3

;;	OSCM0 = 0;
CLINEA 0000H 0001H 0D44H 0002H 000BH
	rb	0f002h.2

;;	ENOSC = 1;			//1=Enable High Speed Oscillator...
CLINEA 0000H 0001H 0D46H 0002H 0031H
	sb	0f003h.1

;;	SYSCLK = 1;			//1=HSCLK; 0=LSCLK 
CLINEA 0000H 0001H 0D47H 0002H 0022H
	sb	0f003h.0

;;	LPLL = 1;			//1=Enables the use of PLL oscillation - ADDED 4/30/2013
CLINEA 0000H 0001H 0D49H 0002H 0045H
	sb	0f003h.7

;;	__EI();			//INT enable
CLINEA 0000H 0001H 0D4BH 0002H 0017H
	ei
CBLOCKEND 208 2 3404

;;}
CLINEA 0000H 0001H 0D4CH 0001H 0001H
	rt
CBLOCKEND 208 1 3404
CFUNCTIONEND 208


	rseg $$analog_comparator$main
CFUNCTION 209

_analog_comparator	:
CBLOCK 209 1 3411

;;void analog_comparator(void){
CLINEA 0000H 0001H 0D53H 0001H 001DH
CBLOCK 209 2 3411

;;	CMP0EN  = 0x01; 	// Comparator ON...
CLINEA 0000H 0001H 0D69H 0002H 0025H
	sb	0f950h.0

;;	CMP0E1  = 0x00; 	// No Interupt...
CLINEA 0000H 0001H 0D6AH 0002H 0023H
	rb	0f951h.1

;;	CMP0E0  = 0x00;
CLINEA 0000H 0001H 0D6BH 0002H 0010H
	rb	0f951h.0

;;	CMP0SM1 = 0x00; 	// Detect without Sampling... 
CLINEA 0000H 0001H 0D6CH 0002H 0030H
	rb	0f951h.3

;;	CMP0RFS = 0x01; 	// Differential Input on B5
CLINEA 0000H 0001H 0D6DH 0002H 002DH
	sb	0f951h.4

;;	CMP0EN  = 0x00;
CLINEA 0000H 0001H 0D70H 0002H 0010H
	rb	0f950h.0
CBLOCKEND 209 2 3443

;;}
CLINEA 0000H 0001H 0D73H 0001H 0001H
	rt
CBLOCKEND 209 1 3443
CFUNCTIONEND 209


	rseg $$PortA_Low$main
CFUNCTION 210

_PortA_Low	:
CBLOCK 210 1 3451

;;void PortA_Low(void){
CLINEA 0000H 0001H 0D7BH 0001H 0015H
CBLOCK 210 2 3451

;;	PA0DIR = 0;		// PortA Bit0 set to Output Mode...
CLINEA 0000H 0001H 0D85H 0002H 0031H
	rb	0f251h.0

;;	PA1DIR = 0;		// PortA Bit1 set to Output Mode...
CLINEA 0000H 0001H 0D86H 0002H 0031H
	rb	0f251h.1

;;	PA2DIR = 0;		// PortA Bit2 set to Output Mode...
CLINEA 0000H 0001H 0D87H 0002H 0031H
	rb	0f251h.2

;;	PA0C1  = 1;		// PortA Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0D8AH 0002H 0031H
	sb	0f253h.0

;;	PA0C0  = 1;		
CLINEA 0000H 0001H 0D8BH 0002H 000EH
	sb	0f252h.0

;;	PA1C1  = 1;		// PortA Bit1 set to CMOS Output...
CLINEA 0000H 0001H 0D8CH 0002H 0031H
	sb	0f253h.1

;;	PA1C0  = 1;	
CLINEA 0000H 0001H 0D8DH 0002H 000DH
	sb	0f252h.1

;;	PA2C1  = 1;		// PortA Bit2 set to CMOS Output...
CLINEA 0000H 0001H 0D8EH 0002H 0031H
	sb	0f253h.2

;;	PA2C0  = 1;	
CLINEA 0000H 0001H 0D8FH 0002H 000DH
	sb	0f252h.2

;;	PA0MD1  = 0;	// PortA Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 0D92H 0002H 003CH
	rb	0f255h.0

;;	PA0MD0  = 0;	
CLINEA 0000H 0001H 0D93H 0002H 000EH
	rb	0f254h.0

;;	PA1MD1  = 0;	// PortA Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 0D94H 0002H 003CH
	rb	0f255h.1

;;	PA1MD0  = 0;	
CLINEA 0000H 0001H 0D95H 0002H 000EH
	rb	0f254h.1

;;	PA2MD1  = 0;	// PortA Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 0D96H 0002H 003CH
	rb	0f255h.2

;;	PA2MD0  = 0;	
CLINEA 0000H 0001H 0D97H 0002H 000EH
	rb	0f254h.2

;;	PA0D = 0;		// A.0 Output OFF....
CLINEA 0000H 0001H 0D9AH 0002H 0021H
	rb	0f250h.0

;;	PA1D = 0;		// A.1 Output OFF....
CLINEA 0000H 0001H 0D9BH 0002H 0021H
	rb	0f250h.1

;;	PA2D = 0;		// A.2 Output OFF....
CLINEA 0000H 0001H 0D9CH 0002H 0021H
	rb	0f250h.2

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0D9EH 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 210 2 3488
CLINEA 0000H 0001H 0DA0H 0001H 0001H
CBLOCKEND 210 1 3488
CFUNCTIONEND 210


	rseg $$PortB_Low$main
CFUNCTION 211

_PortB_Low	:
CBLOCK 211 1 3494

;;void PortB_Low(void){
CLINEA 0000H 0001H 0DA6H 0001H 0015H
CBLOCK 211 2 3494

;;	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 0DB0H 0002H 0031H
	rb	0f259h.0

;;	PB1DIR = 0;		// PortB Bit1 set to Output Mode...
CLINEA 0000H 0001H 0DB1H 0002H 0031H
	rb	0f259h.1

;;	PB2DIR = 0;		// PortB Bit2 set to Output Mode...
CLINEA 0000H 0001H 0DB2H 0002H 0031H
	rb	0f259h.2

;;	PB3DIR = 0;		// PortB Bit3 set to Output Mode...
CLINEA 0000H 0001H 0DB3H 0002H 0031H
	rb	0f259h.3

;;	PB4DIR = 0;		// PortB Bit4 set to Output Mode...
CLINEA 0000H 0001H 0DB4H 0002H 0031H
	rb	0f259h.4

;;	PB5DIR = 0;		// PortB Bit5 set to Output Mode...
CLINEA 0000H 0001H 0DB5H 0002H 0031H
	rb	0f259h.5

;;	PB6DIR = 0;		// PortB Bit6 set to Output Mode...
CLINEA 0000H 0001H 0DB6H 0002H 0031H
	rb	0f259h.6

;;	PB7DIR = 0;		// PortB Bit7 set to Output Mode...
CLINEA 0000H 0001H 0DB7H 0002H 0031H
	rb	0f259h.7

;;	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0DBAH 0002H 0031H
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 0DBBH 0002H 000EH
	sb	0f25ah.0

;;	PB1C1  = 1;		// PortB Bit1 set to CMOS Output...
CLINEA 0000H 0001H 0DBCH 0002H 0031H
	sb	0f25bh.1

;;	PB1C0  = 1;	
CLINEA 0000H 0001H 0DBDH 0002H 000DH
	sb	0f25ah.1

;;	PB2C1  = 1;		// PortB Bit2 set to CMOS Output...
CLINEA 0000H 0001H 0DBEH 0002H 0031H
	sb	0f25bh.2

;;	PB2C0  = 1;	
CLINEA 0000H 0001H 0DBFH 0002H 000DH
	sb	0f25ah.2

;;	PB3C1  = 1;		// PortB Bit3 set to CMOS Output...
CLINEA 0000H 0001H 0DC0H 0002H 0031H
	sb	0f25bh.3

;;	PB3C0  = 1;		
CLINEA 0000H 0001H 0DC1H 0002H 000EH
	sb	0f25ah.3

;;	PB4C1  = 1;		// PortB Bit4 set to CMOS Output...
CLINEA 0000H 0001H 0DC2H 0002H 0031H
	sb	0f25bh.4

;;	PB4C0  = 1;	
CLINEA 0000H 0001H 0DC3H 0002H 000DH
	sb	0f25ah.4

;;	PB5C1  = 1;		// PortB Bit5 set to CMOS Output...
CLINEA 0000H 0001H 0DC4H 0002H 0031H
	sb	0f25bh.5

;;	PB5C0  = 1;	
CLINEA 0000H 0001H 0DC5H 0002H 000DH
	sb	0f25ah.5

;;	PB6C1  = 1;		// PortB Bit6 set to CMOS Output...
CLINEA 0000H 0001H 0DC6H 0002H 0031H
	sb	0f25bh.6

;;	PB6C0  = 1;	
CLINEA 0000H 0001H 0DC7H 0002H 000DH
	sb	0f25ah.6

;;	PB7C1  = 1;		// PortB Bit7 set to CMOS Output...
CLINEA 0000H 0001H 0DC8H 0002H 0031H
	sb	0f25bh.7

;;	PB7C0  = 1;	
CLINEA 0000H 0001H 0DC9H 0002H 000DH
	sb	0f25ah.7

;;	PB0MD1  = 0;	// PortB Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 0DCCH 0002H 003CH
	rb	0f25dh.0

;;	PB0MD0  = 0;	
CLINEA 0000H 0001H 0DCDH 0002H 000EH
	rb	0f25ch.0

;;	PB1MD1  = 0;	// PortB Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 0DCEH 0002H 003CH
	rb	0f25dh.1

;;	PB1MD0  = 0;	
CLINEA 0000H 0001H 0DCFH 0002H 000EH
	rb	0f25ch.1

;;	PB2MD1  = 0;	// PortB Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 0DD0H 0002H 003CH
	rb	0f25dh.2

;;	PB2MD0  = 0;	
CLINEA 0000H 0001H 0DD1H 0002H 000EH
	rb	0f25ch.2

;;	PB3MD1  = 0;	// PortB Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 0DD2H 0002H 003CH
	rb	0f25dh.3

;;	PB3MD0  = 0;	
CLINEA 0000H 0001H 0DD3H 0002H 000EH
	rb	0f25ch.3

;;	PB4MD1  = 0;	// PortB Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 0DD4H 0002H 003CH
	rb	0f25dh.4

;;	PB4MD0  = 0;	
CLINEA 0000H 0001H 0DD5H 0002H 000EH
	rb	0f25ch.4

;;	PB5MD1  = 0;	// PortB Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 0DD6H 0002H 003CH
	rb	0f25dh.5

;;	PB5MD0  = 0;
CLINEA 0000H 0001H 0DD7H 0002H 000DH
	rb	0f25ch.5

;;	PB6MD1  = 0;	// PortB Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 0DD8H 0002H 003CH
	rb	0f25dh.6

;;	PB6MD0  = 0;	
CLINEA 0000H 0001H 0DD9H 0002H 000EH
	rb	0f25ch.6

;;	PB7MD1  = 0;	// PortB Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 0DDAH 0002H 003CH
	rb	0f25dh.7

;;	PB7MD0  = 0;
CLINEA 0000H 0001H 0DDBH 0002H 000DH
	rb	0f25ch.7

;;	PB0D = 0;		// B.0 Output OFF....
CLINEA 0000H 0001H 0DDEH 0002H 0021H
	rb	0f258h.0

;;	PB1D = 0;		// B.1 Output OFF....
CLINEA 0000H 0001H 0DDFH 0002H 0021H
	rb	0f258h.1

;;	PB2D = 0;		// B.2 Output OFF....
CLINEA 0000H 0001H 0DE0H 0002H 0021H
	rb	0f258h.2

;;	PB3D = 0;		// B.3 Output OFF....
CLINEA 0000H 0001H 0DE1H 0002H 0021H
	rb	0f258h.3

;;	PB4D = 0;		// B.4 Output OFF....
CLINEA 0000H 0001H 0DE2H 0002H 0021H
	rb	0f258h.4

;;	PB5D = 0;		// B.5 Output OFF....
CLINEA 0000H 0001H 0DE3H 0002H 0021H
	rb	0f258h.5

;;	PB6D = 0;		// B.6 Output OFF....
CLINEA 0000H 0001H 0DE4H 0002H 0021H
	rb	0f258h.6

;;	PB7D = 0;		// B.7 Output OFF....
CLINEA 0000H 0001H 0DE5H 0002H 0021H
	rb	0f258h.7

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0DE7H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 211 2 3561
CLINEA 0000H 0001H 0DE9H 0001H 0001H
CBLOCKEND 211 1 3561
CFUNCTIONEND 211


	rseg $$PortC_Low$main
CFUNCTION 212

_PortC_Low	:
CBLOCK 212 1 3567

;;void PortC_Low(void){
CLINEA 0000H 0001H 0DEFH 0001H 0015H
CBLOCK 212 2 3567

;;	PC0DIR = 0;		// PortC Bit0 set to Output Mode...
CLINEA 0000H 0001H 0DF9H 0002H 0031H
	rb	0f261h.0

;;	PC1DIR = 0;		// PortC Bit1 set to Output Mode...
CLINEA 0000H 0001H 0DFAH 0002H 0031H
	rb	0f261h.1

;;	PC2DIR = 0;		// PortC Bit2 set to Output Mode...
CLINEA 0000H 0001H 0DFBH 0002H 0031H
	rb	0f261h.2

;;	PC3DIR = 0;		// PortC Bit3 set to Output Mode...
CLINEA 0000H 0001H 0DFCH 0002H 0031H
	rb	0f261h.3

;;	PC4DIR = 0;		// PortC Bit4 set to Output Mode...
CLINEA 0000H 0001H 0DFDH 0002H 0031H
	rb	0f261h.4

;;	PC5DIR = 0;		// PortC Bit5 set to Output Mode...
CLINEA 0000H 0001H 0DFEH 0002H 0031H
	rb	0f261h.5

;;	PC6DIR = 0;		// PortC Bit6 set to Output Mode...
CLINEA 0000H 0001H 0DFFH 0002H 0031H
	rb	0f261h.6

;;	PC7DIR = 0;		// PortC Bit7 set to Output Mode...
CLINEA 0000H 0001H 0E00H 0002H 0031H
	rb	0f261h.7

;;	PC0C1  = 1;		// PortC Bit0 set to High-Impedance Output...
CLINEA 0000H 0001H 0E03H 0002H 003BH
	sb	0f263h.0

;;	PC0C0  = 1;		
CLINEA 0000H 0001H 0E04H 0002H 000EH
	sb	0f262h.0

;;	PC1C1  = 1;		// PortC Bit1 set to High-Impedance Output...
CLINEA 0000H 0001H 0E05H 0002H 003BH
	sb	0f263h.1

;;	PC1C0  = 1;	
CLINEA 0000H 0001H 0E06H 0002H 000DH
	sb	0f262h.1

;;	PC2C1  = 1;		// PortC Bit2 set to High-Impedance Output...
CLINEA 0000H 0001H 0E07H 0002H 003BH
	sb	0f263h.2

;;	PC2C0  = 1;	
CLINEA 0000H 0001H 0E08H 0002H 000DH
	sb	0f262h.2

;;	PC3C1  = 1;		// PortC Bit3 set to High-Impedance Output...
CLINEA 0000H 0001H 0E09H 0002H 003BH
	sb	0f263h.3

;;	PC3C0  = 1;		
CLINEA 0000H 0001H 0E0AH 0002H 000EH
	sb	0f262h.3

;;	PC4C1  = 1;		// PortC Bit4 set to High-Impedance Output...
CLINEA 0000H 0001H 0E0BH 0002H 003BH
	sb	0f263h.4

;;	PC4C0  = 1;	
CLINEA 0000H 0001H 0E0CH 0002H 000DH
	sb	0f262h.4

;;	PC5C1  = 1;		// PortC Bit5 set to High-Impedance Output...
CLINEA 0000H 0001H 0E0DH 0002H 003BH
	sb	0f263h.5

;;	PC5C0  = 1;	
CLINEA 0000H 0001H 0E0EH 0002H 000DH
	sb	0f262h.5

;;	PC6C1  = 1;		// PortC Bit6 set to High-Impedance Output...
CLINEA 0000H 0001H 0E0FH 0002H 003BH
	sb	0f263h.6

;;	PC6C0  = 1;	
CLINEA 0000H 0001H 0E10H 0002H 000DH
	sb	0f262h.6

;;	PC7C1  = 1;		// PortC Bit7 set to High-Impedance Output...
CLINEA 0000H 0001H 0E11H 0002H 003BH
	sb	0f263h.7

;;	PC7C0  = 1;	
CLINEA 0000H 0001H 0E12H 0002H 000DH
	sb	0f262h.7

;;	PC0MD1  = 0;	// PortC Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 0E15H 0002H 003CH
	rb	0f265h.0

;;	PC0MD0  = 0;	
CLINEA 0000H 0001H 0E16H 0002H 000EH
	rb	0f264h.0

;;	PC1MD1  = 0;	// PortC Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 0E17H 0002H 003CH
	rb	0f265h.1

;;	PC1MD0  = 0;	
CLINEA 0000H 0001H 0E18H 0002H 000EH
	rb	0f264h.1

;;	PC2MD1  = 0;	// PortC Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 0E19H 0002H 003CH
	rb	0f265h.2

;;	PC2MD0  = 0;	
CLINEA 0000H 0001H 0E1AH 0002H 000EH
	rb	0f264h.2

;;	PC3MD1  = 0;	// PortC Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 0E1BH 0002H 003CH
	rb	0f265h.3

;;	PC3MD0  = 0;	
CLINEA 0000H 0001H 0E1CH 0002H 000EH
	rb	0f264h.3

;;	PC4MD1  = 0;	// PortC Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 0E1DH 0002H 003CH
	rb	0f265h.4

;;	PC4MD0  = 0;	
CLINEA 0000H 0001H 0E1EH 0002H 000EH
	rb	0f264h.4

;;	PC5MD1  = 0;	// PortC Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 0E1FH 0002H 003CH
	rb	0f265h.5

;;	PC5MD0  = 0;
CLINEA 0000H 0001H 0E20H 0002H 000DH
	rb	0f264h.5

;;	PC6MD1  = 0;	// PortC Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 0E21H 0002H 003CH
	rb	0f265h.6

;;	PC6MD0  = 0;	
CLINEA 0000H 0001H 0E22H 0002H 000EH
	rb	0f264h.6

;;	PC7MD1  = 0;	// PortC Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 0E23H 0002H 003CH
	rb	0f265h.7

;;	PC7MD0  = 0;
CLINEA 0000H 0001H 0E24H 0002H 000DH
	rb	0f264h.7

;;	PC0D = 0;		// C.0 Output OFF....
CLINEA 0000H 0001H 0E27H 0002H 0021H
	rb	0f260h.0

;;	PC1D = 0;		// C.1 Output OFF....
CLINEA 0000H 0001H 0E28H 0002H 0021H
	rb	0f260h.1

;;	PC2D = 0;		// C.2 Output OFF....
CLINEA 0000H 0001H 0E29H 0002H 0021H
	rb	0f260h.2

;;	PC3D = 0;		// C.3 Output OFF....
CLINEA 0000H 0001H 0E2AH 0002H 0021H
	rb	0f260h.3

;;	PC4D = 0;		// C.4 Output OFF....
CLINEA 0000H 0001H 0E2BH 0002H 0021H
	rb	0f260h.4

;;	PC5D = 0;		// C.5 Output OFF....
CLINEA 0000H 0001H 0E2CH 0002H 0021H
	rb	0f260h.5

;;	PC6D = 0;		// C.6 Output OFF....
CLINEA 0000H 0001H 0E2DH 0002H 0021H
	rb	0f260h.6

;;	PC7D = 0;		// C.7 Output OFF....
CLINEA 0000H 0001H 0E2EH 0002H 0021H
	rb	0f260h.7

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0E30H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 212 2 3634
CLINEA 0000H 0001H 0E32H 0001H 0001H
CBLOCKEND 212 1 3634
CFUNCTIONEND 212


	rseg $$PortD_Low$main
CFUNCTION 213

_PortD_Low	:
CBLOCK 213 1 3640

;;void PortD_Low(void){
CLINEA 0000H 0001H 0E38H 0001H 0015H
CBLOCK 213 2 3640

;;	PD0DIR = 0;		// PortD Bit0 set to Output Mode...
CLINEA 0000H 0001H 0E41H 0002H 0031H
	rb	0f269h.0

;;	PD1DIR = 0;		// PortD Bit1 set to Output Mode...
CLINEA 0000H 0001H 0E42H 0002H 0031H
	rb	0f269h.1

;;	PD2DIR = 0;		// PortD Bit2 set to Output Mode...
CLINEA 0000H 0001H 0E43H 0002H 0031H
	rb	0f269h.2

;;	PD3DIR = 0;		// PortD Bit3 set to Output Mode...
CLINEA 0000H 0001H 0E44H 0002H 0031H
	rb	0f269h.3

;;	PD4DIR = 0;		// PortD Bit4 set to Output Mode...
CLINEA 0000H 0001H 0E45H 0002H 0031H
	rb	0f269h.4

;;	PD5DIR = 0;		// PortD Bit5 set to Output Mode...
CLINEA 0000H 0001H 0E46H 0002H 0031H
	rb	0f269h.5

;;	PD0C1= 1;		// PortD Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0E49H 0002H 002FH
	sb	0f26bh.0

;;	PD0C0= 1;		
CLINEA 0000H 0001H 0E4AH 0002H 000CH
	sb	0f26ah.0

;;	PD1C1= 1;		// PortD Bit1 set to CMOS Output...
CLINEA 0000H 0001H 0E4BH 0002H 002FH
	sb	0f26bh.1

;;	PD1C0= 1;	
CLINEA 0000H 0001H 0E4CH 0002H 000BH
	sb	0f26ah.1

;;	PD2C1= 1;		// PortD Bit2 set to CMOS Output...
CLINEA 0000H 0001H 0E4DH 0002H 002FH
	sb	0f26bh.2

;;	PD2C0= 1;	
CLINEA 0000H 0001H 0E4EH 0002H 000BH
	sb	0f26ah.2

;;	PD3C1= 1;		// PortD Bit3 set to CMOS Output...
CLINEA 0000H 0001H 0E4FH 0002H 002FH
	sb	0f26bh.3

;;	PD3C0= 1;		
CLINEA 0000H 0001H 0E50H 0002H 000CH
	sb	0f26ah.3

;;	PD4C1= 1;		// PortD Bit4 set to CMOS Output...
CLINEA 0000H 0001H 0E51H 0002H 002FH
	sb	0f26bh.4

;;	PD4C0= 1;	
CLINEA 0000H 0001H 0E52H 0002H 000BH
	sb	0f26ah.4

;;	PD5C1= 1;		// PortD Bit5 set to CMOS Output...
CLINEA 0000H 0001H 0E53H 0002H 002FH
	sb	0f26bh.5

;;	PD5C0= 1;	
CLINEA 0000H 0001H 0E54H 0002H 000BH
	sb	0f26ah.5

;;	PD0D = 0;		// D.0 Output OFF....
CLINEA 0000H 0001H 0E57H 0002H 0021H
	rb	0f268h.0

;;	PD1D = 0;		// D.1 Output OFF....
CLINEA 0000H 0001H 0E58H 0002H 0021H
	rb	0f268h.1

;;	PD2D = 0;		// D.2 Output OFF....
CLINEA 0000H 0001H 0E59H 0002H 0021H
	rb	0f268h.2

;;	PD3D = 0;		// D.3 Output OFF....
CLINEA 0000H 0001H 0E5AH 0002H 0021H
	rb	0f268h.3

;;	PD4D = 0;		// D.4 Output OFF....
CLINEA 0000H 0001H 0E5BH 0002H 0021H
	rb	0f268h.4

;;	PD5D = 0;		// D.5 Output OFF....
CLINEA 0000H 0001H 0E5CH 0002H 0021H
	rb	0f268h.5

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0E5FH 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 213 2 3681
CLINEA 0000H 0001H 0E61H 0001H 0001H
CBLOCKEND 213 1 3681
CFUNCTIONEND 213


	rseg $$PortA_Digital_Inputs$main
CFUNCTION 214

_PortA_Digital_Inputs	:
CBLOCK 214 1 3687

;;void PortA_Digital_Inputs(void){
CLINEA 0000H 0001H 0E67H 0001H 0020H
CBLOCK 214 2 3687

;;	PA0DIR = 1;		// PortA Bit0 set to Input Mode...
CLINEA 0000H 0001H 0E71H 0002H 0030H
	sb	0f251h.0

;;	PA1DIR = 1;		// PortA Bit1 set to Input Mode...
CLINEA 0000H 0001H 0E72H 0002H 0030H
	sb	0f251h.1

;;	PA2DIR = 1;		// PortA Bit2 set to Input Mode...
CLINEA 0000H 0001H 0E73H 0002H 0030H
	sb	0f251h.2

;;	PA0C1  = 1;		// PortA Bit0 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 0E77H 0002H 0041H
	sb	0f253h.0

;;	PA0C0  = 0;		
CLINEA 0000H 0001H 0E78H 0002H 000EH
	rb	0f252h.0

;;	PA1C1  = 1;		// PortA Bit1 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 0E79H 0002H 0041H
	sb	0f253h.1

;;	PA1C0  = 0;	
CLINEA 0000H 0001H 0E7AH 0002H 000DH
	rb	0f252h.1

;;	PA2C1  = 1;		// PortA Bit2 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 0E7BH 0002H 0041H
	sb	0f253h.2

;;	PA2C0  = 0;	
CLINEA 0000H 0001H 0E7CH 0002H 000DH
	rb	0f252h.2

;;	PA0MD1  = 0;	// PortA Bit0 set to General Purpose I/O...
CLINEA 0000H 0001H 0E7FH 0002H 0039H
	rb	0f255h.0

;;	PA0MD0  = 0;	
CLINEA 0000H 0001H 0E80H 0002H 000EH
	rb	0f254h.0

;;	PA1MD1  = 0;	// PortA Bit1 set to General Purpose I/O...
CLINEA 0000H 0001H 0E81H 0002H 0039H
	rb	0f255h.1

;;	PA1MD0  = 0;	
CLINEA 0000H 0001H 0E82H 0002H 000EH
	rb	0f254h.1

;;	PA2MD1  = 0;	// PortA Bit2 set to General Purpose I/O...
CLINEA 0000H 0001H 0E83H 0002H 0039H
	rb	0f255h.2

;;	PA2MD0  = 0;	
CLINEA 0000H 0001H 0E84H 0002H 000EH
	rb	0f254h.2

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0E86H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 214 2 3720
CLINEA 0000H 0001H 0E88H 0001H 0001H
CBLOCKEND 214 1 3720
CFUNCTIONEND 214


	rseg $$NOP$main
CFUNCTION 251

_NOP	:
CBLOCK 251 1 3783

;;{
CLINEA 0000H 0001H 0EC7H 0001H 0001H
	push	lr
	push	xr4
	push	er8
	mov	r8,	r0
CBLOCK 251 2 3783
CRET 0006H
CARGUMENT 46H 0001H 001CH "sec" 02H 00H 00H
CLOCAL 46H 0002H 0027H 0002H "timerThres" 02H 00H 01H
CLOCAL 46H 0001H 0018H 0002H "TimeFlag" 02H 00H 00H
CLOCAL 46H 0001H 0016H 0002H "TempSec" 02H 00H 00H
CLOCAL 46H 0002H 0024H 0002H "timer" 02H 00H 01H
CLOCAL 4AH 0002H 0000H 0002H "timertest" 02H 00H 01H

;;	tm_init(TM_CH_NO_AB);
CLINEA 0000H 0001H 0ECEH 0002H 0016H
	mov	r0,	#01h
	bl	_tm_init

;;	TempSec = sec;
CLINEA 0000H 0001H 0ECFH 0002H 000FH
	mov	r2,	r8

;;	TimeFlag = 0;
CLINEA 0000H 0001H 0ED0H 0002H 000EH
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
CLINEA 0000H 0001H 0ED5H 0002H 000EH
	cmp	r8,	#01h
	bne	_$L670
CBLOCK 251 3 3797

;;		timerThres = 0x7FFF;
CLINEA 0000H 0001H 0ED6H 0003H 0016H
	mov	r6,	#0ffh
	mov	r7,	#07fh

;;		TimeFlag = 0;
CLINEA 0000H 0001H 0ED7H 0003H 000FH
CBLOCKEND 251 3 3800

;;	}
CLINEA 0000H 0000H 0ED8H 0002H 0002H
_$L670 :

;;	if(sec == 2){
CLINEA 0000H 0001H 0ED9H 0002H 000EH
	cmp	r8,	#02h
	bne	_$L672
CBLOCK 251 4 3801

;;		timerThres = 0xFFFF;
CLINEA 0000H 0001H 0EDAH 0003H 0016H
	mov	er6,	#-1

;;		TimeFlag = 0;
CLINEA 0000H 0001H 0EDBH 0003H 000FH
	mov	r4,	#00h
CBLOCKEND 251 4 3804

;;	}
CLINEA 0000H 0000H 0EDCH 0002H 0002H
_$L672 :

;;	if(sec > 2){
CLINEA 0000H 0001H 0EDDH 0002H 000DH
	cmp	r8,	#02h
	ble	_$L682
CBLOCK 251 5 3805

;;	while(TempSec > 1){
CLINEA 0000H 0000H 0EDEH 0001H 0001H
	bal	_$L692

;;	while(TempSec > 1){
CLINEA 0000H 0000H 0EDEH 0002H 0014H
_$L678 :
CBLOCK 251 6 3806

;;		TempSec -= 2;
CLINEA 0000H 0001H 0EDFH 0003H 000FH
	add	r2,	#0feh

;;		TimeFlag++;
CLINEA 0000H 0000H 0EE0H 0003H 000DH
	add	r4,	#01h
CBLOCKEND 251 6 3809

;;	while(TempSec > 1){
CLINEA 0000H 0000H 0EDEH 0001H 0001H
_$L692 :

;;	while(TempSec > 1){
CLINEA 0000H 0000H 0EDEH 000EH 0013H
	cmp	r2,	#01h
	bgt	_$L678

;;	if(TempSec == 1){
CLINEA 0000H 0001H 0EE2H 0002H 0012H
	cmp	r2,	#01h
	bne	_$L680
CBLOCK 251 7 3810

;;		timerThres = 0x7FFF;
CLINEA 0000H 0001H 0EE3H 0003H 0016H
	mov	r6,	#0ffh
	mov	r7,	#07fh
CBLOCKEND 251 7 3812

;;	else{
CLINEA 0000H 0001H 0EE5H 0002H 0006H
	bal	_$L682
_$L680 :
CBLOCK 251 8 3813

;;		timerThres = 0xFFFF;
CLINEA 0000H 0001H 0EE6H 0003H 0016H
	mov	er6,	#-1

;;		TimeFlag--;
CLINEA 0000H 0000H 0EE7H 0003H 000DH
	add	r4,	#0ffh
CBLOCKEND 251 8 3816

;;	}
CLINEA 0000H 0000H 0EE8H 0002H 0002H
_$L682 :
CBLOCKEND 251 5 3817

;;	main_clrWDT();	
CLINEA 0000H 0001H 0EECH 0002H 0010H
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
CLINEA 0000H 0001H 0EF0H 0002H 001BH
	bal	_$L685
_$L687 :
CBLOCK 251 9 3824

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
CLINEA 0000H 0000H 0EF1H 0003H 001CH
CBLOCKEND 251 9 3827

;;	}
CLINEA 0000H 0000H 0EF3H 0002H 0002H
_$L685 :

;;	while(timer < timerThres){
CLINEA 0000H 0000H 0EF0H 000EH 0013H
	cmp	er0,	er6
	blt	_$L687

;;	if(TimeFlag !=0){
CLINEA 0000H 0001H 0EF4H 0002H 0012H
	cmp	r4,	#00h
	beq	_$L690

;;		tm_stopAB();
CLINEA 0000H 0001H 0105H 0002H 000BH
	rb	0f8ebh.0

;;		TimeFlag--;
CLINEA 0000H 0000H 0EF6H 0003H 000DH
	add	r4,	#0ffh

;;		timerThres = 0xFFFF;
CLINEA 0000H 0001H 0EF7H 0003H 0016H
	mov	er6,	#-1

;;		goto TimerRestart;
CLINEA 0000H 0001H 0EF8H 0003H 0014H
	bal	_$L682

;;	}
CLINEA 0000H 0000H 0EF9H 0002H 0002H
_$L690 :
CBLOCKEND 251 2 3834

;;}
CLINEA 0000H 0001H 0EFAH 0001H 0001H
	pop	er8
	pop	xr4
	pop	pc
CBLOCKEND 251 1 3834
CFUNCTIONEND 251


	rseg $$NOPms$main
CFUNCTION 252

_NOPms	:
CBLOCK 252 1 3847

;;{
CLINEA 0000H 0001H 0F07H 0001H 0001H
	push	lr
	push	xr4
	push	bp
	push	er8
	mov	er8,	er0
CBLOCK 252 2 3847
CRET 0008H
CARGUMENT 46H 0002H 0028H "ms" 02H 00H 01H
CLOCAL 46H 0002H 002AH 0002H "timerThres" 02H 00H 01H
CLOCAL 46H 0001H 001AH 0002H "TimeFlag" 02H 00H 00H
CLOCAL 46H 0002H 0026H 0002H "TempSec" 02H 00H 01H
CLOCAL 46H 0002H 0024H 0002H "timer" 02H 00H 01H
CLOCAL 4AH 0002H 0000H 0002H "timertest" 02H 00H 01H

;;TempSec = ms;
CLINEA 0000H 0001H 0F0EH 0001H 000DH
	mov	er4,	er0

;;TimeFlag = 0;
CLINEA 0000H 0001H 0F0FH 0001H 000DH
	mov	r6,	#00h

;;tm_init(TM_CH_NO_AB);
CLINEA 0000H 0001H 0F11H 0001H 0015H
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
CLINEA 0000H 0001H 0F15H 0001H 000DH
	mov	er0,	er8
	cmp	r8,	#080h
	cmpc	r9,	#00h
	bge	_$L694
CBLOCK 252 3 3861

;;	timerThres = 0x1FF * ms;
CLINEA 0000H 0001H 0F16H 0002H 0019H
	sllc	r1,	#07h
	sll	r0,	#07h
	sllc	r1,	#02h
	sll	r0,	#02h
	sub	r0,	r8
	subc	r1,	r9
	mov	bp,	er0

;;	TimeFlag = 0;
CLINEA 0000H 0001H 0F17H 0002H 000EH
CBLOCKEND 252 3 3864

;;}
CLINEA 0000H 0000H 0F18H 0001H 0001H
_$L694 :

;;if(ms == 128){
CLINEA 0000H 0001H 0F19H 0001H 000EH
	cmp	r8,	#080h
	cmpc	r9,	#00h
	bne	_$L696
CBLOCK 252 4 3865

;;	timerThres = 0xFFFF;
CLINEA 0000H 0001H 0F1AH 0002H 0015H
	mov	bp,	#-1

;;	TimeFlag = 0;
CLINEA 0000H 0001H 0F1BH 0002H 000EH
	mov	r6,	#00h
CBLOCKEND 252 4 3868

;;}
CLINEA 0000H 0000H 0F1CH 0001H 0001H
_$L696 :

;;if(ms > 128){
CLINEA 0000H 0001H 0F1DH 0001H 000DH
	cmp	r8,	#080h
	cmpc	r9,	#00h
	ble	_$L706
CBLOCK 252 5 3869

;;	while(TempSec > 128){
CLINEA 0000H 0000H 0F1EH 0001H 0001H
	bal	_$L716

;;	while(TempSec > 128){
CLINEA 0000H 0000H 0F1EH 0002H 0016H
_$L702 :
CBLOCK 252 6 3870

;;		TempSec -= 128;
CLINEA 0000H 0001H 0F1FH 0003H 0011H
	add	r0,	#080h
	addc	r1,	#0ffh
	mov	er4,	er0

;;		TimeFlag++;
CLINEA 0000H 0000H 0F20H 0003H 000DH
	add	r6,	#01h
CBLOCKEND 252 6 3873

;;	while(TempSec > 128){
CLINEA 0000H 0000H 0F1EH 0001H 0001H
_$L716 :

;;	while(TempSec > 128){
CLINEA 0000H 0000H 0F1EH 000EH 0013H
	mov	er0,	er4
	cmp	r4,	#080h
	cmpc	r5,	#00h
	bgt	_$L702

;;	if(TempSec != 0){
CLINEA 0000H 0001H 0F22H 0002H 0012H
	mov	er4,	er4
	beq	_$L704
CBLOCK 252 7 3874

;;		timerThres = 0x1FF * TempSec;
CLINEA 0000H 0001H 0F23H 0003H 001FH
	sllc	r1,	#07h
	sll	r0,	#07h
	sllc	r1,	#02h
	sll	r0,	#02h
	sub	r0,	r4
	subc	r1,	r5
	mov	bp,	er0
CBLOCKEND 252 7 3876

;;	else{
CLINEA 0000H 0001H 0F25H 0002H 0006H
	bal	_$L706
_$L704 :
CBLOCK 252 8 3877

;;		timerThres = 0xFFFF;
CLINEA 0000H 0001H 0F26H 0003H 0016H
	mov	bp,	#-1

;;		TimeFlag--;
CLINEA 0000H 0000H 0F27H 0003H 000DH
	add	r6,	#0ffh
CBLOCKEND 252 8 3880

;;	}
CLINEA 0000H 0000H 0F28H 0002H 0002H
_$L706 :
CBLOCKEND 252 5 3881

;;	main_clrWDT();	
CLINEA 0000H 0001H 0F2CH 0002H 0010H
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
CLINEA 0000H 0001H 0F30H 0002H 001BH
	bal	_$L709
_$L711 :
CBLOCK 252 9 3888

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
CLINEA 0000H 0000H 0F31H 0003H 001CH
CBLOCKEND 252 9 3891

;;	}
CLINEA 0000H 0000H 0F33H 0002H 0002H
_$L709 :

;;	while(timer < timerThres){
CLINEA 0000H 0000H 0F30H 000EH 0013H
	cmp	er0,	bp
	blt	_$L711

;;	if(TimeFlag !=0){
CLINEA 0000H 0001H 0F34H 0002H 0012H
	cmp	r6,	#00h
	beq	_$L714

;;		tm_stopAB();
CLINEA 0000H 0001H 0105H 0002H 000BH
	rb	0f8ebh.0

;;		TimeFlag--;
CLINEA 0000H 0000H 0F36H 0003H 000DH
	add	r6,	#0ffh

;;		timerThres = 0xFFFF;
CLINEA 0000H 0001H 0F37H 0003H 0016H
	mov	bp,	#-1

;;		goto TimerRestart;
CLINEA 0000H 0001H 0F38H 0003H 0014H
	bal	_$L706

;;	}
CLINEA 0000H 0000H 0F39H 0002H 0002H
_$L714 :
CBLOCKEND 252 2 3899

;;}
CLINEA 0000H 0001H 0F3BH 0001H 0001H
	pop	er8
	pop	bp
	pop	xr4
	pop	pc
CBLOCKEND 252 1 3899
CFUNCTIONEND 252


	rseg $$NOPus$main
CFUNCTION 253

_NOPus	:
CBLOCK 253 1 3909

;;{
CLINEA 0000H 0001H 0F45H 0001H 0001H
CBLOCK 253 2 3909

;;	timer_us = 0;
CLINEA 0000H 0001H 0F46H 0002H 000EH
	mov	er0,	#0 
	st	er0,	NEAR _timer_us

;;	TM8C = 0x00;
CLINEA 0000H 0001H 0F47H 0002H 000DH
	st	r0,	0f8e1h

;;	ETM8 = 1;
CLINEA 0000H 0001H 0F48H 0002H 000AH
	sb	0f013h.2

;;	while(timer_us == 0);
CLINEA 0000H 0000H 0F49H 0002H 0016H
_$L720 :

;;	while(timer_us == 0);
CLINEA 0000H 0000H 0F49H 000EH 0013H
	l	er0,	NEAR _timer_us
	beq	_$L720
CBLOCKEND 253 2 3914

;;}
CLINEA 0000H 0001H 0F4AH 0001H 0001H
	rt
CBLOCKEND 253 1 3914
CFUNCTIONEND 253


	rseg $$NOP1000$main
CFUNCTION 254

_NOP1000	:
CBLOCK 254 1 3917

;;{
CLINEA 0000H 0001H 0F4DH 0001H 0001H
CBLOCK 254 2 3917
CLOCAL 4AH 0002H 0000H 0002H "ONCNT" 02H 00H 01H
CBLOCKEND 254 2 3923

;;}
CLINEA 0000H 0001H 0F53H 0001H 0001H
	rt
CBLOCKEND 254 1 3923
CFUNCTIONEND 254


	rseg $$approx_arctan2$main
CFUNCTION 255

_approx_arctan2	:
CBLOCK 255 1 3926

;;{
CLINEA 0000H 0001H 0F56H 0001H 0001H
	push	lr
	push	fp
	mov	fp,	sp
	add	sp,	#-028
	push	xr8
	push	xr4
	mov	er8,	er0
	mov	er10,	er2
CBLOCK 255 2 3926
CRET 0026H
CARGUMENT 47H 0004H 2928H "y" 02H 00H 03H
CARGUMENT 43H 0004H 0004H "x" 02H 00H 03H
CLOCAL 43H 0004H 001CH 0002H "YoverX" 02H 00H 03H
CLOCAL 47H 0004H 2726H 0002H "result" 02H 00H 03H

;;	float YoverX = y/x;
CLINEA 0000H 0001H 0F57H 0002H 0014H
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
CLINEA 0000H 0001H 0F58H 0002H 0012H
	mov	er4,	#0 
	mov	er6,	#0 

;;	if(x>0){
CLINEA 0000H 0001H 0F5AH 0002H 0009H
	l	er0,	4[fp]
	l	er2,	6[fp]
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bgt	_$M79
	b	_$L728
_$M79 :
CBLOCK 255 3 3930

;;		result = (0.97239*YoverX)-(0.19195*pow(YoverX,3));
CLINEA 0000H 0000H 0F5BH 0003H 0034H
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
CBLOCKEND 255 3 3932

;;	}
CLINEA 0000H 0000H 0F5CH 0002H 0002H
_$L728 :

;;	if((x<0)&&(y>=0)){
CLINEA 0000H 0001H 0F5DH 0002H 0013H
	l	er0,	4[fp]
	l	er2,	6[fp]
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$M80
	b	_$L730
_$M80 :
	push	xr8
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$M81
	b	_$L730
_$M81 :
CBLOCK 255 4 3933

;;		result = (0.97239*YoverX)-(0.19195*pow(YoverX,3))+3.14;
CLINEA 0000H 0000H 0F5EH 0003H 0039H
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
CBLOCKEND 255 4 3935

;;	}	
CLINEA 0000H 0000H 0F5FH 0002H 0003H
_$L730 :

;;	if((y<0)&&(x<0)){
CLINEA 0000H 0001H 0F60H 0002H 0012H
	push	xr8
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$M82
	b	_$L737
_$M82 :
	l	er0,	4[fp]
	l	er2,	6[fp]
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	blt	_$M83
	b	_$L737
_$M83 :
CBLOCK 255 5 3936

;;		result = (0.97239*YoverX)-(0.19195*pow(YoverX,3))-3.14;
CLINEA 0000H 0000H 0F61H 0003H 0039H
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
CBLOCKEND 255 5 3938

;;	}
CLINEA 0000H 0000H 0F62H 0002H 0002H
_$L737 :

;;	if((y>0)&&(x==0)){
CLINEA 0000H 0001H 0F63H 0002H 0013H
	push	xr8
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L744
	l	er0,	4[fp]
	l	er2,	6[fp]
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bne	_$L744
CBLOCK 255 6 3939

;;		result = 1.57;
CLINEA 0000H 0001H 0F64H 0003H 0010H
	mov	r0,	#0c3h
	mov	r1,	#0f5h
	mov	r2,	#0c8h
	mov	r3,	#03fh
	mov	er4,	er0
	mov	er6,	er2
CBLOCKEND 255 6 3941

;;	}
CLINEA 0000H 0000H 0F65H 0002H 0002H
_$L744 :

;;	if((y<0)&&(x==0)){
CLINEA 0000H 0001H 0F66H 0002H 0013H
	push	xr8
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$L751
	l	er0,	4[fp]
	l	er2,	6[fp]
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bne	_$L751
CBLOCK 255 7 3942

;;		result = -1.57;
CLINEA 0000H 0001H 0F67H 0003H 0011H
	mov	r0,	#0c3h
	mov	r1,	#0f5h
	mov	r2,	#0c8h
	mov	r3,	#0bfh
	mov	er4,	er0
	mov	er6,	er2
CBLOCKEND 255 7 3944

;;	}
CLINEA 0000H 0000H 0F68H 0002H 0002H
_$L751 :

;;	if((x==0)&&(y==0)){			//we made this up....
CLINEA 0000H 0001H 0F69H 0002H 002CH
	l	er0,	4[fp]
	l	er2,	6[fp]
	push	xr0
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bne	_$L758
	push	xr8
	mov	er0,	#0 
	mov	er2,	#0 
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bne	_$L758
CBLOCK 255 8 3945

;;		result = (0.97239*YoverX)-(0.19195*pow(YoverX,3));
CLINEA 0000H 0000H 0F6DH 0003H 0034H
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
CBLOCKEND 255 8 3950

;;	}
CLINEA 0000H 0000H 0F6EH 0002H 0002H
_$L758 :

;;	result *= 57.29;
CLINEA 0000H 0001H 0F6FH 0002H 0011H
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
CLINEA 0000H 0001H 0F71H 0002H 0011H
	push	xr0
	mov	er0,	#0 
	mov	r2,	#034h
	mov	r3,	#042h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	ble	_$L765
CBLOCK 255 9 3953

;;		result = 45;
CLINEA 0000H 0001H 0F72H 0003H 000EH
	mov	r2,	#034h
	mov	r3,	#042h
	mov	er4,	#0 
	mov	er6,	er2
CBLOCKEND 255 9 3955

;;	}
CLINEA 0000H 0000H 0F73H 0002H 0002H
_$L765 :

;;	if(result < -45){
CLINEA 0000H 0001H 0F74H 0002H 0012H
	push	xr4
	mov	er0,	#0 
	mov	r2,	#034h
	mov	r3,	#0c2h
	push	xr0
	bl	__fcmpu8sw
	add	sp,	#8 
	mov	psw,	r0
	bge	_$L767
CBLOCK 255 10 3956

;;		result = -45;
CLINEA 0000H 0001H 0F75H 0003H 000FH
	mov	r2,	#034h
	mov	r3,	#0c2h
	mov	er4,	#0 
	mov	er6,	er2
CBLOCKEND 255 10 3958

;;	}
CLINEA 0000H 0000H 0F76H 0002H 0002H
_$L767 :

;;	return(result);
CLINEA 0000H 0001H 0F78H 0002H 0010H
	mov	er0,	er4
	mov	er2,	er6
CBLOCKEND 255 2 3961

;;}
CLINEA 0000H 0000H 0F79H 0001H 0001H
	pop	xr4
	pop	xr8
	mov	sp,	fp
	pop	fp
	pop	pc
CBLOCKEND 255 1 3961
CFUNCTIONEND 255


	rseg $$NVARmain
_$ST0 :
	ds	02h
	public _AccelSensorControlPID_D
	public _AccelSensorControlPID_I
	public _AccelSensorControlPID_P
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
	db	013h
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
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	04214h
	dw	00h
	dw	04100h
	dw	00h
	dw	04150h
	dw	00h
	dw	04214h
	dw	00h
	dw	04100h
	dw	00h
	dw	04150h
	db	00h
	db	00h
	db	00h
	align
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
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	db	00h
	db	00h
	dw	03a98h
	dw	01f40h
	dw	02102h
	dw	04268h
	db	00h
	db	00h
	dw	00h
	dw	032c8h
	dw	02904h
	dw	02134h
	dw	0ff88h
	dw	0ff9ch
	dw	032h
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

	rseg $$TAB$$S183$main
$$S183 :
	DB	"%f,%f,%f,%f,%f,%f,%f,%u", 00H

	rseg $$TAB$$S196$main
$$S196 :
	DB	"%f,%f,%f", 00H

	rseg $$TAB$$S209$main
$$S209 :
	DB	"%f", 00H

	rseg $$TAB$$S223$main
$$S223 :
	DB	"Gyro Calibration: Please Keep the Quad Flat and Return Any 2 chars to Start", 00H

	rseg $$TAB$$S248$main
$$S248 :
	DB	"Gyro Calibration Complete!", 00H

	rseg $$TAB$$S264$main
$$S264 :
	DB	"Accel Calibration: Keep Quad Flat! Return any 2 chars to Start", 00H

	rseg $$TAB$$S295$main
$$S295 :
	DB	"Accel Calibration: Tilt the Quad 90deg in the ROLL Direction! Return any 2 chars to Start", 00H

	rseg $$TAB$$S320$main
$$S320 :
	DB	"Accel Calibration: Tilt the Quad 90deg in the PITCH direction! Return any 2 chars to Start", 00H

	rseg $$TAB$$S345$main
$$S345 :
	DB	"Accel Calibration Complete!", 00H

	rseg $$TAB$$S367$main
$$S367 :
	DB	"Current Settings: kp=%f,ki=%f,kd=%f,a1=%f,a2=%f,Pb=%u,Db=%u", 00H

	rseg $$TAB$$S423$main
$$S423 :
	DB	"    New Settings: kp=%f,ki=%f,kd=%f,a1=%f,a2=%f,Pb=%u,Db=%u", 00H

	rseg $$TAB$$S501$main
$$S501 :
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
_AccGyro_CF_FlagCounter :
	ds	01h
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
_Accel_PID_XRollError :
	ds	04h
_Accel_PID_XRollCounter_I :
	ds	02h
_Accel_PID_XRollCounter_D :
	ds	02h
_Accel_PID_XRollErrSum :
	ds	04h
_Accel_PID_XRollErrPrev :
	ds	04h
_Accel_PID_YPitchError :
	ds	04h
_Accel_PID_YPitchCounter_I :
	ds	02h
_Accel_PID_YPitchCounter_D :
	ds	02h
_Accel_PID_YPitchErrSum :
	ds	04h
_Accel_PID_YPitchErrPrev :
	ds	04h
_Accel_PID_XRolldErr :
	ds	04h
_Accel_PID_YPitchdErr :
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
_Accel_PID_IFlag :
	ds	01h
_Accel_PID_DFlag :
	ds	01h
_Accel_PID_XYChangeFlag :
	ds	01h
	align
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
_Accel_PID_PBounds_Var_Pos :
	ds	02h
_Accel_PID_DBounds_Var_Pos :
	ds	02h
_Accel_PID_PBounds_Var_Neg :
	ds	02h
_Accel_PID_DBounds_Var_Neg :
	ds	02h
_PrePIDCount :
	ds	01h
_PWMflag :
	ds	01h
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
_PWMIdleDutyRun :
	ds	02h
_PWMLowerDutyLimitRun :
	ds	02h
_PWMtoRPMOffset_Mot2 :
	ds	02h
_PWMtoRPMOffset_Mot3 :
	ds	02h
_PWMtoRPMOffset_Mot4 :
	ds	02h
_$ST1 :
	ds	02h
_$ST2 :
	ds	01h
	align
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

	rseg $$NVARmain
_RecWorld :
	ds	08h
_SensorReturn :
	ds	0c8h
_Gyro_Zout :
	ds	04h
_Gyro_Yout :
	ds	04h
_NewVar_Str :
	ds	06h
_Accel_Zout_Avg :
	ds	04h
_Accel_Yout_Avg :
	ds	04h
_Accel_Xout_Avg :
	ds	04h
_NewVar :
	ds	04h
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
	ds	03ch
_Accel_Ycal :
	ds	0ch
_SensorReturnSM :
	ds	032h
_testI :
	ds	02h
_testD :
	ds	02h
_testP :
	ds	02h
_Accel_Yout :
	ds	03ch
_Accel_Zout :
	ds	03ch
_Gyro_Xout :
	ds	04h
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
