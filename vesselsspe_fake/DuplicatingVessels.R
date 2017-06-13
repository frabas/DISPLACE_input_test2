

# duplicate files from a vessel

namefiles <-          c( "_gshape_cpue_per_stk_on_nodes_quarter", "_freq_possible_metiers_quarter", "_gscale_cpue_per_stk_on_nodes_quarter",
                             "_possible_metiers_quarter", "_cpue_per_stk_on_nodes_quarter")


for (namefile in namefiles) {

  for (Q in 1:4){
    dd <- read.table(paste("C:\\Users\\fbas\\Documents\\GitHub\\DISPLACE_input_test2\\vesselsspe_fake\\DNK007",namefile, Q, ".dat", sep=""), header=TRUE)

     for (vesselid in 8:9) write.table(dd, file=paste("C:\\Users\\fbas\\Documents\\GitHub\\DISPLACE_input_test2\\vesselsspe_fake\\DNK00",vesselid,namefile,Q,".dat", sep=""),col.names=TRUE, row.names=FALSE, sep=" ", quote=FALSE)
    for (vesselid in 10:30) write.table(dd, file=paste("C:\\Users\\fbas\\Documents\\GitHub\\DISPLACE_input_test2\\vesselsspe_fake\\DNK0",vesselid,namefile,Q,".dat", sep=""),col.names=TRUE, row.names=FALSE, sep=" ", quote=FALSE)
     for (vesselid in 31:99) write.table(dd, file=paste("C:\\Users\\fbas\\Documents\\GitHub\\DISPLACE_input_test2\\vesselsspe_fake\\DNK0",vesselid,namefile,Q,".dat", sep=""),col.names=TRUE, row.names=FALSE, sep=" ", quote=FALSE)
     }
   }




   for (namefile in c("vesselsspe_betas_semester", "vesselsspe_percent_tacs_per_pop_semester")){
  for (S in 1:2){
   dd <- read.table(paste("C:\\Users\\fbas\\Documents\\GitHub\\DISPLACE_input_test2\\vesselsspe_fake\\",namefile,S,".dat", sep=""), header=TRUE)
  #  for (vesselid in 8:9){
  #    obj <- dd[dd[,1]=="DNK007", ]
  #    obj[,1] <- paste("DNK00",vesselid, sep='') 
  #    dd <- rbind.data.frame (dd, obj)
  #    }
    for (vesselid in 10:99){
      obj <- dd[dd[,1]=="DNK007", ]
      obj[,1] <- paste("DNK0",vesselid, sep='') 
      dd <- rbind.data.frame (dd, obj)
      }
    write.table(dd, file=paste("C:\\Users\\fbas\\Documents\\GitHub\\DISPLACE_input_test2\\vesselsspe_fake\\",namefile, S,".dat", sep=""),col.names=TRUE, row.names=FALSE, sep=" ", quote=FALSE)
   }
 }
 
   
   
   for (namefile in c("vesselsspe_fgrounds_quarter", "vesselsspe_freq_fgrounds_quarter", "vesselsspe_harbours_quarter", "vesselsspe_freq_harbours_quarter")){
     for (Q in 1:4){
      dd <- read.table(paste("C:\\Users\\fbas\\Documents\\GitHub\\DISPLACE_input_test2\\vesselsspe_fake\\",namefile,Q,".dat", sep=""), header=TRUE)
     
    #  for (vesselid in 8:9){
    #     obj <- dd[dd[,1]=="DNK007", ]
    #     obj[,1] <- paste("DNK00",vesselid, sep='') 
    #     dd <- rbind.data.frame (dd, obj)
    #     }
      for (vesselid in 31:99){
         obj <- dd[dd[,1]=="DNK007", ]
         obj[,1] <- paste("DNK0",vesselid, sep='') 
         dd <- rbind.data.frame (dd, obj)
         }
      write.table(dd, file=paste("C:\\Users\\fbas\\Documents\\GitHub\\DISPLACE_input_test2\\vesselsspe_fake\\",namefile,Q,".dat", sep=""),col.names=TRUE, row.names=FALSE, sep=" ", quote=FALSE)
  
     }
   } 
   
  
     for (Q in 1:4){
      dd <- read.table(paste("C:\\Users\\fbas\\Documents\\GitHub\\DISPLACE_input_test2\\vesselsspe_fake\\","vesselsspe_features_quarter",Q,".dat", sep=""),  sep="|", header=FALSE)
     # for (vesselid in 8:9){
     #    obj <- dd[dd[,1]=="DNK007", ]
     #    obj[,1] <- paste("DNK00",vesselid, sep='') 
     #    dd <- rbind.data.frame (dd, obj)
     #    }     
      for (vesselid in 31:99){
         obj <- dd[dd[,1]=="DNK007", ]
         obj[,1] <- paste("DNK0",vesselid, sep='') 
         dd <- rbind.data.frame (dd, obj)
         }     
      write.table(dd, file=paste("C:\\Users\\fbas\\Documents\\GitHub\\DISPLACE_input_test2\\vesselsspe_fake\\","vesselsspe_features_quarter",Q,".dat", sep=""), sep="|", col.names=FALSE, row.names=FALSE,  quote=FALSE)
     } 
     
   
   
   
   
   