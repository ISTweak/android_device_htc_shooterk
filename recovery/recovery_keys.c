/*
 * Copyright (C) 2009 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <linux/input.h>

#include "recovery_ui.h"
#include "common.h"
#include "extendedcommands.h"
#define KEY_FOCUS			250	/* FOCUS */
#define KEY_POUND			252	/* # */

int device_toggle_display(volatile char* key_pressed, int key_code) {
	return key_pressed[KEY_POWER] && key_code == KEY_VOLUMEUP;
}

int device_handle_key(int key_code, int visible) {
	if (visible) {
		switch (key_code) {
			case KEY_DOWN:
			case KEY_VOLUMEDOWN:
			case KEY_MENU:
			case KEY_8:
				return HIGHLIGHT_DOWN;

			case KEY_UP:
			case KEY_VOLUMEUP:
			case KEY_2:
				return HIGHLIGHT_UP;

			case KEY_END:
			case KEY_POWER:
			case KEY_HOME:
			case KEY_ENTER:
			case KEY_5:
			case KEY_SAVE:
				return SELECT_ITEM;

			case KEY_POUND:
			case KEY_BACK:
			case KEY_CAMERA_FOCUS:
			case KEY_CAMERA:
			case KEY_ZOOM:
				return GO_BACK;
		}
    }

	return NO_ACTION;
}
