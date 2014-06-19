/*



//############################################################################
//#                                 Macro                                    #
//############################################################################



//############################################################################
//#                               Structure                                  #
//############################################################################



//############################################################################
//#                                Variable                                  #
//############################################################################

#ifdef HTBC_HZ
// šdefine

// ƒuƒU[—p
// TMnD ‚É‚Í -1 ‚µ‚½’l‚ðƒZƒbƒg
static const unsigned short _valBzrHalfCycle = (unsigned short)( (HTBC_HZ/BZR_HALF_HZ)-1 );

// ’èŠúˆ——p(10ms)
// TMnD ‚É‚Í -1 ‚µ‚½’l‚ðƒZƒbƒg
static const unsigned short _valIntervalCycle = (unsigned short)( (HTBC_HZ/INTERVAL_HZ)-1 );

#else // ifdef HTBC_HZ
 #error 'HTBC_HZ' is not defined.
#endif // HTBC_HZ


static STRUCT_STATE _state = {
	STATE_COLOR, STATE_COLOR_NATURAL, 0
};

static unsigned char _swInput = SW_NONE;
static unsigned char _bzrCount = 0;

static unsigned char _IntervalFlag = FALSE;


//############################################################################
//#                               Prototype                                  #
//############################################################################

static void _initState( void );

static void _intP00( void );
static void _intP01( void );
static void _intP02( void );
static void _intP03( void );
static void _intTM1( void );
static void _intTM9( void );
static void _intT16H( void );


static void _swInit( void );

static void _bzrInit( void );
static void _bzrStart( unsigned char num );
static void _bzrOperate( void );

static void _IntervalInit( void );
static void _IntervalStart( void );
static void _IntervalStop( void );

static void _stateColorNatural( void );
static void _stateColorBulb( void );
static void _stateColorMixed( void );
static void _stateNightLight( void );

static void _changeNextState( void );
static void _changeNextStateColor( void );

static void _sendStr( void );


//############################################################################
//#                                  API                                     #
//############################################################################

//*****************************************************************************
//	Routine Name:	main
//	Form:			int main( void )
//	Parameters:		void
//	Return value:	int
//	Description:	main
//******************************************************************************
int main( void )
{
	//=== Main initialize. ===
	//--- Peripheral. ---
	_initPeri();

#ifdef DEBUG
	//--- message send ---/
	uartSendStr( STR_INIT, (unsigned char)STR_INIT_NUM );
#endif // DEBUG

	//--- State. ---/
	_initState();

	//=== Main loop. ===/
	for (;;)
	{
		//=== Clear WDT. ===/
		main_clrWDT();

		if( _state.state == STATE_COLOR )
		{
			switch( _state.state_sub )
			{
				case STATE_COLOR_NATURAL:
					_stateColorNatural();
					break;
				case STATE_COLOR_BULB:
					_stateColorBulb();
					break;
				case STATE_COLOR_MIXED:
					_stateColorMixed();
					break;
				default:

					_initState();
					break;
			}
		}
		else if( _state.state == STATE_NIGHT )
		{
			_stateNightLight();
		}
	}

	return 0;
}














//############################################################################
//#                              Subroutine                                  #
//############################################################################





static void _initState( void )
{

	_state.state = STATE_COLOR;
	_state.state_sub = STATE_COLOR_NATURAL;
	ledNaturalOn();
	
	ledBulbOff();
	ledNightOff();
	
	_sendStr();
}



static void _intP00( void )
{
	_swInput = ( _swInput==SW_NONE ) ? SW_COLOR : _swInput;
}

static void _intP01( void )
{
	_swInput = ( _swInput==SW_NONE ) ? SW_NIGHT : _swInput;
}

static void _intP02( void )
{
	_swInput = ( _swInput==SW_NONE ) ? SW_PLUS : _swInput;
}

static void _intP03( void )
{
	_swInput = ( _swInput==SW_NONE ) ? SW_MINUS : _swInput;
}

static void _intTM1( void )
{
	_IntervalFlag = TRUE;
}

static void _intTM9( void )
{
	ledNightToggle();
}

static void _intT16H( void )
{
	_bzrOperate();
}


static void _swInit( void )
{
	// ƒ{[ƒh‚Épull-up’ïR‚ªÚ‚Á‚Ä‚¢‚é‚Ì‚ÅAƒ|[ƒgÝ’è‚Å‚Ípull-up‚Í‚µ‚È‚¢B


	P00E0 = 0;
	P00E1 = 1;	// pos edge interrupt
	P00SM = 1;	// sampling enable


	P01E0 = 0;
	P01E1 = 1;	// pos edge interrupt
	P01SM = 1;	// sampling enable


	P02E0 = 0;
	P02E1 = 1;	// pos edge interrupt
	P02SM = 1;	// sampling enable


	P03E0 = 0;
	P03E1 = 1;	// pos edge interrupt
	P03SM = 1;	// sampling enable


	_swInput = SW_NONE;
}


static void _bzrInit( void )
{

	P23C0 = 1;
	P23C1 = 1;	// cmos
	P23MD  = 0;
	P23MD1 = 1;	// timer b
	
	tm_init( TM_CH_NO_AB ); // count stop, 16bit mode
	tm_setABSource( TM_CS_HTBCLK );
	tm_setAOneshot( TM_OST_DIS ); // normal(auto reload) mode
	TBNEG = 0;	// 
	
	tm_setABData( _valBzrHalfCycle );
	

	_bzrCount = 0;
}

static void _bzrStart( unsigned char num )
{
	tm_stopAB();
	_bzrCount = ( num * 2u );

	Q16H = 0;
	E16H = 1;
}

static void _bzrOperate( void )
{
	if( _bzrCount > 0 )
	{
		_bzrCount--;
		if( (_bzrCount % 2) == TRUE )
		{
			tm_startAB();
		}
		else
		{
			tm_stopAB();
		}
		
		if( _bzrCount == 0 )
		{
			E16H = 0;
		}
	}
}

static void _IntervalInit( void )
{
	tm_init( TM_CH_NO_01 ); // count stop, 16bit mode
	tm_set01Source( TM_CS_HTBCLK );
	
	tm_set01Data( _valIntervalCycle );
	
	_IntervalFlag = FALSE;

}

static void _IntervalStart( void )
{
	_IntervalFlag = FALSE;
	ETM1 = 1;
	tm_start01();
}

static void _IntervalStop( void )
{
	tm_stop01();
	ETM1 = 0;
}





static void _stateColorNatural( void )
{
	unsigned char bzr = 0;
	unsigned char result;

	if( _swInput != SW_NONE )
	{
		if( _swInput == SW_COLOR )
		{
			_changeNextStateColor();
			bzr = BZR_STATE_CHANGE;
		}
		else if( _swInput == SW_NIGHT )
		{
			_changeNextState();
			bzr = BZR_STATE_CHANGE;
		}
		else if( _swInput == SW_PLUS )
		{
			result = ledNaturalStepUpDn( STEP_UP );
			bzr = ( result == PASS ) ? BZR_PLUSMINUS : BZR_PLUSMINUS_LIMIT;
		}
		else if( _swInput == SW_MINUS )
		{
			result = ledNaturalStepUpDn( STEP_DOWN );
			bzr = ( result == PASS ) ? BZR_PLUSMINUS : BZR_PLUSMINUS_LIMIT;
		}
		_swInput = SW_NONE;
		
		if( bzr != 0 )
		{
			_bzrStart( bzr );
			_sendStr();
		}
	}
}

static void _stateColorBulb( void )
{
	unsigned char bzr = 0;
	unsigned char result;

	if( _swInput != SW_NONE )
	{
		if( _swInput == SW_COLOR )
		{
			_changeNextStateColor();
			bzr = BZR_STATE_CHANGE;
		}
		else if( _swInput == SW_NIGHT )
		{
			_changeNextState();
			bzr = BZR_STATE_CHANGE;
		}
		else if( _swInput == SW_PLUS )
		{
			result = ledBulbStepUpDn( STEP_UP );
			bzr = ( result == PASS ) ? BZR_PLUSMINUS : BZR_PLUSMINUS_LIMIT;
		}
		else if( _swInput == SW_MINUS )
		{
			result = ledBulbStepUpDn( STEP_DOWN );
			bzr = ( result == PASS ) ? BZR_PLUSMINUS : BZR_PLUSMINUS_LIMIT;
		}
		_swInput = SW_NONE;

		if( bzr != 0 )
		{
			_bzrStart( bzr );
			_sendStr();
		}
	}
}

static void _stateColorMixed( void )
{
	unsigned char bzr = 0;
	unsigned short adValue;
	unsigned short step;

	if( _swInput != SW_NONE )
	{
		if( _swInput == SW_COLOR )
		{
			_changeNextStateColor();
			bzr = BZR_STATE_CHANGE;
		}
		else if( _swInput == SW_NIGHT )
		{
			_changeNextState();
			bzr = BZR_STATE_CHANGE;
		}
		_swInput = SW_NONE;

		if( bzr != 0 )
		{
			_bzrStart( bzr );
			_sendStr();
		}
	}
	else if( _IntervalFlag == TRUE ) 
	{
		adValue = volGetAdValue();
	
		step = adValueToStep(adValue);
		ledMixedStepUpDn( step );
		_IntervalFlag = FALSE;
	}
}

static void _stateNightLight( void )
{
	unsigned char bzr = 0;
	unsigned char result;

	if( _swInput != SW_NONE )
	{
		if( _swInput == SW_COLOR )
		{
			_changeNextState();
			bzr = BZR_STATE_CHANGE;
		}
		else if( _swInput == SW_PLUS )
		{
			result = ledNightStepUpDn( STEP_UP );
			bzr = ( result == PASS ) ? BZR_PLUSMINUS : BZR_PLUSMINUS_LIMIT;
		}
		else if( _swInput == SW_MINUS )
		{
			result = ledNightStepUpDn( STEP_DOWN );
			bzr = ( result == PASS ) ? BZR_PLUSMINUS : BZR_PLUSMINUS_LIMIT;
		}
		_swInput = SW_NONE;

		if( bzr != 0 )
		{
			_bzrStart( bzr );
			_sendStr();
		}

	}
}



static void _changeNextState( void )
{
	unsigned short adValue;

	if( _state.state == STATE_COLOR )
	{
		_state.state = STATE_NIGHT;
		switch( _state.state_sub )
		{
			case STATE_COLOR_NATURAL:
				ledNaturalOff();
				break;
			case STATE_COLOR_BULB:
				ledBulbOff();
				break;
			case STATE_COLOR_MIXED:
				_IntervalStop();
				ledMixedOff();
				break;
			default:


				ledNaturalOff();
				ledBulbOff();
				_state.state_sub = STATE_COLOR_NATURAL;
				break;
		}
		ledNightOn();
	}
	else // STATE_NIGHT
	{
		_state.state = STATE_COLOR;
		ledNightOff();
		switch( _state.state_sub )
		{
			case STATE_COLOR_NATURAL:
				ledNaturalOn();
				break;
			case STATE_COLOR_BULB:
				ledBulbOn();
				break;
			case STATE_COLOR_MIXED:
				adValue = volGetAdValue();


				stepMixed = adValueToStep(adValue);
				ledMixedOn();
				_IntervalStart();
				break;
			default:


				_state.state_sub = STATE_COLOR_NATURAL;
				ledNaturalOn();
				break;
		}
	}
}

static void _changeNextStateColor( void )
{
	unsigned short adValue;
	
	if( _state.state_sub == STATE_COLOR_NATURAL )
	{
		_state.state_sub = STATE_COLOR_BULB;
		ledNaturalOff();
		ledBulbOn();
	}
	else if( _state.state_sub == STATE_COLOR_BULB )
	{
		_state.state_sub = STATE_COLOR_MIXED;
		ledBulbOff();
		adValue = volGetAdValue();


		stepMixed = adValueToStep(adValue);
		ledMixedOn();
		_IntervalStart();
	}
	else // STATE_COLOR_MIXED
	{
		_state.state_sub = STATE_COLOR_NATURAL;
		_IntervalStop();
		ledMixedOff();
		ledNaturalOn();
	}
}

static void _sendStr( void )
{
	         char* strState;
	unsigned char  numState;
	         char  strStep[STR_STEP_NUM];
	unsigned char  numStep;

	unsigned char  nowStep = 0;
	unsigned char  maxFlag = FALSE;

	if( _state.state == STATE_COLOR )
	{
		switch( _state.state_sub )
		{
			case STATE_COLOR_NATURAL:
				strState = (unsigned char*)STR_STATE_NATURAL;
				numState = (unsigned char)STR_STATE_NATURAL_NUM;
				nowStep = stepNatural + 1u;
				maxFlag = ( stepNatural == STEP_SINGLE_MAX ) ? TRUE : FALSE ;
				break;
			case STATE_COLOR_BULB:
				strState = (unsigned char*)STR_STATE_BULB;
				numState = (unsigned char)STR_STATE_BULB_NUM;
				nowStep = stepBulb + 1u;
				maxFlag = ( stepBulb == STEP_SINGLE_MAX ) ? TRUE : FALSE ;
				break;
			case STATE_COLOR_MIXED:
				strState = (unsigned char*)STR_STATE_MIXED;
				numState = (unsigned char)STR_STATE_MIXED_NUM;
				nowStep = 0; // ƒ{ƒŠƒ…[ƒ€‚Ío—Í‚µ‚È‚¢
				maxFlag = FALSE;
				break;
			default:
				return;
				//break;
		}
	}
	else if( _state.state == STATE_NIGHT )
	{
		strState = (unsigned char*)STR_STATE_NIGHT;
		numState = (unsigned char)STR_STATE_NIGHT_NUM;
		nowStep = stepNight + 1u;
		maxFlag = ( stepNight == STEP_NIGHT_MAX ) ? TRUE : FALSE ;
	}

	numStep = 0;
	if( nowStep >= 10 )
	{
		strStep[numStep] = ( ( nowStep / 10 ) + '0' );
		numStep++;
	}
	if( nowStep > 0 )
	{
		strStep[numStep] = ( ( nowStep % 10 ) + '0' );
		numStep++;
	}
	

	uartSendStr( STR_BASE1, (unsigned char)STR_BASE1_NUM );
	uartSendStr( strState,  numState );
	if( numStep > 0 )
	{
		uartSendStr( STR_BASE2, (unsigned char)STR_BASE2_NUM );
		uartSendStr( strStep, numStep );
		if( maxFlag == TRUE )
		{
			uartSendStr( STR_MAX, (unsigned char)STR_MAX_NUM );
		}
	}
	uartSendStr( STR_NEWLINE, (unsigned char)STR_NEWLINE_NUM );
}

*/