### Data used for Solow Decomposition  
data1 <- read.csv2('https://raw.githubusercontent.com/thanhqtran/research/main/pwt10.csv', header=TRUE, sep = ',')
data1belgium <- subset(data1, country =='Belgium')
### Data used for APG Decomposition
dataNA <- readRDS(gzcon(url('http://euklems.eu/bulk/Statistical_National-Accounts.rds')))
dataGA <- readRDS(gzcon(url('http://euklems.eu/bulk/Statistical_Growth-Accounts.rds')))
belgiumNA <- subset(dataNA, country=='BE')
belgiumGA <- subset(dataGA, country=='BE')
## Code
url <- c("https://github.com/thanhqtran/research/blob/main/2106_APG_Decomposition/apg_code_enc.txt?raw=true")
