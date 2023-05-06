%dw 2.0
output application/csv header=false
---
payload.adf.prospect.customer.contact.*name map (
    key: $.@part ++"Name: " ++ $
)
/* Given input is xml format here i want to map the full name, first name, and last name out separately. and my output should be like 
 fullName: W Woods 
firstName: W 
lastName: Woods 
so now i used map to transform data contained in an array. after that i concatenates the elements of input . $ symbol can be used for accessing the value of a key-value pair in a map so, based on my requirement i used the map and contatination and output in CSV format.
*/