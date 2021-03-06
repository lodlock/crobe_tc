///popup_message(text,type,btn1_function,btn2_function,btn1_text,btn2_text,priority)
/*
    Display message popup
    
    Descriptions
    argument0 = message content (string)
    argument1 = message type (real)
    argument2 = first button function (string)
    argument3 = second button function (string)
    argument4 = first button text (string)
    argument5 = second button text (string)
    argument6 = message priority (real)
*/
//Defining variables
global.v_msg = string(argument0); //Text message
global.v_msg_type = argument1; //0 = Notification, 1 = Information, 2 = Confirmation message
if !global.v_msg_type = 0 { //Check if not notification message
    global.v_msg_btn_1 = argument2; //Set message button 1 function
    global.v_msg_btn_2 = argument3; //Set message button 2 function
    global.v_msg_btn_1txt = string(argument4); //Set message button 1 text
    global.v_msg_btn_2txt = string(argument5); //Set message button 2 text
}
global.v_msg_important = argument6; //Set message important
if instance_exists(objPop_mes) { //Check if objPop_mes is not exists
    objPop_mes.v_enabled = false;
    instance_create(global.dvc_width/2,global.dvc_height/2,objPop_mes); //Display message
}
else {
    instance_create(global.dvc_width/2,global.dvc_height/2,objPop_mes); //Display message
}