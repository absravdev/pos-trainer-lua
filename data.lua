local Data = {
    listas = {
        --paneles
        panel1 = 
        {
            "Ensa\nladas",
            "Sopas",
            "Flautas",
            "Snacks",
            "Pan",
            "Tartas",
            "Bolleria",
            "Beb\nFrias",
            "Beb\nCalient",
            "Comple",
            "Postres",
            "panel2",
        }, --f
        ensaladas = 
        {
            "Carpaccio\nRoastbeef",
            "ENS\nCABRA\nPERAS",
            "ENS\nCESAR\nBACON",
            "Ensalada\nAtún\nTomate",
            "Ensalada\nCesar",
            "Ensalada\nQuinoa FB",
            "Ensalada\nTomate\nBurrata",
            "Ensalada\nverde",
        }, --f
        sopas = 
        {
            "Bread\nBowl\nCrema"
        }, 
        flautas = 
        {
            "Falutín\nAtún",
            "Flautín\nIbérico",
            "Flautín\nTortilla",
        }, --f
        snacks = 
        {
            "DATILES",
            "Lay's\ngourmet",
        }, --f
        pan = 
        {
            "Pan",
        }, --f
        tartas = 
        {
            "Coca Sant\nJoan",
            "Tarta\nAmerican\nDark",
            "Tarta\nFudge\nChoco",
            "Tarta\nManzana\nSuprema",
            "Tarta\nMousse\nChoco",
            "Tarta\nQueso",
            "Tarta\nZanaho\nAmerica",
        }, --f
        bolleria = 
        {
            "Resto",
            "Croissants",
            "Big\nTulipa\nDark", 
            "Big\nTulipa\nWhite", 
            "BRETZEL\nCHOCOLAT", 
            "Brownie", 
            "Churros\n3\nun", 
            "Churros\n5u", 
            "Cinamon\nRoll", 
            "Cookie\nChocolate\nLeche", 
            "Cookie\nDoble\nChocolate", 
            "Croissant", 
            "Croissant\nChoc\nAlmendra", 
            "CRUJIENTE\nMANZANA", 
            "Dot\nchoco", 
            "Dots", 
            "Ensaimada", 
            "Madalena\nsingluten\n2u", 
            "Madalenta\nsingluten\nchoco",
            "bolleria2"
        }, --f
        bolleria2 = 
        {
            "bolleria1",
            "PASTEL\nDE NATA",
            "Snecken",
            "Trio Pop\nDots\n(CONCS)",
            "Tulipa\nÁrandanos",
            "Tulipa\nChoco"
        }, --f
        resto = 
        {
            "Napolitana\nChocolate",
            "Napolitana\nCrema",
            "Trenza\nChocolate",
        }, --f
        croissants = {
            "Croissant\nRelleno\nFramb.",
        }, --f
        bebfrias = 
        {
            "Veri",
            "ZumoNaranja",
            "Batidos",
            "Otras",
            "Pepsi Cola",
            "Pepsi\nLight",
            "Pepsi Max",
            "Kas\nNaranja",
            "Kas Limon",
            "Lipton\nLimon",
            "7Up",
            "Aquarade",
            "Milkshakes",
            "Botellin\nTonica",
            "Chai\nLatte\nIced",
            "Smoothie\nFresa\nXL",
            "Smoothie\nMango\nXL", 
            "Te\nCurcuma\nIced",
            "Te\nMatchaIced",
        },--f
        veri = 
        {
            "Agua 0,50l",
            "Agua San\nPeregrino\n05l",
            "Agua Vittel\n0,75cl",
        },--f
        zumoNaranja = 
        {
            "Zumo\nDesayuno",
            "Zumo Narj\nNat 20cl"
        },--f
        batidos = 
        {
            "Batido\nChoco\nIbee"
        },--f
        otras = 
        {
            "Charitea\nBlack",
            "Charitea\nGreen",
            "Charitea\nMate",
            "Charitea\nRed",
            "Granizado\nZumo\nLipton",
            "Komvida\nKombucha\nBerry",
            "Komvida\nKombucha\nGinger",
            "Lemonaid\nBlood\nOrange",
            "Lemonaid\nGinger",
            "Lemonaid\nLime",
            "Lemonaid\nPassion\nFuit",
        },--f
        pepsiCola = 
        {
            "Pepsi\nGrande",
            "Pet Pepsi",
        },--f
        pepsiLigh = 
        {
            "Pet Pepsi\nLight",
        },--f
        pepsiMax = 
        {
            "Pepsi Max\nGrande",
            "Pet Pepsi\nMax",
        },--f
        kasNaranja = 
        {
            "Kas\nNaranja\nGrande",
            "Kas\nNaranja\nJuinor",
            "Kas\nNaranja\nZer",
            "Pet Kas\nNaranja",
        },--f
        kasLimon = 
        {
            "Kas\nLimon\nGrande",
            "Kas\nLimon\nJuinor",
            "Kas Limon\nZer\nGrande",
            "Pet Kas\nLimon",
        },--f
        liptonLimon = 
        {
            "Lipton\nGrande",
            "Pet Lipton",
        },--f
        sevenUp = 
        {
            "7UP Free\nGrande",
            "7UP Free\nJuinor",
            "7UP\nGrande",
            "Pet 7Up\nFREE",
        },--f
        aquarade = 
        {
            "Pet\nAquarade\nLimon",
            "Pet\nAquarade\nNaranja",
        },--f
        milkshakes = 
        {
            "Milkshake\nFresa XL",
            "Milkshake\nMango XL"
        },--f
        bebcalient = 
        {
            "Cafés",
            "Capuccinos",
            "Tes",
            "Infusiones",
            "Te\nCurcuma\nCaliente",
            "Te\nMatcha\nLatte",
        }, --f
        cafes = 
        {
            "Café",
            "Café\nAmericano",
            "Café\ndescaf.",
            "Café\nHielo",
            "Café\nLatte\nLarge",
            "Café\nleche\ndescaf.",
            "Café\nleche\ndescaf.\nSobre",
            "Café\nLeche\nMedium",
            "Cortado",
            "Cortado\ndescaf.",
        }, --f
        capuccinos = 
        {
            "Café\nMochaa\nLarge", 
            "Café\nMocha\nMedium",
            "Cappuccino\nMedium",
            "Capu\nLarge",
            "Carajillo",
            "CARAMEL\nLATTE",
            "Chocolate\nGrande",
            "Chocolate\nMediano",
        }, --f
        tes = 
        {
            "INFUSION\nESSENTIAL\nROOIBO",
            "INFUSION\nHAPPY\nSTOMACH",
            "INFUSION\nOMMM",
            "TE\nENGLISH\nBREAKFAST",
            "TE\nMARRAKEC",
            "Té\nPirámide\nLipton",
        }, --f
        infusiones = 
        {
            "Chai\nLatte", 
        },--f
        comple = 
        {
            "CHIPS\nONDULADAS\nFB",
            "Guacamole\nPan\nPolar", 
            "Hummus\nsticks\nVerduras",
            "NACHOS\nEMOLACH\nY QUINOA",
        },--f
        postres = 
        {
            "Helados",
            "Chocolatina\nTemática",
            "Ensalada\nMacedonia",
            "Helado\nCheese\nFrambuesa",
            "Helado\nChoco\nBrownie",
            "Helado\nVainilla\nCookies",
            "Huevo\nKinder",
            "Manzana",
            "Pancake\nHalloween\nFB",
            "Plátano",
            "Yogurt\nMuesli",
        },
        helados = 
        {
            "Swing", 
        },--f
        ---------------------------
        panel2 = 
        {
            "panel1",
            "Hambur.",
            "Otros",
            "Merchan\ndising",
            "Sumple\nmentos",
            "Menu",
            "Beb\nAlcohol",
            "vinos y\nCavas",
            "Tapas",
            "RACION",
            "Obsole\ntos",
            "panel3",
        },
        hambur = 
        {
            "BURGER\nbeyond\nMEAT",
            "Burger\nCaprese",
            "Burger\nCaprese\nHalal",
            "Burger\nCh.\nTrufado\nHalal",
            "Burger\nCh.\nTrufad",
            "BURGER\nPULLED\nPORK",
            "Hamb.\nInfantil\nHalal",
            "Hamb.\nPremium\nHalal",
            "Hamburguesa\nInfantil",
            "Hamburguesa\nPatatas",
            "Hamburguesa\nPremium",
            "Muslo\nBrasa\nBurger",
        },
        otros = 
        {
            "BONO 15E",
            "BONO 25E",
            "Bono\n4.50E",
            "Buen\nProvecho",
            "Bunyol\nRegal",
            "Lata Illy\nClassic",
            "Lata Illy\nIntenso",
            "Regal OU\nPasqua",
            "Regalo\nCamiseta",
            "Regalo\nGalleta\nFortuna",
            "Regalo\nPan\nchocolate"
        },
        merchandising = 
        {
            "VASO\n120Z",
            "VASO\n160Z",
            "VASO 80Z\nO-FRIEND"
        },
        sumplementos = 
        {
            "Envase\nCliente",
            "Ley Plást.\n7/22"
        },
        menu = 
        {
            "C.\nBROWNIE\nCARAMEL"
        },
        bebAlcohol = 
        {
            "Anis",
            "Brandy -\nCoñac",
            "Ginebra",
            "Ron",
            "Vermouth",
            "Vodka",
            "Whisky",
            "Licores",
            "COMBINADO\nALCOHOL"
        },
        anis =
        {
            "CopaAnis\nCastellana"
        },
        brandy = 
        {
            "Torres-5"
        },
        ginebra = 
        {
            "Ginebra "
        },
        ron = 
        {
            "Ron "
        },
        vermouth = 
        {
            "Vermut\nBlanco",
            "VERMUT\nYZAGUIRRE\nROJO"
        },
        vodka = 
        {
            "Vodka "
        },
        whisky = 
        {
            "Baileys",
            "Cardhu 12",
            "WHISKY"
        },
        licores = 
        {
            "Copa\nLicor\nHierbas"
        },
        vinosycavas = 
        {
            "Cavas",
            "Vinos\nBlancos",
            "Vinos\nRosados",
            "Vinos\nTintos"
        },
        cavas = 
        {
            "Cava",
            "CopaAnna\nCodorniu"
        },
        vinosblancos = 
        {
            "BOT\nPALACIO\nBORNOS",
            "BOTELLA\nALABARIÑO\nFEFINAN",
            "COPA\nALABARIÑO\nFEFINANE",
            "COPA\nPALACIO\nBOTNOS",
            "Gran Viña\nSol"
        },
        vinosrosados = 
        {
            "BOTELLA\nLA VIELLE\nFERME",
            "COPA LA\nVIELLE\nFERME",
            "COPA\nVIÑA",
            "Viña\nEsmeralda",
        },
        vinostintos = 
        {
            "BOTELLA\nARIENZO\nM RISCAL",
            "COPA\nARIENZO\nM RISCAL",
            "Copa vino\nceleste",
            "Vino\nAtrium",
            "Vino\nCeleste",
        },
        tapas = 
        {
            "CHIPS\nVEGETALES",
            "Ensaladilla\nRusa",
            "MAZORCA\nMAIZ\nASADA",
            "Olivas",
            "PATATA ASADA",
            "PATATA\nASADA\nSALSA",
            "REVOLON\nFUNDIDO",
            "TAPA\nHUMMUS",
            "TAPA\nIBÉRICO",
            "TAPA\nIBÉRICO +\nQUESO",
            "TAPA\nQUESO",
            "TAPA\nTORTILLA\nPATATAS"
        },
        racion = 
        {
            "Nachos\nCrema\nQueso",
            "RACION\nIBÉRICO"
        },
        obsoletos = 
        {
            "Agua 33CL",
            "Buñuelos",
            "Chips",
            "Fruta\nTemportada",
            "Gildas",
            "Infusion",
            "Manzanilla",
            "Tapa\nSalpicón\nMarisco",
            "Té",
            "Tila"
        },

        ---------------------------
        panel3 = 
        {
            "panel22",
            "Cervezas",
            "Carnes.",
            "Costillas",
            "Princi\npales",
            "Extra",
            "Sand\nwich",
            "Boca\ndillos",
            "Cocktails",
            "Extras",
            "Bocadillos\nCorner",
            "Personal",
        },
        cervezas = 
        {   
            "Botella",
            "Lata",
            "Tirador\n33cl",
            "Tirador\n50cl"
        },
        botella = 
        {
            "Bot Free\nDamm",
            "Botella\nCarlsberg",
            "Botella\nEstrella\nDamm",
            "Botella\nVoll Damm",
        },
        lata = 
        {
            "Lata\nCerveza\nSin",
            "Lata\nDamm 0,5",
            "Lata\nDamm\nLemmon"
        },
        tirador33cl = 
        {
            "Tirador\nDammLemon\n33",
            "Tirador\nestrella\ndamm 33c",
            "Tirador\nVollDamm\n33"
        },
        tirador50cl = 
        {
            "Cerveza\nEstrella\nDamm50cl",
            "Tirador\nDammLemon\n50",
            "Tirador\nVollDamm\n50"
        },
        carnes = 
        {
            "Butifarra\nMonts\nJudia"
        },
        costillas = 
        {
            "TENDER",
            "1/2 Tender\nPatata"
        },
        tender = 
        {
            "Tender\nPatata\nAsada"
        },
        principales = 
        {
            "Pollo\nBrasa\nPatatas"
        },
        extra = 
        {
            "Extra\nbacon"  
        },
        sandwich = 
        {
            "Bagel\nRoastbeef",
            "Bagel\nSalmón",
            "Bagel\nVegetal",
            "Bikini",
            "BIKINI\nTRUFADO\nFB",
            "Bocadillo\nJamón\nIbérico",
            "Sand.\nClub",
            "SW\nPOLLO\nTRUFA"
        },
        bocadillos = 
        {
            "Clásicos",
            "Celiacos",
            "BOCADILLO\nATUN FB",
            "BOCADILLO\nBACON\nQUESO",
            "Tortilla",
            "TOSTA\nIBÉRICA",
            "TOSTA\nSALMÓN"
        },
        clasicos = 
        {
            "British\nBacon"
        },
        celiacos = 
        {
            "Bacon\nQueso\nS/G",
            "Pollo\nQueso\nS/G",
            "Tortilla\nVegan S/G",
        },
        cocktails = 
        {
            "Mojito"    
        },
        extras = 
        {
            "Cafe Pans"
        },
        cafepans = 
        {
            "Supl. Nata",
        },
        bocadilloscorner = 
        {
           "Flautas." 
        },
        flautas2 = 
        {
            "Flauta Vic"
        },
        personal = 
        {
           "Botella\nAgua 1,5L" 
        },
        ---------------
        panelmenus = 
        {
            "Menu\nNormal",
            "Menu\nPromo\ncionado",
            "Menu2"
        },
        menunormal = 
        {
            "Combo\nTendes\nEns. Verde",
            "M.\nDesayuno\nBolleria",
            "Menú\nBurger LC"
        },
        menupromoncionado = 
        {
            "Bikini\nInfa+",
            "Buñuelos\n+\nChocolate",
            "C. Coca\nSantJoan\n+Cafe",
            "Café\nGratis\nUniqio",
            "fe+boll+zum",
            "Ch\nHotDrink",
            "Churros +\nchoco",
            "Croissant\n+ Café",
            "Infantil\nger+refres",
            "Ko\nHotDrink",
            "Menú\nAperitiu\n2pax",
            "Menú\nMontaditos\nSnack-tar",
            "Menú\nRelax",
            "Menú\nTapas\nCompartir",
            "Merienda\nDulce",
            "Refresh\nVoucher",
            "Staff\nComida",
            "STAFF\nCOMIDA 2",
            "Staff\nDesayuno\nBolleria",
            "menupro\nmocionado2"
        },
        menupromoncionado2 = 
        {
            "menupro\nmocionado1",
            "Staff\nDesayuno\nFlautin",
            "Staff\nDesayuno\nIbérico",
            "Tulipa +\ncafe",
            "Voucher\nDrink",
            "Voucher\nTreballador\nLRV",
        },
        menu2 = 
        {
            "BOLLERIA\nPREMIUM\n+ CAFE",
            "FUDGE\nCAKE +\nLATTE",
            "IBÉRIC +\nCAFÉ",
            "Menú\nFlautin\nIbérico",
        },
    },
    currentState = "startmenu",
    producto =  {},
    productostodos = {
        "Carpaccio\nRoastbeef",--
        "ENS\nCABRA\nPERAS",--
        "ENS\nCESAR\nBACON",--
        "Ensalada\nAtún\nTomate",--
        "Ensalada\nQuinoa FB",--
        "Ensalada\nTomate\nBurrata",--
        "Falutín\nAtún",--
        "Flautín\nIbérico",--
        "Flautín\nTortilla",--
        "Lay's\ngourmet",--
        "Tarta\nFudge\nChoco",--
        "Tarta\nManzana\nSuprema",--
        "Tarta\nQueso",--
        "Tarta\nZanaho\nAmerica",--
        "Big\nTulipa\nDark",-- 
        "Big\nTulipa\nWhite",-- 
        "BRETZEL\nCHOCOLAT", --
        "Brownie", --
        "Churros\n3\nun",-- 
        "Churros\n5u", --
        "Cinamon\nRoll",-- 
        "Croissant", --
        "CRUJIENTE\nMANZANA",-- 
        "Dot\nchoco", --
        "Dots", --
        "Ensaimada",-- 
        "Madalena\nsingluten\n2u",-- 
        "Madalenta\nsingluten\nchoco",--
        "PASTEL\nDE NATA",--
        "Snecken",--
        "Trio Pop\nDots\n(CONCS)",--
        "Tulipa\nÁrandanos",--
        "Napolitana\nChocolate",--
        "Trenza\nChocolate",--
        "Croissant\nRelleno\nFramb.",--
        "Botellin\nTonica",--
        "Smoothie\nFresa\nXL",--
        "Smoothie\nMango\nXL", --
        "Agua 0,50l",--
        "Batido\nChoco\nIbee",
        "Agua San\nPeregrino\n05l",--
        "Zumo Narj\nNat 20cl",--
        "Batido\nChoco\nIbee",--
        "Komvida\nKombucha\nBerry",--
        "Komvida\nKombucha\nGinger",--
        "Pepsi\nGrande",--
        "Pepsi Max\nGrande",--
        "Kas\nNaranja\nGrande",--
        "Kas\nLimon\nGrande",--
        "Lipton\nGrande",--
        "7UP Free\nGrande",--
        "Pet\nAquarade\nLimon",--
        "Pet\nAquarade\nNaranja",--
        "Milkshake\nFresa XL",--
        "Milkshake\nMango XL",--
        "Café",
        "Café\nAmericano",
        "Café\ndescaf.",
        "Café\nleche\ndescaf.",
        "Café\nLeche\nMedium",
        "Cortado",
        "Cortado\ndescaf.",
        "Cappuccino\nMedium",
        "Carajillo",
        "Chocolate\nMediano",
        "INFUSION\nESSENTIAL\nROOIBO",
        "TE\nMARRAKEC",
        "Guacamole\nPan\nPolar", 
        "Hummus\nsticks\nVerduras",
        "Ensalada\nMacedonia",
        "Helado\nCheese\nFrambuesa",
        "Helado\nChoco\nBrownie",
        "Helado\nVainilla\nCookies",
        "Pancake\nHalloween\nFB",
        "Yogurt\nMuesli",
        "Swing",
        "BURGER\nbeyond\nMEAT",
        "Burger\nCh.\nTrufado\nHalal",
        "Burger\nCh.\nTrufad",
        "BURGER\nPULLED\nPORK",
        "Hamb.\nPremium\nHalal",
        "Hamburguesa\nPatatas",
        "Hamburguesa\nPremium",
        "Muslo\nBrasa\nBurger",
        "CopaAnis\nCastellana",
        "Torres-5",
        "Ginebra ",
        "Ron ",
        "Vermut\nBlanco",
        "VERMUT\nYZAGUIRRE\nROJO",
        "Vodka ",
        "Baileys",
        "Cardhu 12",
        "WHISKY",
        "Copa\nLicor\nHierbas",
        "COMBINADO\nALCOHOL",
        "Cava",
        "BOT\nPALACIO\nBORNOS",
        "BOTELLA\nALABARIÑO\nFEFINAN",
        "COPA\nALABARIÑO\nFEFINANE",
        "COPA\nPALACIO\nBOTNOS",
        "BOTELLA\nLA VIELLE\nFERME",
        "COPA LA\nVIELLE\nFERME",
        "COPA\nVIÑA",
        "BOTELLA\nARIENZO\nM RISCAL",
        "COPA\nARIENZO\nM RISCAL",
        "Copa vino\nceleste",
        "Vino\nCeleste",
        "Olivas",
        "PATATA\nASADA\nSALSA",
        "TAPA\nHUMMUS",
        "TAPA\nIBÉRICO",
        "TAPA\nIBÉRICO +\nQUESO",
        "TAPA\nQUESO",
        "TAPA\nTORTILLA\nPATATAS",
        "Nachos\nCrema\nQueso",
        "Buñuelos",
        "Chips",
        "Bot Free\nDamm",
        "Botella\nCarlsberg",
        "Botella\nEstrella\nDamm",
        "Botella\nVoll Damm",
        "Tirador\nDammLemon\n33",
        "Tirador\nestrella\ndamm 33c",
        "Tirador\nVollDamm\n33",
        "Cerveza\nEstrella\nDamm50cl",
        "Tirador\nDammLemon\n50",
        "Tirador\nVollDamm\n50",
        "1/2 Tender\nPatata",
        "Tender\nPatata\nAsada",
        "Pollo\nBrasa\nPatatas",
        "Extra\nbacon",
        "Bagel\nSalmón",
        "Bagel\nVegetal",
        "Bikini",
        "BIKINI\nTRUFADO\nFB",
        "Bocadillo\nJamón\nIbérico",
        "Sand.\nClub",
        "SW\nPOLLO\nTRUFA",
        "Tortilla",
        "TOSTA\nIBÉRICA",
        "TOSTA\nSALMÓN",
        "British\nBacon",
        "Bacon\nQueso\nS/G",
        "Pollo\nQueso\nS/G",
        "Tortilla\nVegan S/G",
        "Bikini\nInfa+",
        "Menú\nTapas\nCompartir",
        "Staff\nComida",
        "STAFF\nCOMIDA 2",
        "Staff\nDesayuno\nBolleria",
        "Staff\nDesayuno\nFlautin",
        "Staff\nDesayuno\nIbérico",
    },
}
return Data
