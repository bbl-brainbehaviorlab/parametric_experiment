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



## How to start an experiment?

- Click `.exp` file to open the experiment in Presentation 
- In `Main` tab, click `Run`
- Enter the subject ID according to the counterbalance sheet (only integer from 1 to 32 is allowed), and then click `OK`
- Click `Run Scenario`



## Port Code - Coding Scheme

Since we are using LPT port, we can only port a code in the range of 0 to 255.

### First 2 Digits:

| IntervalCond | StimId | Code (First Two) |
| ------------ | ------ | ---------------- |
| 1            | 1      | 1                |
| 2            | 1      | 2                |
| 2            | 2      | 3                |
| 4            | 1      | 4                |
| 4            | 2      | 5                |
| 4            | 3      | 6                |
| 4            | 4      | 7                |
| 16           | 1      | 8                |
| 16           | 2      | 9                |
| 16           | 3      | 10               |
| 16           | 4      | 11               |
| 16           | 5      | 12               |
| 16           | 6      | 13               |
| 16           | 7      | 14               |
| 16           | 8      | 15               |
| 16           | 9      | 16               |
| 16           | 10     | 17               |
| 16           | 11     | 18               |
| 16           | 12     | 19               |
| 16           | 13     | 20               |
| 16           | 14     | 21               |
| 16           | 15     | 22               |
| 16           | 16     | 23               |

### Last Digit:

| RegularCond | DeviantCond | IsDeviant | Code(Last Digit) |
| ----------- | ----------- | --------- | ---------------- |
| 1           | 1           | 0         | 1                |
| 1           | 1           | 1         | 2                |
| 1           | 2           | 0         | 3                |
| 1           | 2           | 1         | 4                |
| 2           | 1           | 0         | 5                |
| 2           | 1           | 1         | 6                |
| 2           | 2           | 0         | 7                |
| 2           | 2           | 1         | 8                |



### Practice Trial Code: 249

### Instruction Page Code: 250

### Button Response Code: 1

### Button Hit Code: 2 (Hit within the response window)

### 