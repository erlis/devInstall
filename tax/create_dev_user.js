db.createUser({
    user: "dev",
    pwd: "usg",
    roles: [ { role: "dbAdmin", db: "TaxHub" }, { role: "read", db: "TaxHub" }, { role: "readWrite", db: "TaxHub" }]
  })
