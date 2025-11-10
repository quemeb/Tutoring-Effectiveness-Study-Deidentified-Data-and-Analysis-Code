
* Q1 
import delimited [insert path to files]
nbreg q1_completions tutored multi_interest prior_before_q1, nolog irr exposure(exposure_days_q1)
zinb q1_completions tutored multi_interest prior_before_q1, nolog irr inflate(exposure_days_q1) 

histogram q1_completions if tutored==0, percent ///
    width(1) color(gs12%70) ///
    addplot(histogram q1_completions if tutored==1, percent width(1) color(navy%50)) ///
    legend(label(1 "Not tutored") label(2 "Tutored") ring(0) pos(11)) ///
    title("Q1 Completions by Tutoring Status") ///
    xtitle("Number of competencies passed") ytitle("Percent of students")

summarize q1_completions
summarize q1_completions if tutored==1
summarize q1_completions if tutored==0
tab prior_before_q1
tab multi_interest
tab prior_before_q1 tutored, cell
tab multi_interest tutored, cell
	
	

*Q2
import delimited [insert path to files]
nbreg q1_completions tutored multi_interest prior_before_q1, nolog irr exposure(exposure_days_q1)
zinb q1_completions tutored multi_interest prior_before_q1, nolog irr inflate(exposure_days_q1) 

histogram q1_completions if tutored==0, percent ///
    width(1) color(gs12%70) ///
    addplot(histogram q1_completions if tutored==1, percent width(1) color(navy%50)) ///
    legend(label(1 "Not tutored") label(2 "Tutored") ring(0) pos(11)) ///
    title("Q2 Completions by Tutoring Status") ///
    xtitle("Number of competencies passed") ytitle("Percent of students")

summarize q1_completions
summarize q1_completions if tutored==1
summarize q1_completions if tutored==0
tab prior_before_q1
tab multi_interest
tab prior_before_q1 tutored, cell
tab multi_interest tutored, cell
	
	
*Q1 + Q2
import delimited [insert path to files]
nbreg q1_completions tutored multi_interest prior_before_q1, nolog irr exposure(exposure_days_q1)
zinb q1_completions tutored multi_interest prior_before_q1, nolog irr inflate(exposure_days_q1) 

histogram q1_completions if tutored==0, percent ///
    width(1) color(gs12%70) ///
    addplot(histogram q1_completions if tutored==1, percent width(1) color(navy%50)) ///
    legend(label(1 "Not tutored") label(2 "Tutored") ring(0) pos(11)) ///
    title("Q1+Q2 Completions by Tutoring Status") ///
    xtitle("Number of competencies passed") ytitle("Percent of students")

summarize q1_completions
summarize q1_completions if tutored==1
summarize q1_completions if tutored==0
tab prior_before_q1
tab multi_interest
tab prior_before_q1 tutored, cell
tab multi_interest tutored, cell