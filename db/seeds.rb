# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

member_data = [
  ["Sessions","Jeff","Attorney General"],
  ["Price","Tom","Secretary of Health and Human Services"],
  ["Perry","Rick","Secretary of Energy"],
  ["Zinke","Ryan","Secretary of the Interior"],
  ["Tillerson","Rex","Secretary of State"],
  ["Perdue","Sonny","Secretary of Agriculture"],
  ["Mnuchin","Steve","Secretary of the Treasury"],
  ["Ross","Wilbur","Secretary of Commerce"],
  ["Acosta","Alexander","Secretary of Labor"],
  ["Mattis","James","Secretary of Defense"],
  ["Kelly","John","Secretary of Homeland Security"],
  ["Shulkin","David","Secretary of Veteran Affairs"],
  ["Chao","Elaine","Secretary of Transportation"],
  ["DeVos","Betsy","Secretary of Education"],
  ["Carson","Benjamin","Secretary of Housing and Urban Development"]
]

member_data.each do |mem|
  Member.create(last_name: mem[0], first_name: mem[1], position: mem[2], image: "/assets/members/#{mem[0]}_#{mem[1]}.jpg")
end

card_data = [
  ["Sessions","Jeff","money","Notable Campaign Donors","Mr. Sessions received $10,000 donations from Exxon Mobil in 2014 and 2016 and subsequently wrote a letter to the Department of Justice (which he now heads) requesting that it cease its investigation into whether Exxon Mobil knew and hid information related to its products' effects on climate change.","https://www.documentcloud.org/documents/3222852-Sessions-Letter-to-Lynch.html"],
  ["Price","Tom","money","Notable Campaign Donors","In 2016, Mr. Price received $21,800 from MiMedx Group, a leading distributor of human amniotic tissue. He also received $15,000 from Woodbranch Investments, a real estate and investments company based in Houston, Texas with several luxury property developments in New York City.","https://www.opensecrets.org/politicians/contrib.php?cycle=2016&cid=N00026160&type=I&newmem=N"],
  ["Perry","Rick","money","Notable Campaign Donors","Mr. Perry received over $1.5 million in 2016 from Energy Transfer Partners, an energy conglomerate meshed with Sunoco that holds assets such as natural gas, crude oil, natural gas liquids and refined products pipelines. He also received around $250,000 each from Ryan LLC, a Texas tax services firm and Holt Company, a Texas based industrial company.","https://www.opensecrets.org/pres16/contributors?id=N00033486"],
  ["Zinke","Ryan","money","Notable Campaign Donors","Mr. Zinke received $20,200 from Oasis Petroleum, a Texas based petroleum and natural gas exploration and production company, in 2016. He also received $18,400 from Blessey Marine Services, a company that transports liquid bulk cargo through natural waterways now under Mr. Zinke's jurisdiction.","https://www.opensecrets.org/politicians/contrib.php?cycle=2016&cid=N00035616&type=I&newmem=N"],
  ["Tillerson","Rex","money","Business Interests","Mr. Tillerson was the CEO of petroleum and oil giant ExxonMobil from 2006 to 2017 and received a salary of $10 million along with $5 million in stock dividends and $250,000 in benefits.","https://extapps2.oge.gov/201/Presiden.nsf/PAS+Index/027D1E3E494A5F538525809E00615559/$FILE/Tillerson,%20Rex%20W.%20%20final278.pdf"],
  ["Perdue","Sonny","money","Business Interests","Mr. Perdue heads Perdue Partners LLC,","https://extapps2.oge.gov/201/Presiden.nsf/PAS+Index/5D6D47C0C5AE5048852580E1002C818A/$FILE/Perdue,%20George%20E.%20%20final278.pdf"],
  ["Mnuchin","Steve","money","Business Interests"],
  ["Ross","Wilbur","money","Business Interests"],
  ["Acosta","Alexander","money","Business Interests","Mr. Acosta earned about $550,000 in 2016. He has said that he will forego both his salaries as well as a bonus from U.S. Century Bank.","https://extapps2.oge.gov/201/Presiden.nsf/PAS+Index/F8AA9E695EC799C2852580DE002C8323/$FILE/Acosta,%20Rene%20Alexander%20finalEA.pdf"],
  ["Mattis","James","money","Consulting","Mr. Mattis is a consultant for the CNA Corporation, the Jamestown Foundation, and the U.S. Department of State. For these positions, he receives"],
  ["Kelly","John","money","Consulting"],
  ["Shulkin","David","money","Consulting"],
  ["Chao","Elaine","money","Campaign Donations"],
  ["DeVos","Betsy","money","Campaign Donations"],
  ["Carson","Benjamin","money","Campaign Donations"],
  ["Sessions","Jeff","handshake","Notable Campaign Donors","Mr. Sessions received $10,000 donations from Exxon Mobil in 2014 and 2016 and subsequently wrote a letter to the Department of Justice (which he now heads) requesting that it cease its investigation into whether Exxon Mobil knew and hid information related to its products' effects on climate change.","https://www.documentcloud.org/documents/3222852-Sessions-Letter-to-Lynch.html"],
  ["Price","Tom","handshake","Notable Campaign Donors","In 2016, Mr. Price received $21,800 from MiMedx Group, a leading distributor of human amniotic tissue. He also received $15,000 from Woodbranch Investments, a real estate and investments company based in Houston, Texas with several luxury property developments in New York City.","https://www.opensecrets.org/politicians/contrib.php?cycle=2016&cid=N00026160&type=I&newmem=N"],
  ["Perry","Rick","handshake","Notable Campaign Donors","Mr. Perry received over $1.5 million in 2016 from Energy Transfer Partners, an energy conglomerate meshed with Sunoco that holds assets such as natural gas, crude oil, natural gas liquids and refined products pipelines. He also received around $250,000 each from Ryan LLC, a Texas tax services firm and Holt Company, a Texas based industrial company.","https://www.opensecrets.org/pres16/contributors?id=N00033486"],
  ["Zinke","Ryan","handshake","Notable Campaign Donors","Mr. Zinke received $20,200 from Oasis Petroleum, a Texas based petroleum and natural gas exploration and production company, in 2016. He also received $18,400 from Blessey Marine Services, a company that transports liquid bulk cargo through natural waterways now under Mr. Zinke's jurisdiction.","https://www.opensecrets.org/politicians/contrib.php?cycle=2016&cid=N00035616&type=I&newmem=N"],
  ["Tillerson","Rex","handshake","Business Interests","Mr. Tillerson was the CEO of petroleum and oil giant ExxonMobil from 2006 to 2017 and received a salary of $10 million along with $5 million in stock dividends and $250,000 in benefits.","https://extapps2.oge.gov/201/Presiden.nsf/PAS+Index/027D1E3E494A5F538525809E00615559/$FILE/Tillerson,%20Rex%20W.%20%20final278.pdf"],
  ["Perdue","Sonny","handshake","Business Interests","Mr. Perdue heads Perdue Partners LLC,","https://extapps2.oge.gov/201/Presiden.nsf/PAS+Index/5D6D47C0C5AE5048852580E1002C818A/$FILE/Perdue,%20George%20E.%20%20final278.pdf"],
  ["Mnuchin","Steve","handshake","Business Interests"],
  ["Ross","Wilbur","handshake","Business Interests"],
  ["Acosta","Alexander","handshake","Business Interests","Mr. Acosta earned about $550,000 in 2016. He has said that he will forego both his salaries as well as a bonus from U.S. Century Bank.","https://extapps2.oge.gov/201/Presiden.nsf/PAS+Index/F8AA9E695EC799C2852580DE002C8323/$FILE/Acosta,%20Rene%20Alexander%20finalEA.pdf"],
  ["Mattis","James","handshake","Consulting","Mr. Mattis is a consultant for the CNA Corporation, the Jamestown Foundation, and the U.S. Department of State. For these positions, he receives"],
  ["Kelly","John","handshake","Consulting"],
  ["Shulkin","David","handshake","Consulting"],
  ["Chao","Elaine","handshake","Campaign Donations"],
  ["DeVos","Betsy","handshake","Campaign Donations"],
  ["Carson","Benjamin","handshake","Campaign Donations"],
  ["Sessions","Jeff","gift","Notable Campaign Donors","Mr. Sessions received $10,000 donations from Exxon Mobil in 2014 and 2016 and subsequently wrote a letter to the Department of Justice (which he now heads) requesting that it cease its investigation into whether Exxon Mobil knew and hid information related to its products' effects on climate change.","https://www.documentcloud.org/documents/3222852-Sessions-Letter-to-Lynch.html"],
  ["Price","Tom","gift","Notable Campaign Donors","In 2016, Mr. Price received $21,800 from MiMedx Group, a leading distributor of human amniotic tissue. He also received $15,000 from Woodbranch Investments, a real estate and investments company based in Houston, Texas with several luxury property developments in New York City.","https://www.opensecrets.org/politicians/contrib.php?cycle=2016&cid=N00026160&type=I&newmem=N"],
  ["Perry","Rick","gift","Notable Campaign Donors","Mr. Perry received over $1.5 million in 2016 from Energy Transfer Partners, an energy conglomerate meshed with Sunoco that holds assets such as natural gas, crude oil, natural gas liquids and refined products pipelines. He also received around $250,000 each from Ryan LLC, a Texas tax services firm and Holt Company, a Texas based industrial company.","https://www.opensecrets.org/pres16/contributors?id=N00033486"],
  ["Zinke","Ryan","gift","Notable Campaign Donors","Mr. Zinke received $20,200 from Oasis Petroleum, a Texas based petroleum and natural gas exploration and production company, in 2016. He also received $18,400 from Blessey Marine Services, a company that transports liquid bulk cargo through natural waterways now under Mr. Zinke's jurisdiction.","https://www.opensecrets.org/politicians/contrib.php?cycle=2016&cid=N00035616&type=I&newmem=N"],
  ["Tillerson","Rex","gift","Business Interests","Mr. Tillerson was the CEO of petroleum and oil giant ExxonMobil from 2006 to 2017 and received a salary of $10 million along with $5 million in stock dividends and $250,000 in benefits.","https://extapps2.oge.gov/201/Presiden.nsf/PAS+Index/027D1E3E494A5F538525809E00615559/$FILE/Tillerson,%20Rex%20W.%20%20final278.pdf"],
  ["Perdue","Sonny","gift","Business Interests","Mr. Perdue heads Perdue Partners LLC,","https://extapps2.oge.gov/201/Presiden.nsf/PAS+Index/5D6D47C0C5AE5048852580E1002C818A/$FILE/Perdue,%20George%20E.%20%20final278.pdf"],
  ["Mnuchin","Steve","gift","Business Interests"],
  ["Ross","Wilbur","gift","Business Interests"],
  ["Acosta","Alexander","gift","Business Interests","Mr. Acosta earned about $550,000 in 2016. He has said that he will forego both his salaries as well as a bonus from U.S. Century Bank.","https://extapps2.oge.gov/201/Presiden.nsf/PAS+Index/F8AA9E695EC799C2852580DE002C8323/$FILE/Acosta,%20Rene%20Alexander%20finalEA.pdf"],
  ["Mattis","James","gift","Consulting","Mr. Mattis is a consultant for the CNA Corporation, the Jamestown Foundation, and the U.S. Department of State. For these positions, he receives"],
  ["Kelly","John","gift","Consulting"],
  ["Shulkin","David","gift","Consulting"],
  ["Chao","Elaine","gift","Campaign Donations"],
  ["DeVos","Betsy","gift","Campaign Donations"],
  ["Carson","Benjamin","gift","Campaign Donations"],
  ["Sessions","Jeff","about","About","About Sessions here"],
  ["Price","Tom","about","About","Mr. Price served as a Republican Representative for Georgia from 2005 to 2017. According to an analysis by the Wall Street Journal, Mr. Price traded over $300,000 in health-related companies since 2012. During those years he served on a House subcommittee on health, writing health-care legislation. He is now in charge of 11 agencies related to health and regulation of health- related companies in his new position."],
  ["Perry","Rick","about","About","Mr. Perry was the Governor of Texas from 2000 to 2015. He ran for president in 2012 on the Republican ticket and tried again in 2016 but dropped out due to low poll numbers. He now oversees the nation's policies on nuclear power, fossil fuels, and alternative energy sources."],
  ["Zinke","Ryan","about","About","Mr. Zinke was the Republican Representative for the state of Montana from 2014 to 2017, and prior to that served in the Montana State Senate from 2009- 2011. For the majority of his career, he was a U.S. Navy SEAL officer. As Secretary of the Interior, Mr. Zinke will be in charge of policies affecting America's natural resources and tribal and island communities."],
  ["Tillerson","Rex","about","About","Mr. Tillerson served as the CEO of oil and petroleum giant ExxonMobil from 2006 to 2017. As Secretary of State, Mr. Tillerson is in charge of foreign affairs, many of which deal directly with oil and petroleum deals in the middle east."],
  ["Perdue","Sonny","about","About","Mr. Perdue was the Governor of Georgia from 2003 to 2011. Afterwards, he founded Perdue Partners, LLC, a global food and staples commercial export company, with his cousin David Perdue. Mr. Perdue now heads the U.S. Department of Agriculture, overseeing everything from farm subsidies to food inspection."],
  ["Mnuchin","Steve","about","About","Mr. Mnuchin spent 17 years working at Wall Street firm Goldman Sachs before creating his own venture capital fund and funding several large Hollywood films like Avatar. Now, Mr. Mnuchin will, as Secretary of the Treasury, oversee all things financial and economic for the country."],
  ["Ross","Wilbur","about","About","Known as the \"King of Bankruptcy\", Mr. Ross has made his mark buying distressed and defaulting businesses and flipping them for a profit. He will oversee job creation, economic growth and sustainable development, and the standard of living for Americans in his position as Secretary of Commerce."],
  ["Acosta","Alexander","about","About","Mr. Acosta was the dean of Florida International University College of Law. He is also a boardmember of U.S. Century Bank, but plans to step down from both positions and give up stock interests and salaries if confirmed as the Secretary of Labor overseeing everything from working conditions to workers' benefits and rights."],
  ["Mattis","James","about","About","Mr. Mattis is also known as \"Mad Dog\" and is the highest ranking military officer to be in charge of the Pentagon as the Secretary of Defense."],
  ["Kelly","John","about","About","An active member of the military since 1970, Mr. Kelly served as Senior Military Assistant to the Secretary of Defense in 2011 and 2012. He is now the Secretary of Homeland Security, overseeing the third largest governmental department with components such as TSA, Customs and Border Protection, Immigration and Customs Enforcement, U.S. Citizenship and Immigration Services, FEMA, the Coast Guard, and the Secret Service."],
  ["Shulkin","David","about","About","Mr. Shulkin is the only holdover from the Obama administration. The former President and CEO of Beth Israel Medical Center in New York City, Mr. Shulkin then managed the health care system and was named on the “50 Most Influential Physician Executives in the Country” by Modern Healthcare. He will now serve as the Secretary of Veteran Affairs, managing health care and benefits for veterans."],
  ["Chao","Elaine","about","About","Elaine Chao is one of two women in the Trump cabinet. She served as the Secretary of Labor during President George W. Bush's administration and is married to Senate Majority leader Mitch McConnell. She is now the Secretary of Transportation."],
  ["DeVos","Betsy","about","About","Ms. DeVos heads up the pro-charter and pro-school-voucher nonprofit American Federation for Children and is a long-time opponent of charter school regulation. She is now the Secretary of Education, heading school regulation, including testing standards and practices. However, much of school regulation is on a state-by-state basis, so Ms. DeVos will primarily act as the speaker for the views of the president on education, according to an analysis by the Atlantic."],
  ["Carson","Benjamin","about","About","Mr. Carson was a neurosurgeon who ran against President Trump during the 2016 campaign. A Trump aide said Mr. Carson was chosen as Secretary of Housing and Urban Development because of \"his life growing up in subsidized housing, growing up in poor communities\" according to NPR."]
]

card_data.each do |card|
  Card.create(member: Member.where(last_name: card[0], first_name: card[1]).first, card_type: card[2], card_name: card[3], content: card[4], source: card[5])
end
