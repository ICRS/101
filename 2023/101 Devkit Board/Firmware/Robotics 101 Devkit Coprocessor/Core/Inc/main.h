/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32g4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);
void MX_I2C1_Init(void);
void MX_TIM2_Init(void);
void MX_TIM8_Init(void);
void MX_USART2_UART_Init(void);
void MX_USB_PCD_Init(void);
void MX_TIM7_Init(void);

/* USER CODE BEGIN EFP */
void ESP32_EN_switch(uint8_t mode);
/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define LED_BUILTIN_Pin GPIO_PIN_15
#define LED_BUILTIN_GPIO_Port GPIOC
#define MOTOR_SLEEP_Pin GPIO_PIN_0
#define MOTOR_SLEEP_GPIO_Port GPIOF
#define M1_IN1_Pin GPIO_PIN_0
#define M1_IN1_GPIO_Port GPIOA
#define M1_IN2_Pin GPIO_PIN_1
#define M1_IN2_GPIO_Port GPIOA
#define ESP32_EN_Pin GPIO_PIN_4
#define ESP32_EN_GPIO_Port GPIOA
#define ESP32_IO0_Pin GPIO_PIN_5
#define ESP32_IO0_GPIO_Port GPIOA
#define S0_Pin GPIO_PIN_6
#define S0_GPIO_Port GPIOA
#define S1_Pin GPIO_PIN_7
#define S1_GPIO_Port GPIOA
#define S2_Pin GPIO_PIN_0
#define S2_GPIO_Port GPIOB
#define VIN_11_Pin GPIO_PIN_12
#define VIN_11_GPIO_Port GPIOB
#define VBUS_11_Pin GPIO_PIN_14
#define VBUS_11_GPIO_Port GPIOB
#define S3_Pin GPIO_PIN_15
#define S3_GPIO_Port GPIOB
#define S4_Pin GPIO_PIN_6
#define S4_GPIO_Port GPIOC
#define S5_Pin GPIO_PIN_8
#define S5_GPIO_Port GPIOA
#define S6_Pin GPIO_PIN_9
#define S6_GPIO_Port GPIOA
#define S7_Pin GPIO_PIN_10
#define S7_GPIO_Port GPIOA
#define M2_IN2_Pin GPIO_PIN_8
#define M2_IN2_GPIO_Port GPIOB
#define M2_IN1_Pin GPIO_PIN_9
#define M2_IN1_GPIO_Port GPIOB

/* USER CODE BEGIN Private defines */

#define ESP32_EN_NOPUT 0x00
#define ESP32_EN_INPUT 0x01
#define ESP32_EN_OUTPUT 0x02
#define ESP32_EN_INT 0x03

extern UART_HandleTypeDef huart2;
extern TIM_HandleTypeDef htim2;
extern TIM_HandleTypeDef htim7;
extern TIM_HandleTypeDef htim8;
extern I2C_HandleTypeDef hi2c1;

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
