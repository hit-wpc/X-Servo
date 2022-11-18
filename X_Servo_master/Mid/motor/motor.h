/*
 * motor.h
 *
 *  Created on: Nov 17, 2022
 *      Author: 42426
 */

#ifndef MOTOR_MOTOR_H_
#define MOTOR_MOTOR_H_

typedef enum{
	stop,
	forward,
	backward,
}motor_direction_t;

#include "tim.h"


void Motor_Move(motor_direction_t motor_direction,uint16_t speed);
void Motor_Init(void);

#endif /* MOTOR_MOTOR_H_ */
