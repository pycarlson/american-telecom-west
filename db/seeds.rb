#encoding: utf-8

CablingService.create!(description: "Complete turnkey cable installations of both Cat 5e and Cat 6 solutions")
CablingService.create!(description: "Comprehensive testing and reporting capabilities")
CablingService.create!(description: "Lifetime Guarantees for your cabling installation")
CablingService.create!(description: "Efficient project management and implementation of large scale corporate installations, moves and other Telecommunications Projects")
CablingService.create!(description: "Fiber Optic installation and troubleshooting")
CablingService.create!(description: "Tenacious carrier coordination and vendor management")

CablingAddServ.create!(description: "Troubleshooting of carrier cabling and extended D-Marks")
CablingAddServ.create!(description: "Troubleshooting of your legacy equipment")
CablingAddServ.create!(description: "All analog services which may not be supported by your VOIP vendor")
CablingAddServ.create!(description: "Carrier contract analysis, evaluation and negotiation")
CablingAddServ.create!(description: "Disaster Recovery analysis evaluation and solution implementation")

NortelService.create!(description: "Complete turnkey PBX and voicemail system installations")
NortelService.create!(description: "Comprehensive and flexible 24 by 7 maintenance contracts")
NortelService.create!(description: "Reliable Remote 24 by 7 system monitoring and repair")
NortelService.create!(description: "Daily Move/Add/Change and operational support")
NortelService.create!(description: "Effective problem management and resolutions")
NortelService.create!(description: "Efficient project management and implementation of large scale corporate installations, moves and other Telecommunications Projects")
NortelService.create!(description: "Complete ACD Call Center design, implementation and support")
NortelService.create!(description: "Tenacious carrier coordination and vendor management")
NortelService.create!(description: "Strategic converged network planning, implementation and support, including VoIP technologies, audio/video teleconferencing, wireless solutions and unified messaging")
NortelService.create!(description: "Toll fraud and security auditing, analysis and optimization")

NortelAddServ.create!(description: "Telecommunications RFP development, analysis and vendor selection")
NortelAddServ.create!(description: "Asset Disposal and financial recovery services")
NortelAddServ.create!(description: "Carrier billing audit and cost recovery")
NortelAddServ.create!(description: "Best of class carrier rate and term benchmarking")
NortelAddServ.create!(description: "Carrier contract analysis, evaluation and negotiation")
NortelAddServ.create!(description: "Uptime availability and reliability analysis, evaluation and optimization solution implementation")
NortelAddServ.create!(description: "Disaster Recovery analysis evaluation and solution implementation")
NortelAddServ.create!(description: "Call Detail Recording data collection and reporting")

Addon.create!(nortel_intro: "American Telecom West has been providing Nortel Legacy solutions for medium and large businesses for over 25 years, both domestically and abroad. The services that we offer allow our clients allow them to protect their existing infrastructure for the foreseeable future. Our highly skilled and certified personnel can provide expert installation and maintenance services on all Nortel Networks Meridian equipment including Meridian 1 PBX, Meridian Mail, Call Pilot and Symposium. In addition, we offer expert service on Avaya Octel voice processing equipment.", 
              nortel_conclusion: "American Telecom West works aggressively to offer telecommunications solutions that are driven by your business goals and needs. Our goal is to deliver effective and cost efficient solutions that meet timelines and budgets in line with your business plan. We have both the expertise and the experience to take on the detailed coordination of your upcoming telecom projects and deliver best of class service to keep your voice network infrastructure robust and performing efficiently. Call us today to see if we can help you with your telecommunication needs. We look forward to partnering with you.", 
              cabling_intro: "American Telecom West has been providing telecommunications solutions for medium and large businesses for over 25 years, both domestically and abroad. Our expertise includes structured cabling and assistance on legacy equipment.", 
              cabling_conclusion: "American Telecom West works aggressively to offer structured cabling solutions that are driven by your business goals and needs. Our goal is to deliver effective and cost efficient solutions that meet timelines and budgets in line with your business plan. We have both the expertise and the experience to take on the detailed coordination of your upcoming telecom projects and deliver best of class service to keep your voice network infrastructure robust and performing efficiently. Contact us today to see if we can help you with your telecommunication needs. We look forward to partnering with you.")

Client.create!(name: "1-800-RADIATOR", logo_url: "http://americantelecomwest.com/extras/radiator.com.jpg", tag: "Leader in Auto Radiator Sales")
Client.create!(name: "C & H Sugar", logo_url: "http://americantelecomwest.com/chlogo.gif", tag: "Food Processing Corporation")
Client.create!(name: "The City of Menlo Park", logo_url: "http://americantelecomwest.com/extras/menlo-banner.jpg", tag: "City Government")
Client.create!(name: "Net I.Q.", logo_url: "http://americantelecomwest.com/extras/netiqAttachmate_logo.gif", tag: "Systems and Security Management")
Client.create!(name: "Travis Air Force Base - DGMC", logo_url: "http://americantelecomwest.com/extras/travis%20copy.PNG", tag: "Military Hospital Services ")

Faq.create!(question: "How can I keep up with all this day-to-day Move/Add/Change activity?", answer: "Our highly skilled and certified personnel provides expert day-to-day MAC services on all Nrtel Networks Meridian eqipment whether it is a small branch office or a corporate HQ build out or move.")
Faq.create!(question: "Who can I call to handle the telecom infrastructure of our new branch of offices?", answer: "ATW provides expert turnkey installation services on all Nortel Networks Meridian equipment whether it is a small branch office or a corporate HQ build out or move.")
Faq.create!(question: "How can I deliver all of these cost reducing projects without going over budget?", answer: "ATW offers full life cycle project management of either small or large telecome projects always striving to meet your timelines nand budgets.")
Faq.create!(question: "My maintenance contract is up and I'm not very pleased with our current vendor's performance. What are my options?", answer: "In addition to meeting flexible and reasonably priced maintenance contracts ATW offers reliable 24 by 7 remote system monitoring. We will often times detect and clear troubles before you are even aware of them.")
Faq.create!(question: "I need to add capacoty to my Meridian system immediately, whom can I call?", answer: "ATW can perform your necessary system upgrades whether it be adding a single phone, upgrading your Meridian software verison or adding one or more modules or applications. We are large enough to meet your needs and small enough to move quickly.")
Faq.create!(question: "We are changing our primary carrier. Who can manage this carrier migration?", answer: "ATW is very experienced at managing complex carrier systems. We will provide full project management s wel as aggressice vendor coordination making the migration as seamless as possible.")
Faq.create!(question: "Upper management wants an evaluation and assessment of the convergence of our voice and data networks. Is Voiceover IP really ready and reliable yet?", answer: "ATW can perform strategc converged network planning, implementation and support, including VoIP technologies, audio/video teleconferencing, wireless solutions and unified messaging. We can conduct a full assessment of the feasibility of convergence of your voice and data networks and see if it makes sense for you.")
Faq.create!(question: "Our existing call center isn't functioning optimally. Where should I go for an audit, analysis and recommendation?", answer: "ATW can offer complete ACD Call Center design, implementation and support. We specialize in building efficient call queues an effective voice menuing options whether you have one small helpdesk queue or multiple contact centers with blended multimedia queues.")
Faq.create!(question: "We may be a victim of toll fraud or abuse. Where should I go for an audit, analysis and recommendation?", answer: "ATW can offer comprehensive toll fraud and escurity auditing, analysis and optimization. We offer CDR solutions that wil arm you with the necessary reports to control any fraud or abuse as well as security breaches.")
Faq.create!(question: "What is the meaning of life?", answer: "Nobody really fucking knows so you better just decide and live the rest of your life while you have the chance!")