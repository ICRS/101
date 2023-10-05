/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file    app_threadx.c
 * @author  MCD Application Team
 * @brief   ThreadX applicative file
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2020-2021 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "app_threadx.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

#define NEW_MESSAGE_RECEIVED   0x01

#define I2C_MESSAGE_SIZE 2

#define MESSAGE_TOPIC_LED 			64
#define MESSAGE_TOPIC_MOTOR1_EN 	65
#define MESSAGE_TOPIC_MOTOR1_DIR	66
#define MESSAGE_TOPIC_MOTOR2_EN 	67
#define MESSAGE_TOPIC_MOTOR2_DIR 	68
#define MESSAGE_TOPIC_S0 			69
#define MESSAGE_TOPIC_S1 			70
#define MESSAGE_TOPIC_S2 			71
#define MESSAGE_TOPIC_S3 			72
#define MESSAGE_TOPIC_S4 			73
#define MESSAGE_TOPIC_S5 			74
#define MESSAGE_TOPIC_S6 			75
#define MESSAGE_TOPIC_S7 			76


/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
TX_THREAD tx_app_thread;
/* USER CODE BEGIN PV */

TX_EVENT_FLAGS_GROUP MessageFlag;

uint8_t rxcount = 0;
uint8_t countAddr = 0;

uint8_t is_first_recvd = 0;
uint8_t RxData[I2C_MESSAGE_SIZE];

uint8_t motor1_enable = 0;
uint8_t motor2_enable = 0;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */

void motor1_start();
void motor2_start();

void motor1_update(uint8_t pwm_value, uint8_t dir);
void motor2_update(uint8_t pwm_value, uint8_t dir);

/* USER CODE END PFP */

/**
 * @brief  Application ThreadX Initialization.
 * @param memory_ptr: memory pointer
 * @retval int
 */
UINT App_ThreadX_Init(VOID *memory_ptr)
{
	UINT ret = TX_SUCCESS;
	TX_BYTE_POOL *byte_pool = (TX_BYTE_POOL*)memory_ptr;
	/* USER CODE BEGIN App_ThreadX_MEM_POOL */

	/* USER CODE END App_ThreadX_MEM_POOL */
	CHAR *pointer;

	/* Allocate the stack for tx app thread  */
	if (tx_byte_allocate(byte_pool, (VOID**) &pointer,
			TX_APP_STACK_SIZE, TX_NO_WAIT) != TX_SUCCESS)
	{
		return TX_POOL_ERROR;
	}
	/* Create tx app thread.  */
	if (tx_thread_create(&tx_app_thread, "tx app thread", tx_app_thread_entry, 0, pointer,
			TX_APP_STACK_SIZE, TX_APP_THREAD_PRIO, TX_APP_THREAD_PREEMPTION_THRESHOLD,
			TX_APP_THREAD_TIME_SLICE, TX_APP_THREAD_AUTO_START) != TX_SUCCESS)
	{
		return TX_THREAD_ERROR;
	}

	/* USER CODE BEGIN App_ThreadX_Init */

	/* Create the message flags group */
	if (tx_event_flags_create(&MessageFlag, "Message Flag") != TX_SUCCESS)
	{
		return TX_GROUP_ERROR;
	}

	/* USER CODE END App_ThreadX_Init */

	return ret;
}
/**
 * @brief  Function implementing the tx_app_thread_entry thread.
 * @param  thread_input: Hardcoded to 0.
 * @retval None
 */
void tx_app_thread_entry(ULONG thread_input)
{
	/* USER CODE BEGIN tx_app_thread_entry */

	ULONG messageReceivedFlag = 0;

	uint8_t messageTopic;
	uint8_t messageData;

	uint8_t motor1_pwm_value = 0;
	uint8_t motor2_pwm_value = 0;
	uint8_t motor1_dir = 0;
	uint8_t motor2_dir = 0;

	/* Enable I2C slave mode */
	HAL_I2C_EnableListen_IT(&hi2c1);

	/* Set motors to idle, turn off LED */
	reset_extra_functions();

	/* Begin the main loop */
	while (1){

		/* Wait until the requested flag NEW_MESSAGE_RECEIVED is received */
		if (tx_event_flags_get(&MessageFlag, NEW_MESSAGE_RECEIVED, TX_OR_CLEAR,
				&messageReceivedFlag, TX_WAIT_FOREVER) != TX_SUCCESS)
		{
			Error_Handler();
		}

		/* Process the message */
		messageTopic = RxData[0];
		messageData = RxData[1];

		switch (messageTopic)
		{

		/* Process LED message */
		case MESSAGE_TOPIC_LED:
			if (messageData != 0x00){
				HAL_GPIO_WritePin(LED_BUILTIN_GPIO_Port, LED_BUILTIN_Pin, GPIO_PIN_SET);
			}
			else {
				HAL_GPIO_WritePin(LED_BUILTIN_GPIO_Port, LED_BUILTIN_Pin, GPIO_PIN_RESET);
			}
			break;

			/* Process MOTOR1_EN message */
		case MESSAGE_TOPIC_MOTOR1_EN:

			/* Enable motor 1 if this is the first time a motor 1 command is sent */
			if (motor1_enable == 0){
				motor1_start();
				motor1_enable = 1;
			}

			/* Set motor pwm values */
			motor1_pwm_value = messageData;
			motor1_update(motor1_pwm_value, motor1_dir);

			break;

		case MESSAGE_TOPIC_MOTOR1_DIR:

			/* Enable motor 1 if this is the first time a motor 1 command is sent */
			if (motor1_enable == 0){
				motor1_start();
				motor1_enable = 1;
			}

			/* Set motor pwm values */
			motor1_dir = messageData;
			motor1_update(motor1_pwm_value, motor1_dir);

			break;

		case MESSAGE_TOPIC_MOTOR2_EN:

			/* Enable motor 2 if this is the first time a motor 2 command is sent */
			if (motor2_enable == 0){
				motor2_start();
				motor2_enable = 1;
			}

			/* Set motor pwm values */
			motor2_pwm_value = messageData;
			motor2_update(motor2_pwm_value, motor2_dir);

			break;

		case MESSAGE_TOPIC_MOTOR2_DIR:

			/* Enable motor 2 if this is the first time a motor 2 command is sent */
			if (motor2_enable == 0){
				motor2_start();
				motor2_enable = 1;
			}

			/* Set motor pwm values */
			motor2_dir = messageData;
			motor2_update(motor2_pwm_value, motor2_dir);

			break;

		case MESSAGE_TOPIC_S0:

			break;

		case MESSAGE_TOPIC_S1:

			break;

		case MESSAGE_TOPIC_S2:

			break;

		case MESSAGE_TOPIC_S3:

			break;

		case MESSAGE_TOPIC_S4:

			break;

		case MESSAGE_TOPIC_S5:

			break;

		case MESSAGE_TOPIC_S6:

			break;

		case MESSAGE_TOPIC_S7:

			break;


		default:

		}
	}

	/* USER CODE END tx_app_thread_entry */
}

/**
 * @brief  Function that implements the kernel's initialization.
 * @param  None
 * @retval None
 */
void MX_ThreadX_Init(void)
{
	/* USER CODE BEGIN  Before_Kernel_Start */

	/* USER CODE END  Before_Kernel_Start */

	tx_kernel_enter();

	/* USER CODE BEGIN  Kernel_Start_Error */

	/* USER CODE END  Kernel_Start_Error */
}

/* USER CODE BEGIN 1 */

void HAL_I2C_ListenCpltCallback (I2C_HandleTypeDef *hi2c)
{
	HAL_I2C_EnableListen_IT(hi2c);
}

void HAL_I2C_AddrCallback(I2C_HandleTypeDef *hi2c, uint8_t TransferDirection, uint16_t AddrMatchCode)
{
	if(TransferDirection == I2C_DIRECTION_TRANSMIT)  // if the master wants to transmit the data
	{

		/* Reset counter at start of transmission */
		rxcount = 0;

		/* receive using sequential function. */
		HAL_I2C_Slave_Sequential_Receive_IT(hi2c, RxData+rxcount, 1, I2C_FIRST_FRAME);
	}
	else  // master requesting the data is not supported yet
	{
		//		Error_Handler();
	}
}

void HAL_I2C_SlaveRxCpltCallback(I2C_HandleTypeDef *hi2c)
{

	/* Increment the counter */
	rxcount++;

	/* If message in progress */
	if (rxcount < I2C_MESSAGE_SIZE)
	{
		if (rxcount == I2C_MESSAGE_SIZE-1)
		{
			/* Receive the last byte */
			HAL_I2C_Slave_Sequential_Receive_IT(hi2c, RxData+rxcount, 1, I2C_LAST_FRAME);
		}
		else
		{
			/* Receive the next byte */
			HAL_I2C_Slave_Sequential_Receive_IT(hi2c, RxData+rxcount, 1, I2C_NEXT_FRAME);
		}
	}

	/* If message is over, process data */
	else if (rxcount == I2C_MESSAGE_SIZE)
	{
		/* Set NEW_MESSAGE_RECEIVED flag */
		if (tx_event_flags_set(&MessageFlag, NEW_MESSAGE_RECEIVED, TX_OR) != TX_SUCCESS)
		{
			Error_Handler();
		}
	}

	//	/*  Roll back the counter if gets larger than I2C_MESSAGE_SIZE */
	//	if (rxcount >= I2C_MESSAGE_SIZE) rxcount = 0;
}

void reset_extra_functions(){
	HAL_GPIO_WritePin(LED_BUILTIN_GPIO_Port, LED_BUILTIN_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(MOTOR_SLEEP_GPIO_Port, MOTOR_SLEEP_Pin, GPIO_PIN_RESET);
	motor1_update(0, 0);
	motor2_update(0, 0);
	motor1_enable = 0;
	motor2_enable = 0;
}

void HAL_I2C_ErrorCallback(I2C_HandleTypeDef *hi2c)
{

	uint32_t errorcode = HAL_I2C_GetError(hi2c);

	/* AF Error indicates transmission is over */
	if (errorcode == HAL_I2C_ERROR_AF)
	{
		/* Set NEW_MESSAGE_RECEIVED flag */
		if (tx_event_flags_set(&MessageFlag, NEW_MESSAGE_RECEIVED, TX_OR) != TX_SUCCESS)
		{
			Error_Handler();
		}
	}

	HAL_I2C_EnableListen_IT(hi2c);
}

void motor1_start(){
	HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_1); /* M1_IN1 */
	HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_2); /* M1_IN2 */
	HAL_GPIO_WritePin(MOTOR_SLEEP_GPIO_Port, MOTOR_SLEEP_Pin, GPIO_PIN_SET);
}

void motor2_start(){
	HAL_TIM_PWM_Start(&htim8, TIM_CHANNEL_3); /* M2_IN1 */
	HAL_TIM_PWM_Start(&htim8, TIM_CHANNEL_2); /* M2_IN2 */
	HAL_GPIO_WritePin(MOTOR_SLEEP_GPIO_Port, MOTOR_SLEEP_Pin, GPIO_PIN_SET);
}

void motor1_update(uint8_t pwm_value, uint8_t dir){
	if (dir == 0){
		__HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_1, 0xFF - pwm_value);	/* M1_IN1 */
		__HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_2, 0xFF); /* M1_IN2 */
	}
	else{
		__HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_1, 0xFF);	/* M1_IN1 */
		__HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_2, 0xFF - pwm_value); /* M1_IN2 */
	}
}

void motor2_update(uint8_t pwm_value, uint8_t dir){
	if (dir == 0){
		__HAL_TIM_SET_COMPARE(&htim8, TIM_CHANNEL_3, 0xFF - pwm_value);	/* M2_IN1 */
		__HAL_TIM_SET_COMPARE(&htim8, TIM_CHANNEL_2, 0xFF); /* M2_IN2 */
	}
	else{
		__HAL_TIM_SET_COMPARE(&htim8, TIM_CHANNEL_3, 0xFF);	/* M2_IN1 */
		__HAL_TIM_SET_COMPARE(&htim8, TIM_CHANNEL_2, 0xFF - pwm_value); /* M2_IN2 */
	}
}
/* USER CODE END 1 */
