
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
target_button_codes = 11;

default_text_color = 0, 0, 0;    # use black as default
default_font_size = 30;
default_background_color = 211, 211, 211; 

stimulus_properties = counter_balance_id, string, 
							stimuli_file, string, 
							wav_file_duration, string,
							practice_main, string,
							deviant_condition, string, 
							regularity_condition, string,
							interval_condition, string,
							is_deviant, string,
							blockIndex, string,
							my_port_code, number;
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
	sound { wavefile { filename = "/stimuli/2intervals/neutral2_first_da_orginal_changeduration_Stretch_0.473.wav"; }; };
	sound { wavefile { filename = "/stimuli/2intervals/neutral2_first_da_orginal_changeduration_Stretch_0.559.wav"; }; };
} soundfiles_2intervals;

array { 
	sound { wavefile { filename = "/stimuli/2intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.473.wav"; }; };
	sound { wavefile { filename = "/stimuli/2intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.559.wav"; }; };
} soundfiles_2intervals_rotated;

array { 
	sound { wavefile { filename = "/stimuli/4intervals/neutral2_first_da_orginal_changeduration_Stretch_0.394711.wav"; }; };
	sound { wavefile { filename = "/stimuli/4intervals/neutral2_first_da_orginal_changeduration_Stretch_0.4664766364.wav"; }; };
	sound { wavefile { filename = "/stimuli/4intervals/neutral2_first_da_orginal_changeduration_Stretch_0.5512905702.wav"; }; };
	sound { wavefile { filename = "/stimuli/4intervals/neutral2_first_da_orginal_changeduration_Stretch_0.6515252194.wav"; }; };
} soundfiles_4intervals;

array { 
	sound { wavefile { filename = "/stimuli/4intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.394711.wav"; }; };
	sound { wavefile { filename = "/stimuli/4intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.4664766364.wav"; }; };
	sound { wavefile { filename = "/stimuli/4intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.5512905702.wav"; }; };
	sound { wavefile { filename = "/stimuli/4intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.6515252194.wav"; }; };
} soundfiles_4intervals_rotated;

array { 
	sound { wavefile { filename = "/stimuli/16intervals/neutral2_first_da_orginal_changeduration_Stretch_0.111346.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/neutral2_first_da_orginal_changeduration_Stretch_0.1315907273.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/neutral2_first_da_orginal_changeduration_Stretch_0.155516314.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/neutral2_first_da_orginal_changeduration_Stretch_0.1837920075.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/neutral2_first_da_orginal_changeduration_Stretch_0.2172087362.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/neutral2_first_da_orginal_changeduration_Stretch_0.2567012336.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/neutral2_first_da_orginal_changeduration_Stretch_0.3033741852.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/neutral2_first_da_orginal_changeduration_Stretch_0.358533128.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/neutral2_first_da_orginal_changeduration_Stretch_0.4237209694.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/neutral2_first_da_orginal_changeduration_Stretch_0.5007611457.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/neutral2_first_da_orginal_changeduration_Stretch_0.5918086267.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/neutral2_first_da_orginal_changeduration_Stretch_0.6994101952.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/neutral2_first_da_orginal_changeduration_Stretch_0.8265756852.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/neutral2_first_da_orginal_changeduration_Stretch_0.9768621735.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/neutral2_first_da_orginal_changeduration_Stretch_1.154473478.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/neutral2_first_da_orginal_changeduration_Stretch_1.364377746.wav"; }; };
} soundfiles_16intervals;

array { 
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.111346.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.1315907273.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.155516314.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.1837920075.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.2172087362.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.2567012336.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.3033741852.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.358533128.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.4237209694.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.5007611457.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.5918086267.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.6994101952.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.8265756852.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_0.9768621735.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_1.154473478.wav"; }; };
	sound { wavefile { filename = "/stimuli/16intervals/rotated_2000x_neutral2_first_da_orginal_changeduration_Stretch_1.364377746.wav"; }; };
} soundfiles_16intervals_rotated;



# Sound trial
trial {
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
		port_code = 555555;
	}instruct_event;
} instruct_trial;
	
	
#------------------------- PCL -------------------------------------
begin_pcl;

include "parametric_exp_settings.pcl";
include "parametric_exp_counterbalancetable.pcl";
include "parametric_exp_sub_routines.pcl";
include "parametric_exp.pcl";

