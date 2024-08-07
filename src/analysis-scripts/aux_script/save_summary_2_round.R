sink(paste0("../../outputs/summary_GAMM_exitus_inhospital",params$state,".txt"))
print(summary(model_exitus_hosp_bl))
print(paste0('For component hospital_st, variance is: ',round(var_re_exitus_inhospital$variance,5), 
             ' with lower_ci95=',round(var_re_exitus_inhospital$variance_low,5),' and upper_ci95=',round(var_re_exitus_inhospital$variance_upp,5)))
if(sum(is.na(icc_exitus_inhospital))== 0){
  print(paste0('ICC ajusted: ', 
               round(icc_exitus_inhospital,5),' with lower_ci95=',round(icc_lower_exitus_inhospital,5),
               ' and upper_ci95=',round(icc_upper_exitus_inhospital,5)))  
}else{
  print(paste0('ICC ajusted: ', 'It has not been possible to calculate'))
}
print(paste0('Median odds ratio (MOR): ', MOR_exitus_inhospital))

print(paste0('MOR with bootsrapping: ',round(MOR_w_CI_exitus_inhospital[2],5),
               ' with lower_ci95=',round(MOR_w_CI_exitus_inhospital[1],5),' and upper_ci95=',round(MOR_w_CI_exitus_inhospital[3],5)))
  

print(paste0('Summary for country_cd: ',descriptive_values$country_cd))
sink(file = NULL)


sink(paste0("../../outputs/summary_GAMM_exitus_7days",params$state,".txt"))
print(summary(model_exitus_7days_bl))
print(paste0('For component hospital_st, variance is: ',round(var_re_exitus_7d$variance,5), 
             ' with lower_ci95=',round(var_re_exitus_7d$variance_low,5),' and upper_ci95=',round(var_re_exitus_7d$variance_upp,5)))
if(sum(is.na(icc_exitus_7d))== 0){
  print(paste0('ICC ajusted: ', 
               round(icc_exitus_7d,5),' with lower_ci95=',round(icc_lower_exitus_7d,5),' and upper_ci95=',round(icc_upper_exitus_7d,5)))  
}else{
  print(paste0('ICC ajusted: ', 'It has not been possible to calculate'))
}
print(paste0('Median odds ratio (MOR): ', MOR_exitus_7d))

print(paste0('MOR with bootsrapping: ',round(MOR_w_CI_exitus_7d[2],5),
               ' with lower_ci95=',round(MOR_w_CI_exitus_7d[1],5),' and upper_ci95=',round(MOR_w_CI_exitus_7d[3],5)))
  

print(paste0('Summary for country_cd: ',descriptive_values$country_cd))
sink(file = NULL)

sink(paste0("../../outputs/summary_GAMM_exitus_30days",params$state,".txt"))
print(summary(model_exitus_30days_bl))
print(paste0('For component hospital_st, variance is: ',round(var_re_exitus_30d$variance,5), 
             ' with lower_ci95=',round(var_re_exitus_30d$variance_low,5),' and upper_ci95=',round(var_re_exitus_30d$variance_upp,5)))
if(sum(is.na(icc_exitus_30d))== 0){
  print(paste0('ICC ajusted: ', 
               round(icc_exitus_30d,5),' with lower_ci95=',round(icc_lower_exitus_30d,5),' and upper_ci95=',round(icc_upper_exitus_30d,5)))   
}else{
  print(paste0('ICC ajusted: ', 'It has not been possible to calculate'))
}
print(paste0('Median odds ratio (MOR): ', MOR_exitus_30d))


print(paste0('MOR with bootsrapping: ',round(MOR_w_CI_exitus_30d[2],5),
               ' with lower_ci95=',round(MOR_w_CI_exitus_30d[1],5),' and upper_ci95=',round(MOR_w_CI_exitus_30d[3],5)))
  

print(paste0('Summary for country_cd: ',descriptive_values$country_cd))
sink(file = NULL)



sink(paste0("../../outputs/summary_GAMM_exitus_180days",params$state,".txt"))
print(summary(model_exitus_180days_bl))
print(paste0('For component hospital_st, variance is: ',round(var_re_exitus_180d$variance,5), 
             ' with lower_ci95=',round(var_re_exitus_180d$variance_low,5),' and upper_ci95=',round(var_re_exitus_180d$variance_upp,5)))
if(sum(is.na(icc_exitus_180d))== 0){
  print(paste0('ICC ajusted: ', 
               round(icc_exitus_180d,5),' with lower_ci95=',round(icc_lower_exitus_180d,5),' and upper_ci95=',round(icc_upper_exitus_180d,5)))   
}else{
  print(paste0('ICC ajusted: ', 'It has not been possible to calculate'))
}
print(paste0('Median odds ratio (MOR): ', MOR_exitus_180d))



print(paste0('MOR with bootsrapping: ',round(MOR_w_CI_exitus_180d[2],5),
             ' with lower_ci95=',round(MOR_w_CI_exitus_180d[1],5),' and upper_ci95=',round(MOR_w_CI_exitus_180d[3],5)))


print(paste0('Summary for country_cd: ',descriptive_values$country_cd))
sink(file = NULL)


sink(paste0("../../outputs/summary_GAMM_unplanned_7days",params$state,".txt"))
print(summary(model_unplanned_7days_bl))
print(paste0('For component hospital_st, variance is: ',round(var_re_unplanned_7d$variance,5), 
             ' with lower_ci95=',round(var_re_unplanned_7d$variance_low,5),' and upper_ci95=',round(var_re_unplanned_7d$variance_upp,5)))
if(sum(is.na(icc_unplanned_7d))== 0){
  
print(paste0('ICC ajusted: ', 
             round(icc_unplanned_7d,5),' with lower_ci95=',round(icc_lower_unplanned_7d,5),' and upper_ci95=',round(icc_upper_unplanned_7d,5)))    
  
}else{
  print(paste0('ICC ajusted: ', 'It has not been possible to calculate'))
}
print(paste0('Median odds ratio (MOR): ', MOR_unplanned_7d))


print(paste0('MOR with bootsrapping: ',round(MOR_w_CI_unplanned_7d[2],5),
               ' with lower_ci95=',round(MOR_w_CI_unplanned_7d[1],5),' and upper_ci95=',round(MOR_w_CI_unplanned_7d[3],5)))
  

print(paste0('Summary for country_cd: ',descriptive_values$country_cd))
sink(file = NULL)



sink(paste0("../../outputs/summary_GAMM_unplanned_30days",params$state,".txt"))
print(summary(model_unplanned_30days_bl))
print(paste0('For component hospital_st, variance is: ',round(var_re_unplanned_30d$variance,5), 
             ' with lower_ci95=',round(var_re_unplanned_30d$variance_low,5),' and upper_ci95=',round(var_re_unplanned_30d$variance_upp,5)))
if(sum(is.na(icc_unplanned_30d))== 0){
print(paste0('ICC ajusted: ', 
             round(icc_unplanned_30d,5),' with lower_ci95=',round(icc_lower_unplanned_30d,5),' and upper_ci95=',round(icc_upper_unplanned_30d,5)))    
  
}else{
  print(paste0('ICC ajusted: ', 'It has not been possible to calculate'))
}
print(paste0('Median odds ratio (MOR): ', MOR_unplanned_30d))

print(paste0('MOR with bootsrapping: ',round(MOR_w_CI_unplanned_30d[2],5),
               ' with lower_ci95=',round(MOR_w_CI_unplanned_30d[1],5),' and upper_ci95=',round(MOR_w_CI_unplanned_30d[3],5)))
  

print(paste0('Summary for country_cd: ',descriptive_values$country_cd))
sink(file = NULL)


