Product.destroy_all
data = [{ section: "Materials", category1: "Proprietary metals and other alloys", category2: "Bar & rod, exotic alloys", category3: "" },
        { section: "Materials", category1: "Proprietary metals and other alloys", category2: "Bonderized", category3: "" },
        { section: "Materials", category1: "Proprietary metals and other alloys", category2: "Cobalt", category3: "" },
        { section: "Materials", category1: "Proprietary metals and other alloys", category2: "Galvalume", category3: "" },
        { section: "Materials", category1: "Proprietary metals and other alloys", category2: "Hastelloy", category3: "" },
        { section: "Materials", category1: "Proprietary metals and other alloys", category2: "Inconel", category3: "" },
        { section: "Materials", category1: "Proprietary metals and other alloys", category2: "Low-melt alloys", category3: "" },
        { section: "Materials", category1: "Proprietary metals and other alloys", category2: "Plate, alloy steel", category3: "Plate, exotic alloys" },
        { section: "Materials", category1: "Proprietary metals and other alloys", category2: "Sheet & coil, exotic alloys", category3: "" },
        { section: "Materials", category1: "Proprietary metals and other alloys", category2: "Strip, exotic alloys", category3: "" },
        { section: "Materials", category1: "Proprietary metals and other alloys", category2: "Tube & pipe, alloy", category3: "Tube & pipe, chrome/moly" },
        { section: "Materials", category1: "Proprietary metals and other alloys", category2: "Tube & pipe, alloy", category3: "Tube & pipe, exotic alloys" },

        { section: "Materials", category1: "Aluminun", category2: "Bar & rod", category3: "Bar & rod, aluminum alloys" },
        { section: "Materials", category1: "Aluminun", category2: "Bar & rod", category3: "Bar & rod, extruded" },
        { section: "Materials", category1: "Aluminun", category2: "Casting alloys", category3: "" },
        { section: "Materials", category1: "Aluminun", category2: "Coiled sheet", category3: "" },
        { section: "Materials", category1: "Aluminun", category2: "Filters", category3: "" },
        { section: "Materials", category1: "Aluminun", category2: "Ingot", category3: "" },
        { section: "Materials", category1: "Aluminun", category2: "Plate", category3: "Plate, aluminum alloys" },
        { section: "Materials", category1: "Aluminun", category2: "Sheet & coil", category3: "Sheet & coil, aluminum alloys" },
        { section: "Materials", category1: "Aluminun", category2: "Strip", category3: "Strip, aluminum alloys" },
        { section: "Materials", category1: "Aluminun", category2: "Tooling plate", category3: "" },
        { section: "Materials", category1: "Aluminun", category2: "Tube & pipe", category3: "Tube & pipe, aluminum alloys" }
       ]
Product.create(data)

Company.create(name: "Aleris Rolled Products Inc.", address: "25825 Science Park Dr.", city: "Cleveland", state: "OH", phone: "866-266-2586", website: "www.website.com")
Company.create(name: "Chemical Dynamics LLC", address: "25825 Science Park Dr.", city: "Cleveland", state: "OH", phone: "866-266-2586", website: "www.website.com")
Company.create(name: "F & A Macheine Co.", address: "25825 Science Park Dr.", city: "Cleveland", state: "OH", phone: "866-266-2586", website: "www.website.com")
Company.create(name: "Colson Caster Corp", address: "25825 Science Park Dr.", city: "Cleveland", state: "OH", phone: "866-266-2586", website: "www.website.com")
Company.create(name: "DANOBAT Band Saw Machines", address: "25825 Science Park Dr.", city: "Cleveland", state: "OH", phone: "866-266-2586", website: "www.website.com")
Company.create(name: "Despatch Industries", address: "25825 Science Park Dr.", city: "Cleveland", state: "OH", phone: "866-266-2586", website: "www.website.com")
Company.create(name: "Diamond Industrial, Inc", address: "25825 Science Park Dr.", city: "Cleveland", state: "OH", phone: "866-266-2586", website: "www.website.com")

i = 1
while i < 13 do
  m = Product.find(i)
  m.companies << Company.find(1)
  m.companies << Company.find(3)
  m.companies << Company.find(5)
  m.companies << Company.find(7)
  i = i + 1
end

while i < 24 do
  m = Product.find(i)
  m.companies << Company.find(2)
  m.companies << Company.find(4)
  m.companies << Company.find(6)
  i = i + 1
end

puts "Re-seeded DB"
