
#-- scenario file --#

response_matching = simple_matching;
default_clear_active_stimuli = false;
response_logging = log_all; 

### Uncomment these 3 lines after port is set
#write_codes = true;  # this will allow user defined code ported to the output port
#pulse_width = 6; #length of EEG trigger in miliseconds, may need to adjust depending on EEG sampling rate
#response_port_output = true; # this allow porting the subject response

active_buttons = 1; # only one button (e.g. spacebar) is needed
button_codes = 1;
target_button_codes = 2; # the code of a hit

default_text_color = 0, 0, 0;    # use black as default
default_font_size = 30;
default_background_color = 211, 211, 211; 

stimulus_properties = counter_balance_id, string, 
							stimuli_file, string, 
							wav_file_duration, string,
							wav_file_name, string,
							practice_main, string,
							deviant_condition, string, 
							regularity_condition, string,
							interval_condition, string,
							is_deviant, string,
							blockIndex, string,
							my_port_code, number,
							int2_variation, string,
							int4_variation, string;
event_code_delimiter = ";";


begin;  

#-------------- User Setting --------------------


#-------------- End of User Setting --------------

# set the fixation cross as default picture
picture {
	text { caption = "+"; description = "Fixation Cross"; font_size = 72; } fixation_text;
	x = 0; y = 0;
} default;

# Array of sound files
array { 
	sound { wavefile { filename = "/stimuli/1intervals/neutral2_first_da_orginal_changeduration_Stretch_0.516.wav"; }; };
} soundfiles_1intervals;

array { 
	sound { wavefile { filename = "/stimuli/1intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.516.wav"; }; };
} soundfiles_1intervals_rotated;	


array { 
	sound { wavefile { filename = "/stimuli/16intervals/normal_duration_1.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/normal_duration_2.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/normal_duration_3.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/normal_duration_4.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/normal_duration_5.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/normal_duration_6.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/normal_duration_7.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/normal_duration_8.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/normal_duration_9.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/normal_duration_10.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/normal_duration_11.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/normal_duration_12.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/normal_duration_13.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/normal_duration_14.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/normal_duration_15.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/normal_duration_16.wav"; }; };
} soundfiles_16intervals;

array { 
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_normal_duration_1.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_normal_duration_2.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_normal_duration_3.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_normal_duration_4.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_normal_duration_5.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_normal_duration_6.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_normal_duration_7.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_normal_duration_8.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_normal_duration_9.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_normal_duration_10.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_normal_duration_11.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_normal_duration_12.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_normal_duration_13.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_normal_duration_14.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_normal_duration_15.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_normal_duration_16.wav"; }; };
} soundfiles_16intervals_rotated;





# Sound trial
trial {
	trial_duration = stimuli_length;
	stimulus_event {
		picture default;
	} picture_event;
   stimulus_event {
		nothing {};
	} sound_event;
} sound_trial;

# Extra Silence trial
trial {
	picture default;
} extra_silence;

# Instruction trial
trial {
   trial_type = first_response;
   trial_duration = forever;
   stimulus_event{
		picture {
			text { caption = " "; description = "Instruction"; } instruct;
			x = 0; y = 0; 
		};
		code = "Instruction_Page";
		port_code = 250;
	}instruct_event;
} instruct_trial;
	
	
#------------------------- PCL -------------------------------------
begin_pcl;

include "parametric_exp_settings.pcl";
include "parametric_exp_counterbalancetable.pcl";
include "parametric_exp_sub_routines.pcl";
include "parametric_exp.pcl";

