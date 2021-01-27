# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "destroying instances..."
Tutor.destroy_all 
Student.destroy_all
Appointment.destroy_all
Review.destroy_all
StudentInbox.destroy_all
Subject.destroy_all
TutorSubject.destroy_all
StudentSubject.destroy_all


puts "creating tutors..."

eric = Tutor.create(first_name: "Eric", last_name: "Kim", hourly: 69, years: 11, img: "data:image/jpeg;base64,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", bio: "I am your god, bow before me peasants. I love making dreams come true, especially my own and I need ca$h for that.", education: "Macaulay Honors College, BS in Mathematics and Secondary Education")
caryn = Tutor.create(first_name: "Caryn", last_name: "McCarthy", hourly: 55, years: 6, img: "https://media-exp1.licdn.com/dms/image/C5603AQHTK4l5dqEIZQ/profile-displayphoto-shrink_200_200/0?e=1610582400&v=beta&t=1rVRdQ8yC2snF8N-PZWa8LC5qbhPJd0F386Q3dhavIE", bio: "I'll turn your F to a D in no time, no guarantees though.", education: "Oxford University, wow look an actual institution that's been around longer than 'Murica")
peter = Tutor.create(first_name: "Peter", last_name: "McSmarty", hourly: 1, years: 0, img: "https://i.pinimg.com/originals/c3/a9/da/c3a9daf1f1889e00cf9026ff1b31256f.jpg", bio: "Don't be intimidated by my huge, massive, brain and irresistible body. I have that effect on most mosquitoes.", education: "Elementary School Dropout")
jallen = Tutor.create(first_name: "Jallen", last_name: "Messersmith", hourly: 61, years: 7, img: "https://miro.medium.com/max/3150/2*iD09m8DUJNsnRx7tWeRM5w.jpeg", bio: "I'll have you know I graduated top of my class in the Navy Seals, and I've been involved in numerous secret raids on [redacted], and I have over 300 confirmed [redacted]. I am trained 76 styles of teaching art forms, and the top tutor in the entire US board of education. You are nothing to me but another money bag. Put some respect on the name fools.", education: "BS, BA, MBA, MS, PHD, DDS, JD, MD, DO, in SWAG from Harvard University")
paige = Tutor.create(first_name: "Paige", last_name: "Turner", hourly: 30, years: 10, img: "https://previews.123rf.com/images/giorgiomtb/giorgiomtb1410/giorgiomtb141000090/32431649-funny-grandma-s-studio-portrait-wearing-eyeglasses-and-baseball-cap-who-stands-for-her-right-isolate.jpg", bio: "I hate reading and am a toxic old woman who will nitpick every aspect of your life. For some reason my kids and grandkids won't visit anymore, so I joined to fulfill my basic needs of bullying people until they cry.", education: "Pasadena City College, PHD in bench warming and Masters in Lawn Mowing")
erwin = Tutor.create(first_name: "Erwin", last_name: "Feng", hourly: 12, years: 1, img: "https://miro.medium.com/fit/c/160/160/1*mLeED0j0w0VJs6CTik273g.jpeg", bio: "Escaped from home, trying to get by on sub-minimum wage pay, is this legal? Best value of the bunch, screw you Peter you're undercutting me.", education: "UCLA BS in Psychobiology, minor in memeology")
greg = Tutor.create(first_name: "Greggy", last_name: "D", hourly: 100, years: 5, img: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhISEhIWFRUVFxUSFRUVEA8QFRUWFRUXFhUVFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFRAQFysdFRkrLS0rLS0rKy0tLS0tLS0tLS0tKy0tLSstLS0tLTcrLS0tNzctLTc3Ny03LS0rLSsrLf/AABEIALcBEwMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAAEBQMGAAECB//EADwQAAEDAgQEBAQEBAYCAwAAAAEAAhEDBAUSITEiQVFxBjJhgRORobEUQlLBM3LR8AcVI2KC8ZLhJENT/8QAGQEBAQEBAQEAAAAAAAAAAAAAAQACAwQF/8QAIBEBAQACAwADAQEBAAAAAAAAAAECEQMhMQQSQSJhE//aAAwDAQACEQMRAD8A8iF05Z+LcoTuVrLIlTSb8UV0Ls9EPGgPrC7ewhoPVSib8Yeiz8X6KJ9P7Arl7IAKkJF56LDd+iGpskwpXUCjQd/jPRYLofpUDaRJXNRsFJF/iW/pRVCrLTA2/eP6IG1pSCmFNsMKZDICHmHdauN1tnnHdbulBDSfBUtt5/mh4RuGtGaT0KlA9XdRlG3LJdosNCQqpHaMJIAVgdQ0b6pVYUSHBWK4boI3CjPE+EYZUcHlgkgE+wEwPVHWgDGOc8gHk0mCewUuGYg6nb1Mn8TQa6cJ3j1STEnvLuOQQSI9RuhG9viWu2kJtb3DXNIO8zHpCrtG1mmXfL1TQ0y0uPWPllCinr1M2nX1UdvSIg9THyXGHsl5ExporJQwxz20yBo0mVJtvmaY5QjLq6DAQROildSAGb2CEuqWYyfkpC8HBp02vcYzaxMRK34ow1tWiXtGreLTpzQWN3OSkNJOgA6QivDt6alEh52BHsnSrzyjhnxHENGqEbbljiDuDHyVgpO+G57hyJP9EAKRdLnbnVITUroinA2Sq4Bdqmz7Y5AFAaOkIFIySFiYGgOixS0oJbwk9V2zSn3JUdU6KR5/02+5+qkjPkHclEXTpYwod3kHv91NWP8Aps90FlwNj6BRnVo91Jc8uwUZPCPdIru2HH7FEgaFD2fmPZE0t0wxBT0JQlXdGVNygnFAoyxHC72RrjwIOy8rvZF1PImNzwDQPG3usuDqu7WkTUaBvKZ1cIkxmk8/SeSNs6JUbYUwTM8imrMKDQJbqOsog2tQDhYAP5W/dZ2tFVNtOdXEeuUwpDSNQ5aQJAHISfUlMgwDz0cw6gGfmETgrqbK7HtL2EnLy0B6hW1oPgdi6XlzTwgbjqU0ZRzvgKy/i2MLmktcHiPygzykJDiV8NQ0BhEzIEnsQE7ISs9rZDjp6ehRlxVbcZBECcx6k9P6pJHxDHM80blioxg5GFRGd3GZjG6CdkRjFTJB9AhaLYfr6gIXGbiahbyGnyUqLw1jnuFSYaOWyuFG7+G0EOlh00Mhed2dyc0DbZWu0htuQT+cn6KUWak4PDSDotmhr3SHCbsluUbgp/b1eGTuFEv8RMIaO6EwG4ymoz0P2RWLPJI6ESEsw6PjP15fskFdxUgOHU/uo2u03Xd5T83dLM5BhIpg64jmhqlWVpw03UNQgRqhO85WIY1wtp0VCqqSv5W9lHVGqluRo3sFkI3+Vqlf5G9yoqg4W9lL/wDX7qTLk7dgo3DhHuu7rcdgtVBwN90h1ZeY9ii6e6Es/N7FGNGqoYguUE5HXKChVFG2A0d7Jva2OZsv0GwXWDWjWsDuZEmURVeCwydRt/fJZuTpPE9qKTBlYwTB4iAXT1zbx6KGpE5tQln4vK6dwu3XoKxUZMcDqSdPqiba7jfZI6l9AAaFo3ZOh0TFTl1V0ktMLKONw6KrQ4A7R9UnFdw2OnSVJdw5ktIzcx3Sy9CwirZ3Rg5WvcI3DT80Lj/g6pSDn05qN6AcQ9ua8+Yw09Q/Ua6HUK8eFPHsD4Vwczfy1Bu30d1HqkbVqzuv9T6Jk4lr3k7CDP8AMNEV4ot6IrUq7XMDqhOZjSDI2DyOR6oTEbkVCcumw/8AEQlRHUuHE5pUNa4LnEnnr7rlh2WqjQToVKp7KkZb3CvltZg0yCJmHDuQq7h1poD6CPfmrjhVAuGY/lgQFGNYJQDSRl3MFHOZBIRIs4dI0G6Pt6bTrCiQYzSAYwjfZV/C7ch73EaawrtjNqHU9ORSmlYQBCkpeLvy6Tukbqh3Tvxdaua7Ny2VdD5gKZo41dBqhMRJbGu401WXIgBLK9VKrsVliA+Ktq2NlVXcqe9H2H2UL91NenVCRVRo3spqY4D3Ciq7N7Ke0EtcOxUY4ut/YLdYcDVq68y3cHgalNWXm9ijKaCsPN7FGs3VFEF2hGbjuEXclCNKKKsl1cGBH9iNEKahIXFvJZxAgxz5jqm+H4FUc3MRvqOy5+O+OP28KmW4PVFUsHe/Zuisfh/Ay8uOkCArG3DMmgCzcnfDgl9Um28LPO6Z2/hcSC7ZXC3ogbrdUDkj7V2/5Yz8UXFfD41NPSOSqtaWy07hepXNLU9FRfEFtDyQN+a1jXn5+OTuKzULpMld0nxspKjV1RaBqV0eXS0eFL+k5rreq0S7UO5uA1ifTkhrmk6nXLDsJ1HNrtikNSrDw5mhEERyKtdW6o1KTKrXk1BwvaR67Dt19VqAFe1QHBo0ACkwdgqVWsPP/tDXVUEkxCd+HsOhzHuMOJGUdPUqS8W+DZQ0N10HdWnDrLI2DAmD780nsrjczMGEVRvC4yT/AGENHIo8l02mAIXNpXBW6j+iDoLdUyQR1QrKGXdHvqlQXlTSVJWvFVm2qxwA1IJ+S8nDS1xaeRXrV1WaA9xPIrynG6wzmN4EpZrm8rpc50oqq4Fo7IJ5hLNYAtLGnRYhFf5vdSXp4j3XDPOO6y5OpSWVNgiMNOpHoh3bBT4YeNUU9RXJ4it138IXNx5iuKuygkw/zexRjTqgsO83sUa3dMMQ3R1Khtt56aqS53KHpkyPks1VaLF7K1enTZmh2UOzBsg/miPyq7fhHghsmNhAVF8J0nsvKJc2A54bPWQRovXxRy6kLjn693xp/KDDrIMYBEcyiLgLttw1afcNOyw9WgRaVBUJ6fZaxPHKNDzGT+kbpMzxOXainHtPzVpXI5c2RsqZ4lougwJB6J//AJhn24evT2UFxB3TLpjPD7R5o3eCmGHMp8T6uoGzeRPqpvEtuGvDmiJS8U3O4ROgkyI0/srtHzM59boXjNgxlb4dNzToC4MJc1py5i0OO8THcFDWh1R2BWfHUcRoxhnu8ZR90I4QStMm1u1pc2dRuQrJZVw0tcRKqdFp4XdfsrBd3Zblyu0LQQdN+aSvGD0i4u10dH2TKpVbT25Ki4X4j+EJec07CUxvMZFRrSDvqgxbbXFh8QNnlJCeMeCJ6qgYEAXOqdBCtZuSKYjeEEx0CGv3S0lV9t/W+LESzrzla8RYs5rMrGy50DtO5Ulaxi8OYyYaNe/oqFi1cPMgak78yrPe4dUc17nHWNPUqlVnHN20SxTIvDRB5hBXDhC6vDMFAVHJqqek/RYtUW6BYpA6Q/1B3XNfdSW38T5/ZRVdypVs7KbDvOPdRHZS4f5x7qU9cXA4lFUU9xuUPUKhUuG+f2KOZugcN849/smICY1PAFwdSuLUcbP5h911cbqFroIPQgrNZq1fjstWkZ8j2EDsTP3VxusYuWycoI9SBC8xrVSSHe69LxrBWVQHuJgtGg1gxuAuWfr1/G3q6EYfjgqkNOjjynREYjUewEhJsOwKmxzC3PwxqdJM8wn2NV5IZyhc9PoY22KfVdTk1KjpPmOhdHyUlK6YWh1KpIPLLl+SbnDMoMUWkPEGdZHTVSWmEkgNyNYwawAEucmW/wDC+k4u5LutoE9qW7KYgJFiBnZGm/xVPEr9WpVTrOzQJ4oEbneQE48SWxysd1dB+SFtsrQcur8p1PKf0rvj4+VzT+6OtqrmMewnzEOI03AgT2lFU7Sk4AubLgNgSPmgba1dkzRu6OuwC1WunNJA7LTAq7qZDsP2A6IO7qFwblPyQ9eqXCSVBZ1iCSN+XcpFH3VsKdPMXHNI05dvUplgtQvyhJm4RcVHw4OjR0mY12hX7wv4eyZaj9C3YfuUGHmD0fhgtOhJCsZZLdvZC0KTCQ52qcEANL5EQpogvzlZAHEoWZD5t4gH1Rz2hwJ0P1VWq1XNqOpnaSQoIMfq5K5b+XIHD6z9l5jdGXE9TKvRw/M+rxEHKcs6jVUypYlroJ1GihXFxsEC9NMQo5QB1EpTUKWaOtvKP75rFu2HCFtLRfbec9ioam6ntd3n0KGdugVLyU+G+b2P2UB2ROGjU9iqKeo6+5Qr0VX3Qr1UVNh3nHv9kyGxS3DfOPdM3jQpjWPhZcbqAqeuh3IrNE0ZII9F7NhlVtSnTd1Ywj3aF49hgkr0bwfc/wDx8v8A+biwdvMPv9Fy5Z1t7viXuxZKsSxo5kJd4gcBUHb91z+KJcXH8s5e6TYpihLm8Bcdo2P1XJ9DHUWHD76YaUxzjkqzhpLyCWFveNExNct0PzUrIixIuJOqVvCKubiSh26qZoXEMNNWm4iAKcPcT9u6T4daBxPPkrZi3Bahg0NSXO6kbNVb8OsqlxbTYXEj+yu2N6fO5sd5Dn1WU6Zpt3mZ9eaAo4c6uCWgkjoJRT7F7rg0SIc0w6eSueAWbWNc1pyuHOPuVtwseVYnavpyHtI7iEsY45h3Xr+IYM+rwuGeecaHqq5W8Ag1BkqEA6luSSOsOlLOlopNHwaWTWWA7c4n90ThzyWjOCCI06qe2tPhUxTbroBuTsICJfVZTaBlknQoa05oEuJLefPkjKlN0Q53sg34qxvRrQOnPot3GJAhp2lCT/ALW8I0O6rd7SJrOJ2arpZvaWj5qs+JqwYYaILzuoFeINinmHm5FVHEKGY5vzc/VOLi/c9rhzbp8t0ndWzEJFLsRdIa39Ij6pLVbqn+IsGZyR190s0ZbDhCxZQ8oWJ2QFuP4nb90K7dF0Dwv9kI5CqRHYYPN2QDEyw8aO7Khx9CV+aFeirg6oR6mck+G+ce6aP2KWYb5x7pm4ToExrHwrrbru3sHO1Og+vsjqdBoMnU/RdVK3JDFruhQYzYfVWbwjcguqUti4Z2927/AEP0VOfX1UthfupVGVG7tM9+o7Qs5zc06cOf0ylemVq1KmJqGB6CST0CCrXto6HxUnbyaqIXFOsPis1PIfpPbqoWfiXE5Yj5Lz7fYxyl7HUcVt27OcP5mOCl/wA0pP0BmdtCldS1qk8Yn3lHW3Dpl+irWqlqWsCevJRU2gbqd1cgSd/sld9eqc7kaYnWY8MnkIIXfhy3y1S9o0PTkq7Z5nOlXnCLQtA2LjsB19V0nbjdSGFTC/xNd7qYDTTaxrnR53nWCfRsfNZcWppvqEDQEB2kH0MdCnuB0fgUWsLszySXu6uOqmvajCeKNoW48mcJrCnAzF2vToFI+lmJIgfIIY2wc7QyjalMBuo2S5oLS3yZszgS7b0CU4k8gnMO3qh/84Oct3E6kckku7kt+I6SZMCSpBcVuS5wpjrqmOH2tXOC+cvIIfBaDJbVqaucTlG+g3lP6F+34gaeF0SGmNvRKFVbj4TBrBOnuq9e2tWvWYHmAyHnfigym+NPFSNIjiMKpXniA0ycoiAWgzMD3QqU4iCyu/KSWucSOxOy6vbRzBnI0JWYRT/E1Q0HLGpKsuLWcjKSMrWyeRkaaJZUXE6/Efb7JTV1TDHhFT2CVuKRTGgw5R2WKSi/hHYLFAsp+R3dCuRjfJ7lBuUq7YmtiOBxSqmE3tRFMpjWJdcoVyKuEK5DNEYb5x7/AGTBz+KBy1KAsGQS7k1F2+oJP/ZRtb60w1EO96JcGeo91A+3/SZ+hVsaQysDlyscpG3h7Fvg1eLyOgO9OjvZXo19eE8PUFeXMCZ2uJ1GcIMt6H9lzyw33Hq4PkfTqr3UuTMA6KOtiECJVew+8+MS0aECdTv2UtSiZ1XOzXr2Tl+83DO5uyWbpbTk7oig5rRJ1dsBy7rKLFCS098NWDnPECeY5A+6ueHYNcMdUqODXEjKwNeNJ3JmPRJ/C7m5WkGNHCO0T90/dWr5wGNLmgDNDmtgmTufSFudCzY+hZ1miXNJjXQg/ZR3VAPGU6H5GUTZVKxGrQwf7nyfomduJGuV31T9nDkwVWxtH03gOBhEeJ6bgxoaSMxj2VguKYGob8tVXcexKk5kioJZILSYIPSDzWtuNx1FTurU06b3DeQPmdUjuXEtMg6eiMxTG4YR6ylFzdPqNzF2X0C1GNllPEH03tOrd4RmM4i5wZVa85myQRpvEpBil050MIjKSZ3JmOfsjMMfnpPad2a9wUjZmzxc80yxzOP9eYwfZJaznPMu3KDvnatA5brulXmA4+6BsfhtwaQn/cJ65Qrhd49a1mDK2qRmyZ4AgxuWzJGv0VRo1hpMOCdYPc0mZh8JsujLJ3qa5NO6jCPxjSDa0NMw1slV2oU1xrOXlz5l2plKaiWaY03aDsFtYzYdgsSdN3WHVWUzLDwyXFoztbruXN0ASgleuf4c+Mre2pOpVWDM9xc53lceQGuhH9VJ48uMNNAMo0qRqV3Zp+GGOZlHnD2xrqBHOSsbNnTyOinFP+GsODc2O+x+y7dSIAC1DiU3G6hZTLiAFNXBmAiaFHINfMfoqsVqsA1mUdlI4Q0Bc0xmPYyfZarO1WQicVoFYSsaouam8qEqSqVwAkV1RGq6Yd1togFcs2KAItLk03h45fUcwrTUvKdRgc0681TZXdKs5pkFGWMrtxc1wP33rZhHCuAzNOkSq6L8fmYCiKFR1d9O3piM7hMnSPU9Fj6PTj8pe/CZcaTKjho41XAf7QYH2lSVPFFSjWqQzNTdl1BIhwEH9kVidwy2YLanq4UAA7qXbkfMpVd4Y1tNmXM6Wh3MzIkklOXTXDba9AwrEBXoNqGoGF2sAZiBtB1TWye1o/jT/wAQP3Xm/hKuAHUnlw10IjT9kbimI06HluS8/oyB31Gy5u91enptOrmbo75hVzxJg1So1zxRbUfAEtiSORgxJC1gnxX0mPDm8QDspJ0n1hH3FauxpOXQcwQYWpXLLj/NvHcRoFry10ggwQdCD0IQdS6A4QNEz8e1nG4FQ/naD7glv7BVx9Thnou07eDOauk1zbB49eRXODWz21MoaXF4LYHTqmnhig2uKjnaMpNzO9fQfJHf5q2mR8KmGjtJ35p2Iot1Tc2o4OEEEgg6Llw0T3xVFSo6qBExKSVDAUq5tqZJHIBZc1IMZpMyddvRcCqeXJCNOqAdYniLqjGNeAS2eP8AM4Hk7r3SaoUZchBVOSVTJp0CxaA29litnax1KdJ+4H2VfuaWYF4flAnKCSdJ0+ayvWgETrCHNxo2Ous6hYGtGFjbVSwOa4c9JI2WXF1VYIe3UzGgPvIXNG8bvlj1YY+imcQ8znkxEOEaJ2gNoyOI+39VqtUTGysASWuJjlBBTB3hlha9wqOGUCJDTJJgD7/JIvZDR0b3UL3JrcYTUgRBG26W3Nu5jsrhBQUJXQXJWqp0VF+InaldNatBqla1LLmptCxo0Kyruum7IKIBdQtQuggJTShod3+fJS4JcuZVlsZnAtBOXSY5nQbLVW4aabQNwSI9ORQuVOmsbqro+u6q4uc4cAFN0GdAAd9l6BSw8GkzNJ4W6bcgvPcKtMlvbSNbiq0R1bnDflovW6jhHZcsnu4bvtRMRa5pLWNyj00SPELaAXkyTy6lXy/Y0ySqze2BLpjT7LO3pE4PfVWUmvY4zzbOmmituD46agaXaHmJB2SLAsJlggEkaxMBFULH4MufAJJMCfaFiVu6s0j/AMQsAp1LZ9wzR1Ljgfp/O3t+Ydj1XktQy303XoXirG3tovpzpUlnz/8AS87ewuI6BejC9PmfJkma2eCXA0rikNC5unqhriiRA2IOqiwGr8J7XddPZP8AGGscJG8Sey25KtiJzAgckhuNSrZb27Ycd+SVV6DATpqoEwYQ1xPRBs3CZYpUgBn/ACP7JbT3UB9wUI8Im5QrimqmKxYsQgt5uhSsWKWQnDqDnvaxmrnODWiQJLjA1K9ow7/Di2ZbhlwC+seJz2vc3Kf0s5QPUarFi5cler4+Ms7ec46w2l1UoMMsY4Bpdq6C0O1I7rB4kcG5HMBE5tCQTpH991ixbnjz59ZVDVx4E6AgdCi6VUVaT6r2gjRjZAJhsyZ5an6LFiWYr9dgnTT0lNvCnhWviNw6jQLW5Bme95hrGzAMDVxnkPosWIiX6+/wUe1rRSuw+pDnZX0sjDlGwIcSJJA1ndeWOYQ4giCCQRpoQYI0Wli0rELjqum81ixVDiVuppp81pYgOAu1ixJWU+I25LRuX+A1uokah0x6r0+riMw1u5E9ICxYuHK9/wAXvbu1w9zuIlFswprlpYsPTaNpURSmEoxm+EE8+yxYqmdvLvE+ImpWbS5M4j6ucB9h90mfXgwFtYvTjOnyeS7yrijijmnTXurrUrNPwXSeNoPbSQsWJGJ9Z0KVRhbkDX8nNEZu6r2P4cyk11Z2oGsDrMBbWJheeXdcvcXHn9PQKOnusWIY/R1xsEE8rFiWqYrFixS0/9k=", bio: "Please like, comment, and subscribe to my YouTube. This company takes 95% of my salary.", education: "No reference needed. My reputation preceeds itself")



puts "creating students..."
marky = Student.create(first_name: "Marky", last_name:"Ghaida", bio: "Eric's #1 fan/stalker. I followed him all the way to another country.", age: 24, password:"EricKim")
json = Student.create(first_name: "Json", last_name:"Buffalo", bio: "I'm incredibly busy and important, so message me first with a detailed message or else you will be ignored. Chances are I won't make time for you, but may as well try. Looking to meet someone before I'm insanely rich, so I know they're into me only for my good looks.", age: 22, password:"turbo")
hoolian = Student.create(first_name: "Hoolian", last_name:"Hurnondes", bio: "Halp I cain't spll", age: 5, password:"1")
kevin = Student.create(first_name: "Kevin", last_name:"Feng", bio: "I'm only here because my mom forced me to because I got an A- one time when I was in pre-school 14 years ago.", age: 18, password:"FML")
albit = Student.create(first_name: "Albit", last_name:"Eyestine", bio: "I'm so lonely and this is the cheapest alternative I found for meeting people.", age: 42, password:"Mathdabomb")
julio = Student.create(first_name: "Julio", last_name:"Hernandez", bio: "I'm here so I don't get kicked out of Flatiron. Wait aren't I one of the founders of this site?", age: 30, password:"123abc")


puts "creating appointments..."
appointment1 = Appointment.create(time: Time.new(2021, 1, 10, 5, 0, 0), tutor_id: 1, student_id: 1)
appointment2 = Appointment.create(time: Time.new(2021, 1, 11, 4, 0, 0), tutor_id: 2, student_id: 3)
appointment3 = Appointment.create(time: Time.new(2021, 1, 12, 11, 0, 0) , tutor_id: 6, student_id: 3)
appointment4 = Appointment.create(time: Time.new(2021, 1, 13, 7, 0, 0), tutor_id: 6, student_id: 6)
appointment5 = Appointment.create(time: Time.new(2021, 1, 11, 8, 0, 0), tutor_id: 3, student_id: 4)
appointment6 = Appointment.create(time: Time.new(2021, 1, 10 , 9, 0, 0), tutor_id: 4, student_id: 5)
appointment7 = Appointment.create(time: Time.new(2021, 1, 11, 4, 0, 0), tutor_id: 5, student_id: 1)
appointment8 = Appointment.create(time: Time.new(2021, 1, 10 , 5, 0, 0), tutor_id: 2, student_id: 1)
appointment9 = Appointment.create(time: Time.new(2021, 1, 9, 6, 0, 0), tutor_id: 4, student_id: 2)
appointment10 = Appointment.create(time: Time.new(2021, 1, 8, 6, 0, 0), tutor_id: 7, student_id: 1)
#did - 5 on seeded times bc UTC stuff

puts "creating reviews..."
review1 = Review.create(review:"If I could give a higher rating I would. I proposed, he said no but I won't give up 😍, eventually I'll wear him down" , rating: 10, tutor_id: 1, student_id: 1)
review2 = Review.create(review:"I improooved m y spelking", rating: 7, tutor_id: 2, student_id: 3)
review3 = Review.create(review:"Mi grammar is geting bettter, thenks", rating: 9, tutor_id: 6, student_id: 3)
review4 = Review.create(review:"I’m telling you, Erwin is as cracked as he is jacked. I saw him at a 7-11 the other day buying Monster and adult diapers. I asked him what the diapers were for and he said they contain my full power so I don’t completely sh** on these kids. Then he rode a grizzly out the door" , rating: 1, tutor_id: 6, student_id: 6)
review5 = Review.create(review:"I don't think Mr.McSmarty is very smart.. two thumbs down", rating: 2, tutor_id: 3, student_id: 4)
review6 = Review.create(review:"I think its hilarious u kids talking smack about Jallen. u wouldnt say this crap to his face, hes jacked🤤 not only that but he wears the freshest clothes, eats at the chillest restaurants and hangs out with the hottest peeps. yall are pathetic lol" , rating: 9, tutor_id: 4, student_id: 5)
review7 = Review.create(review:"I was passing pages so fast! wow i cant belive it! thanks for your verbal abuse! Sticks and stones may break my bones but words will always hurt me.", rating: 9, tutor_id: 5, student_id: 1)
review8 = Review.create(review:"Either the ritalin(...prescribed.. I swear) was working or Caryn has MAD SKILLZ, top notch instructor" , rating: 10, tutor_id: 2, student_id: 1)
review9 = Review.create(review:"I'm beside myself. Driving around downtown Manhattan begging (thru texts) Jallen for his address. His galaxy brain broke me." , rating: 5, tutor_id: 4, student_id: 2)
review10 = Review.create(review:"How do I donate to your YouTube channel WOW" , rating: 8, tutor_id: 7, student_id: 1)


#puts "creating messages in student inboxes..."
#inbox1 = StudentInbox.create(message: "Yo hmu, you look like you really need help in all aspects of life", tutor_id: 1, student_id: 3)
#inbox2 = StudentInbox.create(message: "Ey habibi lemme fill the void in your life", tutor_id: 6, student_id: 1)
#inbox3 = StudentInbox.create(message: "They say I'm kawaii in the sheets🥺, senpai in the streets. Based on your picture, statistically I may have a better chance of being killed by you than the virus so reach out YOU NEED HELP lmao", tutor_id: 1, student_id: 2)
#inbox4 = StudentInbox.create(message: "Hi! I can see you a straight F student, please consider taking some lessons... dunce", tutor_id: 4, student_id: 4)
#inbox5 = StudentInbox.create(message: "Albit, please start taking care of your life, and stop day drinking!", tutor_id: 3, student_id: 5)
#inbox6 = StudentInbox.create(message: "Hey Chump!! git some billz. book an appointment A$AP Rocky", tutor_id: 2, student_id: 6)

#<p><b>My messages: </b> </p><%@student.student_inboxes.map do |msg| %>
 #   <p><%= msg.message %> ---
  #  <% @sender = msg.tutor_id %>
   # <%= Tutor.all.find(@sender).first_name%>
    
   # </p>
   # <%end%>


puts "creating subjects"
subject1 = Subject.create(subject: "Math")
subject2 = Subject.create(subject: "Grammar")
subject3 = Subject.create(subject: "Reading and Writing")
subject4 = Subject.create(subject: "Biology")
subject5 = Subject.create(subject: "World and US History")
subject6 = Subject.create(subject: "Chemistry")
subject7 = Subject.create(subject: "Physics")
subject8 = Subject.create(subject: "Computer Science")
subject9 = Subject.create(subject: "Lifestyle and health")
subject10 = Subject.create(subject: "Climbing")
subject11 = Subject.create(subject: "Underwater basket weaving")
subject12 = Subject.create(subject: "Zoology")



puts "creating tutor subjects..."
tutor_subject1 = TutorSubject.create(tutor_id: 1, subject_id: 1)
tutor_subject2 = TutorSubject.create(tutor_id: 1, subject_id: 7)
tutor_subject3 = TutorSubject.create(tutor_id: 1, subject_id: 8)
tutor_subject4 = TutorSubject.create(tutor_id: 1, subject_id: 5)
tutor_subject5 = TutorSubject.create(tutor_id: 2, subject_id: 3)
tutor_subject6 = TutorSubject.create(tutor_id: 2, subject_id: 2)
tutor_subject7 = TutorSubject.create(tutor_id: 2, subject_id: 8)
tutor_subject8 = TutorSubject.create(tutor_id: 3, subject_id: 11)
tutor_subject9 = TutorSubject.create(tutor_id: 4, subject_id: 8)
tutor_subject10 = TutorSubject.create(tutor_id: 4, subject_id: 9)
tutor_subject11 = TutorSubject.create(tutor_id: 4, subject_id: 10)
tutor_subject12 = TutorSubject.create(tutor_id: 5, subject_id: 11)
tutor_subject13 = TutorSubject.create(tutor_id: 5, subject_id: 5)
tutor_subject14 = TutorSubject.create(tutor_id: 5, subject_id: 3)
tutor_subject15 = TutorSubject.create(tutor_id: 5, subject_id: 12)
tutor_subject16 = TutorSubject.create(tutor_id: 6, subject_id: 4)
tutor_subject17 = TutorSubject.create(tutor_id: 6, subject_id: 1)
tutor_subject18 = TutorSubject.create(tutor_id: 6, subject_id: 6)



puts "creating student subjects..."
student_subject1 = StudentSubject.create(student_id: 1, subject_id: 8)
student_subject2 = StudentSubject.create(student_id: 1, subject_id: 7)
student_subject3 = StudentSubject.create(student_id: 2, subject_id: 3)
student_subject4 = StudentSubject.create(student_id: 2, subject_id: 1)
student_subject5 = StudentSubject.create(student_id: 3, subject_id: 2)
student_subject6 = StudentSubject.create(student_id: 3, subject_id: 3)
student_subject7 = StudentSubject.create(student_id: 4, subject_id: 10)
student_subject8 = StudentSubject.create(student_id: 4, subject_id: 12)
student_subject9 = StudentSubject.create(student_id: 5, subject_id: 4)
student_subject10 = StudentSubject.create(student_id: 5, subject_id: 5)
student_subject11 = StudentSubject.create(student_id: 6, subject_id: 2)
student_subject12 = StudentSubject.create(student_id: 6, subject_id: 6)
student_subject13 = StudentSubject.create(student_id: 2, subject_id: 9)



















