OVERVIEW

This repository contains the code and data used to investigate the effect of Reward-mediated learning (RL) and Statistical learning (SL) in a visual search task.
Participants took part in two experimental sessions:
 - In one session, RL was induced.
 - In the other session, SL was induced (order counterbalanced across participants).
In each session, participants sat in front of a computer and were asked to identify the position (up/down) of a small dot within the target stimulus (a more vertical bar), presented among distractor stimuli (more horizontal bars).


DATA AVAILABLE

For each experimental session, I uploaded the behavioural data of 12/30 participants. The whole dataset will be make available after publication.


MODELLING APROACH

One of the main analyses is based on the Rescorla-Wagner (RW) model, applied to participants’ reaction times (RTs), tranformed in response speed (RS).
The model is used to estimate three key parameters:
- Learning rate
- Slope
- Intercept


REPOSITORY STRUCTURE

This repository includes four main files, divided into two steps:
- Step 1 – Model Validation
  Files: step1_RewSL_RL..., step1_RewSL_SL... RW model applied to datasets I generated that should resemble RL and SL sessions.
  Purpose: Parameter recovery, i.e., testing whether the model can successfully predict the parameters.

- Step 2 – Model Application to Real Data
  Files: step2_RewSL_RL..., step2_RewSL_SL...RW model applied to real experimental data.
  Purpose: Estimate the three parameters (learning rate, slope, intercept) and correlate simulated RS with observed RS.



CONTACT

If you have questions or feedback, feel free to reach out at carola.dolci@ugent.be
