employees <- list()
payslip_count <- 0
for (i in 1:400) {
  name <- paste("employee", i, sep = "")
  salary <- sample(7500:30001, 1)
  gender <- sample(c("Male", "Female"), 1)
  employee_level <- ""
  
  if (salary > 10000 & salary < 20000) {
    employee_level <- "A1"
  } else if (salary > 7500 & salary < 30001 & gender == "Female") {
    employee_level <- "A5-F"
  } else {
    employee_level <- "N/A"
  }
  employees[[i]] <- list(name = name, salary = salary, gender = gender, employee_level = employee_level)
}
payslip_count <- 0
for (employee in employees) {
  cat("Name: ", employee$name, "\n")
  cat("Salary: ", employee$salary, "\n")
  cat("Gender: ", employee$gender, "\n")
  cat("Employee_Level: ", employee$employee_level, "\n\n")
  
  payslip_count <- payslip_count + 1
  cat("Total payslips generated: ", payslip_count, "\n\n")
}
