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


! 3) Hard process : ZZ at 365 GeV 
Beams:eCM = 365  ! CM energy of collision
WeakDoubleBoson:ffbar2gmZgmZ = on
WeakDoubleBoson:ffbar2WW = off
WeakDoubleBoson:ffbar2ZW = off

! Control Z decay modes
! => Z → (u,d,s,c,b) or (v_e,v_mu,v_tau) will get qq+qq, qq+vv, vv+vv
! Z->qq = 0.7, Z->vv = 0.2
! 35% vvqq, 5% vvvv, 60% qqqq
23:onMode = off
23:onIfAny = 1 2 3 4 5 12 14 16


! 4) Settings for the event generation process in the Pythia8 library.
PartonLevel:ISR = on               ! no initial-state radiation
PartonLevel:FSR = on               ! no final-state radiation

