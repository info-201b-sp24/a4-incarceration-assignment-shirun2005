 Summary 
 

 #Proportion_White_Total    
 white_jail_population <- sum(df$white_jail_pop, na.rm = TRUE)
 proportion_white <- white_jail_population / total_jail_population
 print(paste("Proportion of Imprisonment for White individuals:", proportion_white))
 

  #Proportion_Black_Total
 total_jail_population <- sum(df$total_jail_pop, na.rm = TRUE)
 black_jail_population <- sum(df$black_jail_pop, na.rm = TRUE)
 proportion_black <- black_jail_population / total_jail_population
 print(paste("Proportion of Imprisonment for Black individuals:", proportion_black))
 
 #Highest_County
 max_index <- which.max(df$total_jail_pop)
 Highest_County <- df[max_index, c("county_name", "total_jail_pop")]
 
 #Lowest_County 
 min_index <- which.min(df$total_jail_pop)
 Lowest_County <- df[min_index, c("county_name", "total_jail_pop")]
 Lowest_County
 
 # Total_Black_Jail
 Total_Black_Jail <- sum(df$black_jail_pop, na.rm = TRUE)
 Total_Black_Jail
 
 #Total_White_Jail
 Total_White_Jail <- sum(df$white_jail_pop, na.rm = TRUE)
 Total_White_Jail
 
 
 
 
 
 