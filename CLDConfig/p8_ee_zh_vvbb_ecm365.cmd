Random:setSeed = on
Main:numberOfEvents = 1000         ! number of events to generate
Main:timesAllowErrors = 5          ! how many aborts before run stops

! 2) Settings related to output in init(), next() and stat().
Init:showChangedSettings = on      ! list changed settings
Init:showChangedParticleData = off ! list changed particle data
Next:numberCount = 100             ! print message every n events
Next:numberShowInfo = 1            ! print event information n times
Next:numberShowProcess = 1         ! print process record n times
Next:numberShowEvent = 0           ! print event record n times

Beams:idA = 11                   ! first beam, e+ = 11
Beams:idB = -11                   ! second beam, e- = -11

Beams:allowMomentumSpread  = off

! Vertex smearing :
Beams:allowVertexSpread = on
Beams:sigmaVertexX = 27.3e-3   
Beams:sigmaVertexY = 48.8E-6    
Beams:sigmaVertexZ = 1.33       
Beams:sigmaTime = 1.94    !  6.46 ps


! 3) Hard process : ZH at 365 GeV (not the Higgs factory of 240 GeV)
Beams:eCM = 365  ! CM energy of collision
HiggsSM:ffbar2HZ = on
HiggsSM:gg2H    = off
HiggsSM:ffbar2H = off

! Control Z decay modes
23:onMode = off
23:onIfAny = 12 14 16   ! Z->vv

! Control H decay modes
25:onMode = off
25:onIfMatch = 5 -5     ! H->bb
25:onIfMatch = 4 -4     ! H->cc

! 4) Settings for the event generation process in the Pythia8 library.
PartonLevel:ISR = on               ! no initial-state radiation
PartonLevel:FSR = on               ! no final-state radiation

