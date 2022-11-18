/*
 * pos.c
 *
 *  Created on: Nov 17, 2022
 *      Author: 42426
 */

#include "pos.h"

void Pos_Init(void){
	LL_ADC_Enable(ADC1);
	LL_ADC_StartCalibration(ADC1);
	while(LL_ADC_IsCalibrationOnGoing(ADC1));
}

float Motor_GetPosition(void){
	uint16_t ADC_Value = 0;
	float Position_Val = 0;

	LL_ADC_REG_SetSequencerChAdd(ADCx, Channel);
}

