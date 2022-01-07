const fs = require('fs');

fs.writeFile("employees.json","{name: Employee 1 Name, salary: 2000}", "utf8", (err, data) => {
    if(err) console.log(err)
    console.log("Employees dosyası oluşturuldu")
})
fs.readFile("employees.json", "utf8", (err, data) => {
    if(err) console.log(err)
    console.log(data)
    console.log("dosya okundu")
})
fs.writeFile("employees.json","{name: Employee 2 Name, salary: 3000}", "utf8", (err) => {
    if(err) console.log(err)
    console.log("dosya içerisindeki veri güncellendi")
})
fs.unlink('employees.json', (err) => {
    if (err) console.log(err)
    console.log("Dosya silindi")
})