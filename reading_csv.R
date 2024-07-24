start_time<-Sys.time()
start_time
df<- read.csv("/Users/apple/Downloads/journey_report_db1.csv")
# head(df)
end_time<-Sys.time()
end_time
extracted_df <- df[df$biller_id == 'TATASKY' & df$channel_id == 'WEB',]
# extracted_df

only_df <- df[df$biller_id == 'TATASKY',]
# only_df

