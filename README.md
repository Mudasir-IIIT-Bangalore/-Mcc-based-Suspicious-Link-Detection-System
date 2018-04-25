# Mcc-based-Suspicious-Link-Detection
Dataset and source code used in research paper entitled "Mutual Clustering Coefficient-based Suspicious-link Detection Approach for Online Social Networks  "


# Dataset file: 
Data set containing similarity between friend pair based on features viz "  f2 -> work(w), f3-> education(e), f4-> home_town(ht) and f5-> current_city(cc) " along with label [Suspicious | Normal]. 
f1 -> holds the value for Mutual_clustering_Coefficient(Mcc).



# Link_list(edges)file:
Contains the information about the connected uesrs pairs in the collected data. This file has been used to extract the information of only the connected users (friends) and their mutual connections. 

# mutual_clustering_coefficient.R
Holds complete code to calculate Mututal_clusterin_coefficient (Mcc) of two connected users. The code has been implimented in R language using the RStudion Version 1.1.383 – © 2009-2017 RStudio, Inc. with system (R) configuratiuon as 
platform       x86_64-w64-mingw32          
arch           x86_64                      
os             mingw32                     
system         x86_64, mingw32             
status                                     
major          3                           
minor          3.1                         
year           2016                        
month          06                          
day            21                          
svn rev        70800                       
language       R                           
version.string R version 3.3.1 (2016-06-21)


