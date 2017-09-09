//Get the player's input
key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("Q"));
key_jump = -keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check(vk_space);
crouch = max(keyboard_check(vk_shift),keyboard_check(vk_control));
crouch_pressed = max(keyboard_check_pressed(vk_shift),keyboard_check_pressed(vk_control));
crouch_released = max(keyboard_check_released(vk_shift),keyboard_check_released(vk_control));
