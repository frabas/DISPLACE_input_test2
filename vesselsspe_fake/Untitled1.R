

# duplicate files from a vessel

namefiles <-          c( "_gshape_cpue_per_stk_on_nodes_quarter", "_freq_possible_metiers_quarter", "_gscale_cpue_per_stk_on_nodes_quarter", "_gshape_cpue_per_stk_on_nodes_quarter",
                             "_possible_metiers_quarter")


for (namefile in namefiles) {

  for (Q in 1:4){
    dd <- read.table(paste("C:\\Users\\fbas\\Documents\\GitHub\\DISPLACE_input_test2\\vesselsspe_fake\\DNK007",namefile, Q, ".dat", sep=""), header=TRUE)

     for (vesselid in 8:9) write.table(dd, file=paste("C:\\Users\\fbas\\Documents\\GitHub\\DISPLACE_input_test2\\vesselsspe_fake\\DNK00",vesselid,namefile,Q,".dat", sep=""),col.names=TRUE, row.names=FALSE, sep=" ", quote=FALSE)
     for (vesselid in 10:30) write.table(dd, file=paste("C:\\Users\\fbas\\Documents\\GitHub\\DISPLACE_input_test2\\vesselsspe_fake\\DNK0",vesselid,namefile,Q,".dat", sep=""),col.names=TRUE, row.names=FALSE, sep=" ", quote=FALSE)
     }
   }

