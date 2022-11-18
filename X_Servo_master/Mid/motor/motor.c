#include "motor.h"

void Motor_Init(void) {
	LL_TIM_CC_EnableChannel(TIM3, LL_TIM_CHANNEL_CH1);
	LL_TIM_CC_EnableChannel(TIM3, LL_TIM_CHANNEL_CH2);
	LL_TIM_EnableCounter(TIM3);
}


void Motor_Move(motor_direction_t motor_direction, uint16_t speed)
{
	if(motor_direction == stop)
	{
		LL_TIM_OC_SetCompareCH1(TIM3, 0);
		LL_TIM_OC_SetCompareCH2(TIM3, 0);
	}
	else if(motor_direction == forward)
	{
		LL_TIM_OC_SetCompareCH1(TIM3, 0);
		LL_TIM_OC_SetCompareCH2(TIM3, speed);
	}
	else if(motor_direction == forward)
	{
		LL_TIM_OC_SetCompareCH1(TIM3, speed);
		LL_TIM_OC_SetCompareCH2(TIM3, 0);
	}
}
