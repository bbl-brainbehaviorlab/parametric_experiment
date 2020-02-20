# A parametric experiment of regular auditory sound

This is the script repository for the parametric experiment written for Presentation® (version 17.2).



## Installation

- Download the whole folders

- Click `.exp` file to open the experiment in Presentation 

- Only 1 button is required in this experiment. In `Settings`-> `Response` tab, add a button you want. Give that button an index of "1".

- In `Settings` -> `Port`, select the port device for the EEG experiment

  - After port is selected, please un-comment the following lines in the `parametric_exp.sce` file (remove the "#" sign to un-comment)

  - ```
    write_codes = true; 
    pulse_width = 6; 
    response_port_output = true;
    ```

    