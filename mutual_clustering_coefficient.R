frnd_mat=read.csv(file.choose())
anyNA(frnd_mat)
frnd_mat=na.omit(frnd_mat)

length(which(frnd_mat==1))

for(i in 1:nrow(frnd_mat)){
  for(j in i:nrow(frnd_mat)){
    frnd_mat[j,i]=frnd_mat[i,j]
  }
  }

length(which(frnd_mat==1))

fakes=c(21,22,23,24,25,72,73,74,75,76,103,104,105,106)

#############################################################################################
mcc=function(frnd_mat)
{
lower_frnd_mat=frnd_mat;
lower_frnd_mat[lower.tri(frnd_mat)]=0 
lower_frnd_mat; 
links=which(lower_frnd_mat>0, arr.in = TRUE);
print(links)
#write.csv(links,file='C:/Users/ADMIN/Desktop/Nancy ver/links.csv');
data="";
print(nrow(links))
for(i in 1:(nrow(links))){
  fl1=frnd_mat[links[i,1],];
  fl2=frnd_mat[links[i,2],];

  l="undefined"
  if(any(fakes==links[i,1])||any(fakes==links[i,2])){
    l="Suspicious"}else {
      l="Normal"}
  data=paste(data,links[i,1],",",links[i,2],",",l);
  mf=fl1&fl2;
  mf[fl1 & fl2]=1
  mfi = which(mf>0,arr.in=TRUE);
  muv=length(mfi);
  luv=0;
  'print(fl1)
  print(fl2)
  print(mf)
  print(mfi)
  print(i)'
  print(links[i,1])
  print(links[i,2])
  

if(length(mfi)>1){
for(i in 1:(length(mfi)-1)){
          for(j in (i+1):(length(mfi)))
          {' print(mfi[i])
            print(mfi[j])
            print(frnd_mat[mfi[i],mfi[j]])'
             if(frnd_mat[mfi[i],mfi[j]]==1)
              luv=luv+1;
          }
             }
}
 
 # print(muv);
  #print(luv);
  mlcc=(2*luv)/(muv*(muv-1));
 
  #data=cbind(mlcc); 
 data=paste(data,",",mlcc,"\n");
 write.csv(data,file='C:/Users/ADMIN/Desktop/R E S E A R C H  1 7/Clustering coefficient paper Data/New Data/new_links(107p).csv');
  print(mlcc);
  
  
  print("........................................................................................");
  
}
 
}

mcc(frnd_mat)
                             