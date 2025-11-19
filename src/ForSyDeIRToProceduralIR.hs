module ForSyDeIRToProceduralIR where

import ForSyDeIR
import ProceduralIR
import SDF_schedule

-- TODO: debug version of returning string instead of real prog
translateIRSystem :: IRSystem -> String
translateIRSystem irSystem@(IRSystem (globalInputs, globalOutputs) constructors signals functions) =
  let (schedule, buffer) = computeScheduleAndBuffers irSystem
   in -- in Prog []  -- TODO: temporal return empty program

      "Procedural IR Program with schedule: \n" ++ show schedule ++ "\n and buffers: \n" ++ show buffer
