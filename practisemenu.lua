local PractiseMenu = {}
PractiseMenu.__index = PractiseMenu

local Data = require("data")
local image1 = love.graphics.newImage("handtpv.png")
local image2 = love.graphics.newImage("handtpv2.png")
local imageScale = 0.60
local imageScale2x = 1.55
local imageScale2y = 1.19
local font = love.graphics.newFont(22)
local font2 = love.graphics.newFont(30)
local font3 = love.graphics.newFont(20)
local lastParamUsed1 = nil
local lastParamUsed2 = nil
local pista = false
local productosEncontrados = 0;

local function obtenerProductoAleatorio()
    local productos = Data.productostodos
    local indiceAleatorio = math.random(1, #productos)
    return productos[indiceAleatorio]
end
math.randomseed(os.time())
Data.producto = obtenerProductoAleatorio()
local botonesPorProducto = {
    ["Carpaccio"] = {"Familiar","panel1", "panel22", "Ensa\nladas", "Carpaccio\nRoastbeef"}, 
    ["Ensalada de queso de cabra"] = {"Familiar","panel1","panel22", "Ensa\nladas", "ENS\nCABRA\nPERAS"},
    ["Ensalada césar"] = {"Familiar","panel1","panel22", "Ensa\nladas", "ENS\nCESAR\nBACON"},
    ["Ensalada de atún y tomate"] = {"Familiar","panel1", "panel22","Ensa\nladas", "Ensalada\nAtún\nTomate"},
    ["Ensalada de quinoa"] = {"Familiar","panel1","panel22", "Ensa\nladas", "Ensalada\nQuinoa FB"},
    ["Ensalada de tomate burrata"] = {"Familiar","panel1","panel22", "Ensa\nladas", "Ensalada\nTomate\nBurrata"},
    ["Falutín de atún"] = {"Familiar","panel1","panel22", "Flautas", "Falutín\nAtún"},
    ["Flautín ibérico"] = {"Familiar","panel1","panel22", "Flautas", "Flautín\nIbérico"},
    ["Flautín de tortilla"] = {"Familiar","panel1","panel22", "Flautas", "Flautín\nTortilla"},
    ["Bolsa de patatas Lay's"] = {"Familiar","panel1","panel22", "Snacks", "Lay's\ngourmet"},
    ["Tarta de chocolate"] = {"Familiar","panel1", "panel22","Tartas", "Tarta\nFudge\nChoco"},
    ["Tarta de manzana"] = {"Familiar","panel1", "panel22", "Tartas", "Tarta\nManzana\nSuprema"},
    ["Tarta de queso"] = {"Familiar","panel1", "panel22","Tartas", "Tarta\nQueso"},
    ["Tarta de zanahoria"] = {"Familiar","panel1","panel22", "Tartas", "Tarta\nZanaho\nAmerica"},
    ["Big Tulipa Dark (madalena)"] = {"Familiar","panel1","panel22", "Bolleria", "bolleria1","Big\nTulipa\nDark"},
    ["Big Tulipa White (madalena)"] = {"Familiar","panel1","panel22", "Bolleria","bolleria1", "Big\nTulipa\nWhite"},
    ["Bretzel de Chocolate"] = {"Familiar","panel1","panel22", "Bolleria","bolleria1", "BRETZEL\nCHOCOLAT"},
    ["Brownie"] = {"Familiar","panel1", "Bolleria","bolleria1","panel22", "Brownie"},
    ["3 churros"] = {"Familiar","panel1", "Bolleria","bolleria1","panel22", "Churros\n3\nun"},
    ["5 churros"] = {"Familiar","panel1", "Bolleria","bolleria1","panel22", "Churros\n5u"},
    ["Cinamon Roll"] = {"Familiar","panel1","panel22", "Bolleria","bolleria1", "Cinamon\nRoll"},
    ["Croissant"] = {"Familiar","panel1","panel22", "Bolleria","bolleria1", "Croissant"},
    ["Crujiente de manzana"] = {"Familiar","panel1","panel22", "Bolleria","bolleria1", "CRUJIENTE\nMANZANA"},
    ["Donut de chocolate"] = {"Familiar","panel1","panel22", "Bolleria","bolleria1", "Dot\nchoco"},
    ["Donut normal"] = {"Familiar","panel1","panel22", "Bolleria","bolleria1", "Dots"},
    ["Ensaimada"] = {"Familiar","panel1","panel22", "Bolleria","bolleria1", "Ensaimada"},
    ["PASTEL\nDE NATA"] = {"Familiar","panel1","panel22", "Bolleria", "bolleria2", "PASTEL\nDE NATA"},
    ["Snecken"] = {"Familiar","panel1","panel22", "Bolleria", "bolleria2", "Snecken"},
    ["Trio Pop Dots"] = {"Familiar","panel1", "panel22","Bolleria", "bolleria2", "Trio Pop\nDots\n(CONCS)"},
    ["Tulipa de árandanos"] = {"Familiar","panel1","panel22", "Bolleria", "bolleria2", "Tulipa\nÁrandanos"},
    ["Napolitana de chocolate"] = {"Familiar","panel1","panel22", "Bolleria","bolleria1", "Resto", "Napolitana\nChocolate"},
    ["Trenza de chocolate"] = {"Familiar","panel1","panel22", "Bolleria","bolleria1", "Resto", "Trenza\nChocolate"},
    ["Croissant de frambuesa"] = {"Familiar","panel1","panel22", "Bolleria","bolleria1","Croissants", "Croissant\nRelleno\nFramb."},
    ["Pack de 2 madalenas sin gluten de chocolate"] = {"Familiar","panel1","panel22", "Bolleria","bolleria1", "Madalenta\nsingluten\nchoco"},
    ["Pack de 2 madalenas sin gluten"] = {"Familiar","panel1","panel22", "Bolleria","bolleria1", "Madalena\nsingluten\n2u"},
    ["Botellin de tónica"] = {"Familiar","panel1","panel22", "Beb\nFrias", "Botellin\nTonica"},
    ["Smoothie de fresa"] = {"Familiar","panel1","panel22", "Beb\nFrias", "Smoothie\nFresa\nXL"},
    ["Smoothie de mango"] = {"Familiar","panel1","panel22", "Beb\nFrias", "Smoothie\nMango\nXL"},
    ["Agua de 0,50l"] = {"Familiar","panel1","panel22", "Beb\nFrias", "Veri", "Agua 0,50l"},
    ["Agua con gas de 0,50l"] = {"Familiar","panel1","panel22", "Beb\nFrias", "Veri", "Agua San\nPeregrino\n05l"},
    ["Zumo de naranja natural de 20cl"] = {"Familiar","panel1","panel22", "Beb\nFrias", "ZumoNaranja", "Zumo Narj\nNat 20cl"},
    ["Batido de chocolate"] = {"Familiar","panel1","panel22", "Beb\nFrias", "Batidos", "Batido\nChoco\nIbee"},
    ["Kombucha Berry"] = {"Familiar","panel1","panel22", "Beb\nFrias", "Otras", "Komvida\nKombucha\nBerry"},
    ["Kombucha Ginger"] = {"Familiar","pafnel1","panel22", "Beb\nFrias", "Otras", "Komvida\nKombucha\nGinger"},
    ["Pepsi"] = {"Familiar","panel1","panel22", "Beb\nFrias", "Pepsi Cola", "Pepsi\nGrande"},
    ["Pepsi cero"] = {"Familiar","panel1","panel22", "Beb\nFrias", "Pepsi Max", "Pepsi Max\nGrande"},
    ["Kas de naranja"] = {"Familiar","panel1","panel22", "Beb\nFrias", "Kas\nNaranja", "Kas\nNaranja\nGrande"},
    ["Kas de limón"] = {"Familiar","panel1","panel22", "Beb\nFrias", "Kas Limon", "Kas\nLimon\nGrande"},
    ["Lipton"] = {"Familiar","panel1","panel22", "Beb\nFrias", "Lipton\nLimon", "Lipton\nGrande"},
    ["7UP Free"] = {"Familiar","panel1","panel22", "Beb\nFrias", "7Up", "7UP Free\nGrande"},
    ["Aquarade de limón"] = {"Familiar","panel1","panel22", "Beb\nFrias", "Aquarade", "Pet\nAquarade\nLimon"},
    ["Aquarade de naranja"] = {"Familiar","panel1","panel22", "Beb\nFrias", "Aquarade", "Pet\nAquarade\nNaranja"},
    ["Milkshake de fresa"] = {"Familiar","panel1","panel22", "Beb\nFrias", "Milkshakes", "Milkshake\nFresa XL"},
    ["Milkshake de mango"] = {"Familiar","panel1","panel22", "Beb\nFrias", "Milkshakes", "Milkshake\nMango XL"},
    ["Café solo"] = {"Familiar","panel1","panel22", "Beb\nCalient", "Cafés", "Café"},
    ["Café americano"] = {"Familiar","panel1","panel22", "Beb\nCalient", "Cafés", "Café\nAmericano"},
    ["Café solo descafeinado"] = {"Familiar","panel1","panel22", "Beb\nCalient", "Cafés", "Café\ndescaf."},
    ["Café con leche descafeinado"] = {"Familiar","panel1","panel22", "Beb\nCalient", "Cafés", "Café\nleche\ndescaf."},
    ["Café con leche"] = {"Familiar","panel1","panel22", "Beb\nCalient", "Cafés", "Café\nLeche\nMedium"},
    ["Cortado"] = {"Familiar","panel1","panel22", "Beb\nCalient", "Cafés", "Cortado"},
    ["Cortado descafeinado"] = {"Familiar","panel1","panel22", "Beb\nCalient", "Cafés", "Cortado\ndescaf."},
    ["Cappuccino"] = {"Familiar","panel1","panel22", "Beb\nCalient", "Capuccinos", "Cappuccino\nMedium"},
    ["Carajillo"] = {"Familiar","panel1","panel22", "Beb\nCalient", "Capuccinos", "Carajillo"},
    ["Chocolate mediano"] = {"Familiar","panel1","panel22", "Beb\nCalient", "Capuccinos", "Chocolate\nMediano"},
    ["Infusion Rooibos"] = {"Familiar","panel1","panel22", "Beb\nCalient", "Tes", "INFUSION\nESSENTIAL\nROOIBO"},
    ["Te Marrakec"] = {"Familiar","panel1","panel22", "Beb\nCalient","Tes", "TE\nMARRAKEC"},
    ["Guacamole con pan polar"] = {"Familiar","panel1","panel22", "Comple", "Guacamole\nPan\nPolar"},
    ["Hummus con sticks de verduras"] = {"Familiar","panel1","panel22", "Comple", "Hummus\nsticks\nVerduras"},
    ["Ensalada macedonia"] = {"Familiar","panel1","panel22", "Postres", "Ensalada\nMacedonia"},
    ["Helado de queso y frambuesa"] = {"Familiar","panel1","panel22", "Postres", "Helado\nCheese\nFrambuesa"},
    ["Helado de chocolate y brownie"] = {"Familiar","panel1","panel22", "Postres", "Helado\nChoco\nBrownie"},
    ["Helado de vainilla y galleta"] = {"Familiar","panel1","panel22", "Postres", "Helado\nVainilla\nCookies"},
    ["Pack de 3 Pancakes"] = {"Familiar","panel1","panel22", "Postres", "Pancake\nHalloween\nFB"},
    ["Yogurt muesli"] = {"Familiar","panel1", "panel22","Postres", "Yogurt\nMuesli"},
    ["Swing"] = {"Familiar","panel1","panel22", "Postres", "Helados", "Swing"},
    ["Hamburguesa vegana"] = {"Familiar","panel2","panel22", "Hambur.", "BURGER\nbeyond\nMEAT"},
    ["Hamburguesa de champiñones halal"] = {"Familiar","panel2","panel22", "Hambur.", "Burger\nCh.\nTrufado\nHalal"},
    ["Hamburguesa de champiñones"] = {"Familiar","panel2","panel22", "Hambur.", "Burger\nCh.\nTrufad"},
    ["Hamburguesa pulled porc (de cerdo)"] = {"Familiar","panel2","panel22", "Hambur.", "BURGER\nPULLED\nPORK"},
    ["Hamburguesa premium halal"] = {"Familiar","panel2","panel22", "Hambur.", "Hamb.\nPremium\nHalal"},
    ["Hamburguesa al plato con patatas"] = {"Familiar","panel2","panel22", "Hambur.", "Hamburguesa\nPatatas"},
    ["Hamburguesa premium"] = {"Familiar","panel2","panel22", "Hambur.", "Hamburguesa\nPremium"},
    ["Muslo de pollo al plato con patatas"] = {"Familiar","panel2","panel22", "Hambur.", "Muslo\nBrasa\nBurger"},
    ["Copa de Anis Castellana"] = {"Familiar","panel2","panel22", "Beb\nAlcohol", "Anis", "CopaAnis\nCastellana"},
    ["Copa de Torres-5"] = {"Familiar","panel2","panel22", "Beb\nAlcohol", "Brandy -\nCoñac", "Torres-5"},
    ["Copa de Ginebra"] = {"Familiar","panel2","panel22", "Beb\nAlcohol", "Ginebra", "Ginebra "},
    ["Copa de Ron"] = {"Familiar","panel2","panel22", "Beb\nAlcohol", "Ron", "Ron "},
    ["Copa de Vermut Blanco"] = {"Familiar","panel2","panel22", "Beb\nAlcohol", "Vermouth", "Vermut\nBlanco"},
    ["Copa de Vermut Rojo"] = {"Familiar","panel2","panel22", "Vermouth", "Beb\nAlcohol", "VERMUT\nYZAGUIRRE\nROJO"},
    ["Copa de Vodka"] = {"Familiar","panel2","panel22", "Beb\nAlcohol", "Vodka", "Vodka "},
    ["Copa de Baileys"] = {"Familiar","panel2","panel22", "Beb\nAlcohol", "Whisky", "Baileys"},
    ["Copa de Cardhu 12"] = {"Familiar","panel2", "panel22","Beb\nAlcohol", "Whisky", "Cardhu 12"},
    ["Copa de Whisky!"] = {"Familiar","panel2", "panel22","Beb\nAlcohol", "Whisky", "WHISKY"},
    ["Copa de licor de hiervas"] = {"Familiar","panel2","panel22", "Beb\nAlcohol", "Licores", "Copa\nLicor\nHierbas"},
    ["Combinado de alchol"] = {"Familiar","panel2","panel22", "Beb\nAlcohol", "COMBINADO\nALCOHOL"},
    ["Cava"] = {"Familiar","panel2","panel22", "vinos y\nCavas", "Cavas", "Cava"},
    ["Botella de Palacio de Bornos"] = {"Familiar","panel2","panel22", "vinos y\nCavas", "Vinos\nBlancos", "BOT\nPALACIO\nBORNOS"},
    ["Botella de Albariño Fefian"] = {"Familiar","panel2","panel22", "vinos y\nCavas", "Vinos\nBlancos", "BOTELLA\nALABARIÑO\nFEFINAN"},
    ["Copa de Albariño Fefian"] = {"Familiar","panel2","panel22", "vinos y\nCavas", "Vinos\nBlancos", "COPA\nALABARIÑO\nFEFINANE"},
    ["Copa de Palacio Botnos"] = {"Familiar","panel2","panel22", "vinos y\nCavas", "Vinos\nBlancos", "COPA\nPALACIO\nBOTNOS"},
    ["Botella de la Vielle Ferme"] = {"Familiar","panel2","panel22", "vinos y\nCavas", "Vinos\nRosados", "BOTELLA\nLA VIELLE\nFERME"},
    ["Copa de la Vielle Ferme"] = {"Familiar","panel2", "panel22","vinos y\nCavas", "Vinos\nRosados", "COPA LA\nVIELLE\nFERME"},
    ["Copa de Viña"] = {"Familiar","panel2","panel22", "vinos y\nCavas", "Vinos\nRosados", "COPA\nVIÑA"},
    ["Botella de Arienzo M.Riscal"] = {"Familiar","panel2","panel22", "vinos y\nCavas", "Vinos\nTintos", "BOTELLA\nARIENZO\nM RISCAL"},
    ["Copa de Arienzo M.Riscal"] = {"Familiar","panel2","panel22", "vinos y\nCavas", "Vinos\nTintos", "COPA\nARIENZO\nM RISCAL"},
    ["Copa de Vino Celeste"] = {"Familiar","panel2","panel22", "vinos y\nCavas", "Vinos\nTintos", "Copa vino\nceleste"},
    ["Botella de Vino Celeste"] = {"Familiar","panel2","panel22", "vinos y\nCavas", "Vinos\nTintos", "Vino\nCeleste"},
    ["Olivas"] = {"Familiar","panel2","panel22", "Tapas", "Olivas"},
    ["Patatas asadas (bravas)"] = {"Familiar","panel2","panel22", "Tapas", "PATATA\nASADA\nSALSA"},
    ["Tapa de hummus"] = {"Familiar","panel2","panel22", "Tapas", "TAPA\nHUMMUS"},
    ["Tapa de jamón ibérico"] = {"Familiar","panel2","panel22", "Tapas", "TAPA\nIBÉRICO"},
    ["Tapa de jamón ibérico y queso"] = {"Familiar","panel2","panel22", "Tapas", "TAPA\nIBÉRICO +\nQUESO"},
    ["Tapa de queso"] = {"Familiar","panel2","panel22", "Tapas", "TAPA\nQUESO"},
    ["Tapa de tortilla de patata"] = {"Familiar","panel2","panel22", "Tapas", "TAPA\nTORTILLA\nPATATAS"},
    ["Nachos con crema de queso"] = {"Familiar","panel2","panel22", "RACION", "Nachos\nCrema\nQueso"},
    ["Buñuelos"] = {"Familiar","panel2","panel22", "Obsole\ntos", "Buñuelos"},
    ["Bol de chips"] = {"Familiar","panel2","panel22", "Obsole\ntos", "Chips"},
    ["Cerveza sin alchol"] = {"Familiar","panel3", "panel2", "Cervezas", "Botella", "Bot Free\nDamm"},
    ["Botella Carlsberg"] = {"Familiar","panel3","panel2", "Cervezas", "Botella", "Botella\nCarlsberg"},
    ["Botella Estrella Damm"] = {"Familiar","panel3","panel2", "Cervezas", "Botella", "Botella\nEstrella\nDamm"},
    ["Botella Voll Damm"] = {"Familiar","panel3","panel2", "Cervezas", "Botella", "Botella\nVoll Damm"},
    ["Tirador DammLemon 33"] = {"Familiar","panel3","panel2", "Cervezas", "Tirador\n33cl", "Tirador\nDammLemon\n33"},
    ["Tirador estrella damm 33c"] = {"Familiar","panel3","panel2", "Cervezas", "Tirador\n33cl", "Tirador\nestrella\ndamm 33c"},
    ["Tirador VollDamm 33"] = {"Familiar","panel3","panel2", "Cervezas", "Tirador\n33cl", "Tirador\nVollDamm\n33"},
    ["Cerveza Estrella Damm 50cl"] = {"Familiar","panel3","panel2", "Cervezas", "Tirador\n50cl", "Cerveza\nEstrella\nDamm50cl"},
    ["Tirador DammLemon 50"] = {"Familiar","panel3","panel2", "Cervezas", "Tirador\n50cl", "Tirador\nDammLemon\n50"},
    ["Tirador VollDamm 50"] = {"Familiar","panel3","panel2", "Cervezas", "Tirador\n50cl", "Tirador\nVollDamm\n50"},
    ["1/2 Tender Patata"] = {"Familiar","panel3","panel2", "Costillas", "1/2 Tender\nPatata"},
    ["Tender Patata Asada"] = {"Familiar","panel3","panel2", "Costillas","TENDER", "Tender\nPatata\nAsada"},
    ["Pollo Brasa Patatas"] = {"Familiar","panel3","panel2", "Princi\npales", "Pollo\nBrasa\nPatatas"},
    ["Extra bacon"] = {"Familiar","panel3","panel2", "Extra", "Extra\nbacon"},
    ["Bagel de salmón"] = {"Familiar","panel3","panel2", "Sand\nwich", "Bagel\nSalmón"},
    ["Bagel vegetal"] = {"Familiar","panel3","panel2", "Sand\nwich", "Bagel\nVegetal"},
    ["Bikini"] = {"Familiar","panel3","panel2", "Sand\nwich", "Bikini"},
    ["Bikini trufado"] ={"Familiar","panel3","panel2", "Sand\nwich", "BIKINI\nTRUFADO\nFB"},
    ["Bocadillo de jamón ibérico"] = {"Familiar","panel3","panel2", "Sand\nwich", "Bocadillo\nJamón\nIbérico"},
    ["Sandwich Club"] = {"Familiar","panel3","panel2", "Sand\nwich", "Sand.\nClub"},
    ["Sandwich de pollo y trufa"] = {"Familiar","panel3","panel2", "Sand\nwich", "SW\nPOLLO\nTRUFA"},
    ["Bocadillo de tortilla"] = {"Familiar","panel3","panel2", "Boca\ndillos", "Tortilla"},
    ["Tostada de jamón ibérico"] = {"Familiar","panel3","panel2", "Boca\ndillos", "TOSTA\nIBÉRICA"},
    ["Tostada de salón"] = {"Familiar","panel3","panel2", "Boca\ndillos", "TOSTA\nSALMÓN"},
    ["Bocadillo de bacon i queso"] = {"Familiar","panel3","panel2", "Boca\ndillos","Clásicos", "British\nBacon"},
    ["Bocadillo de bacon i queso sin gluten"] = {"Familiar","panel3","panel2", "Boca\ndillos", "Celiacos", "Bacon\nQueso\nS/G"},
    ["Bocadillo de pollo i queso sin gluten"] = {"Familiar", "panel3","panel2", "Boca\ndillos", "Celiacos", "Pollo\nQueso\nS/G"},
    ["Bocadillo de tortilla sin gluten"] = {"Familiar", "panel3","panel2", "Boca\ndillos", "Celiacos", "Tortilla\nVegan S/G"},
    ["Menú bikini infantil"] = {"Menús", "Menu\nPromo\ncionado", "Bikini\nInfa+"},
    ["Menú de tapas para compartir"] = {"Menús", "Menu\nPromo\ncionado", "Menú\nTapas\nCompartir"},
    ["Menú Staff Comida"] = {"Menús", "Menu\nPromo\ncionado","menupro\nmocionado1", "Staff\nComida"},
    ["Menú Staff Comida 2"] = {"Menús", "Menu\nPromo\ncionado","menupro\nmocionado1", "STAFF\nCOMIDA 2"},
    ["Menu Staff Desayuno Bolleria"] = {"Menús", "Menu\nPromo\ncionado","menupro\nmocionado1", "Staff\nDesayuno\nBolleria"},
    ["Menú Staff Desayuno Flautin"] = {"Menús", "Menu\nPromo\ncionado","menupro\nmocionado2", "Staff\nDesayuno\nFlautin"},
    ["Menú Staff Desayuno Ibérico"] = {"Menús", "Menu\nPromo\ncionado","menupro\nmocionado2", "Staff\nDesayuno\nIbérico"},
    }
local textolista2verde = {
    "Resto",
    "Croissants",
    "Batidos",
    "Otras",
    "Milkshakes",
    "Infusiones",
    "Helados",
    "Anis",
    "Brandy -\nCoñac",
    "Ginebra",
    "Ron",
    "Vermouth",
    "Vodka",
    "Whisky",
    "Licores",
    "Cavas",
    "Vinos\nBlancos",
    "Vinos\nRosados",
    "Vinos\nTintos",
    "Botella",
    "Lata",
    "Tirador\n33cl",
    "Tirador\n50cl",
    "TENDER",
    "Clásicos",
    "Celiacos",
    "Café Pans",
    "Flautas",
    "Veri",
    "ZumoNaranja",
    "Pepsi Cola",
    "Pepsi\nLight",
    "Pepsi Max",
    "Kas\nNaranja",
    "Kas Limon",
    "Lipton\nLimon",
    "7Up",
    "Aquarade",
    "Cafés",
    "Capuccinos",
    "Tes"
}
local mapeoNombres = {
    ["Carpaccio\nRoastbeef"] = "Carpaccio", 
    ["ENS\nCABRA\nPERAS"] = "Ensalada de queso de cabra",
    ["ENS\nCESAR\nBACON"] = "Ensalada césar",
    ["Ensalada\nAtún\nTomate"] = "Ensalada de atún y tomate",
    ["Ensalada\nQuinoa FB"] = "Ensalada de quinoa",
    ["Ensalada\nTomate\nBurrata"] = "Ensalada de tomate burrata",
    ["Falutín\nAtún"] = "Falutín de atún",
    ["Flautín\nIbérico"] = "Flautín ibérico",
    ["Flautín\nTortilla"] = "Flautín de tortilla",
    ["Lay's\ngourmet"] = "Bolsa de patatas Lay's",
    ["Tarta\nFudge\nChoco"] = "Tarta de chocolate",
    ["Tarta\nManzana\nSuprema"] = "Tarta de manzana",
    ["Tarta\nQueso"] = "Tarta de queso",
    ["Tarta\nZanaho\nAmerica"] = "Tarta de zanahoria",
    ["Big\nTulipa\nDark"] = "Big Tulipa White (madalena)",
    ["Big\nTulipa\nWhite"] = "Big Tulipa White (madalena)",
    ["BRETZEL\nCHOCOLAT"] = "Bretzel de Chocolate",
    ["Brownie"] = "Brownie",
    ["Churros\n3\nun"] = "3 churros",
    ["Churros\n5u"] = "5 churros",
    ["Cinamon\nRoll"] = "Cinamon Roll",
    ["Croissant"] = "Croissant",
    ["CRUJIENTE\nMANZANA"] = "Crujiente de manzana",
    ["Dot\nchoco"] = "Donut de chocolate",
    ["Dots"] = "Donut normal",
    ["Ensaimada"] = "Ensaimada",
    ["Madalena\nsingluten\n2u"] = "Pack de 2 madalenas sin gluten",
    ["Madalenta\nsingluten\nchoco"] = "Pack de 2 madalenas sin gluten de chocolate",
    ["PASTEL\nDE NATA"] = "Pastel de nata",
    ["Snecken"] = "Snecken",
    ["Trio Pop\nDots\n(CONCS)"] = "Trio Pop Dots",
    ["Tulipa\nÁrandanos"] = "Tulipa de árandanos",
    ["Napolitana\nChocolate"] = "Napolitana de chocolate",
    ["Trenza\nChocolate"] = "Trenza de chocolate",
    ["Croissant\nRelleno\nFramb."] = "Croissant de frambuesa",
    ["Botellin\nTonica"] = "Botellin de tónica",
    ["Smoothie\nFresa\nXL"] = "Smoothie de fresa",
    ["Smoothie\nMango\nXL"] = "Smoothie de mango",
    ["Agua 0,50l"] = "Agua de 0,50l",
    ["Agua San\nPeregrino\n05l"] = "Agua con gas de 0,50l",
    ["Zumo Narj\nNat 20cl"] = "Zumo de naranja natural de 20cl",
    ["Batido\nChoco\nIbee"] = "Batido de chocolate",
    ["Komvida\nKombucha\nBerry"] = "Kombucha Berry",
    ["Komvida\nKombucha\nGinger"] = "Kombucha Ginger",
    ["Pepsi\nGrande"] = "Pepsi",
    ["Pepsi Max\nGrande"] = "Pepsi cero",
    ["Kas\nNaranja\nGrande"] = "Kas de naranja",
    ["Kas\nLimon\nGrande"] = "Kas de limón",
    ["Lipton\nGrande"] = "Lipton",
    ["7UP Free\nGrande"] = "7UP Free",
    ["Pet\nAquarade\nLimon"] = "Aquarade de limón",
    ["Pet\nAquarade\nNaranja"] = "Aquarade de naranja",
    ["Milkshake\nFresa XL"] = "Milkshake de fresa",
    ["Milkshake\nMango XL"] = "Milkshake de mango",
    ["Café"] = "Café solo",
    ["Café\nAmericano"] = "Café americano",
    ["Café\ndescaf."] = "Café solo descafeinado",
    ["Café\nleche\ndescaf."] = "Café con leche descafeinado",
    ["Café\nLeche\nMedium"] = "Café con leche",
    ["Cortado"] = "Cortado",
    ["Cortado\ndescaf."] = "Cortado descafeinado",
    ["Cappuccino\nMedium"] = "Cappuccino",
    ["Carajillo"] = "Carajillo",
    ["Chocolate\nMediano"] = "Chocolate mediano",
    ["INFUSION\nESSENTIAL\nROOIBO"] = "Infusion Rooibos",
    ["TE\nMARRAKEC"] = "Te Marrakec",
    ["Guacamole\nPan\nPolar"] = "Guacamole con pan polar",
    ["Hummus\nsticks\nVerduras"] = "Hummus con sticks de verduras",
    ["Ensalada\nMacedonia"] = "Ensalada macedonia",
    ["Helado\nCheese\nFrambuesa"] = "Helado de queso y frambuesa",
    ["Helado\nChoco\nBrownie"] = "Helado de chocolate y brownie",
    ["Helado\nVainilla\nCookies"] = "Helado de vainilla y galleta",
    ["Pancake\nHalloween\nFB"] = "Pack de 3 Pancakes",
    ["Yogurt\nMuesli"] = "Yogurt muesli",
    ["Swing"] = "Helado de máquina",
    ["BURGER\nbeyond\nMEAT"] = "Hamburguesa vegana",
    ["Burger\nCh.\nTrufado\nHalal"] = "Hamburguesa de champiñones halal",
    ["Burger\nCh.\nTrufad"] = "Hamburguesa de champiñones",
    ["BURGER\nPULLED\nPORK"] = "Hamburguesa pulled porc (de cerdo)",
    ["Hamb.\nPremium\nHalal"] = "Hamburguesa premium halal",
    ["Hamburguesa\nPatatas"] = "Hamburguesa al plato con patatas",
    ["Hamburguesa\nPremium"] = "Hamburguesa premium",
    ["Muslo\nBrasa\nBurger"] = "Muslo de pollo al plato con patatas",
    ["CopaAnis\nCastellana"] = "Copa de Anis Castellana",
    ["Torres-5"] = "Copa de Torres-5",
    ["Ginebra "] = "Copa de Ginebra",
    ["Ron "] = "Copa de Ron",
    ["Vermut\nBlanco"] = "Copa de Vermut Blanco",
    ["VERMUT\nYZAGUIRRE\nROJO"] = "Copa de Vermut Rojo",
    ["Vodka "] = "Copa de Vodka",
    ["Baileys"] = "Copa de Baileys",
    ["Cardhu 12"] = "Copa de Cardhu 12",
    ["WHISKY"] = "Copa de Whisky!",
    ["Copa\nLicor\nHierbas"] = "Copa de licor de hiervas",
    ["COMBINADO\nALCOHOL"] = "Combinado de alchol",
    ["Cava"] = "Cava Codorniu",
    ["BOT\nPALACIO\nBORNOS"] = "Botella de Palacio de Bornos",
    ["BOTELLA\nALABARIÑO\nFEFINAN"] = "Botella de Albariño Fefian",
    ["COPA\nALABARIÑO\nFEFINANE"] = "Copa de Albariño Fefian",
    ["COPA\nPALACIO\nBOTNOS"] = "Copa de Palacio Botnos",
    ["BOTELLA\nLA VIELLE\nFERME"] = "Botella de la Vielle Ferme",
    ["COPA LA\nVIELLE\nFERME"] = "Copa de la Vielle Ferme",
    ["COPA\nVIÑA"] = "Copa de Viña",
    ["BOTELLA\nARIENZO\nM RISCAL"] = "Botella de Arienzo M.Riscal",
    ["COPA\nARIENZO\nM RISCAL"] = "Copa de Arienzo M.Riscal",
    ["Copa vino\nceleste"] = "Copa de Vino Celeste",
    ["Vino\nCeleste"] = "Botella de Vino Celeste",
    ["Olivas"] = "Olivas",
    ["PATATA\nASADA\nSALSA"] = "Patatas asadas (bravas)",
    ["TAPA\nHUMMUS"] = "Tapa de hummus",
    ["TAPA\nIBÉRICO"] = "Tapa de jamón ibérico",
    ["TAPA\nIBÉRICO +\nQUESO"] = "Tapa de jamón ibérico y queso",
    ["TAPA\nQUESO"] = "Tapa de queso",
    ["TAPA\nTORTILLA\nPATATAS"] = "Tapa de tortilla de patata",
    ["Nachos\nCrema\nQueso"] = "Nachos con crema de queso",
    ["Buñuelos"] = "Buñuelos",
    ["Chips"] = "Bol de chips",
    ["Bot Free\nDamm"] = "Cerveza sin alchol",
    ["Botella\nCarlsberg"] = "Botella Carlsberg",
    ["Botella\nEstrella\nDamm"] = "Botella Estrella Damm",
    ["Botella\nVoll Damm"] = "Botella Voll Damm",
    ["Tirador\nDammLemon\n33"] = "Tirador DammLemon 33",
    ["Tirador\nestrella\ndamm 33c"] = "Tirador estrella damm 33c",
    ["Tirador\nVollDamm\n33"] = "Tirador VollDamm 33",
    ["Cerveza\nEstrella\nDamm50cl"] = "Cerveza Estrella Damm 50cl",
    ["Tirador\nDammLemon\n50"] = "Tirador DammLemon 50",
    ["Tirador\nVollDamm\n50"] = "Tirador VollDamm 50",
    ["1/2 Tender\nPatata"] = "1/2 Tender Patata",
    ["Tender\nPatata\nAsada"] = "Tender Patata Asada",
    ["Pollo\nBrasa\nPatatas"] = "Pollo Brasa Patatas",
    ["Extra\nbacon"] = "Extra bacon",
    ["Bagel\nSalmón"] = "Bagel de salmón",
    ["Bagel\nVegetal"] = "Bagel vegetal",
    ["Bikini"] = "Bikini",
    ["BIKINI\nTRUFADO\nFB"] = "Bikini trufado",
    ["Bocadillo\nJamón\nIbérico"] = "Bocadillo de jamón ibérico",
    ["Sand.\nClub"] = "Sandwich Club",
    ["SW\nPOLLO\nTRUFA"] = "Sandwich de pollo y trufa",
    ["Tortilla"] = "Bocadillo de tortilla",
    ["TOSTA\nIBÉRICA"] = "Tostada de jamón ibérico",
    ["TOSTA\nSALMÓN"] = "Tostada de salón",
    ["British\nBacon"] = "Bocadillo de bacon i queso",
    ["Bacon\nQueso\nS/G"] = "Bocadillo de bacon i queso sin gluten",
    ["Pollo\nQueso\nS/G"] = "Bocadillo de pollo i queso sin gluten",
    ["Tortilla\nVegan S/G"] = "Bocadillo de tortilla sin gluten",
    ["Bikini\nInfa+"] = "Menú bikini infantil",
    ["Menú\nTapas\nCompartir"] = "Menú de tapas para compartir",
    ["Staff\nComida"] = "Menú Staff Comida",
    ["STAFF\nCOMIDA 2"] = "Menú Staff Comida 2",
    ["Staff\nDesayuno\nBolleria"] = "Menu Staff Desayuno Bolleria",
    ["Staff\nDesayuno\nFlautin"] = "Menú Staff Desayuno Flautin",
    ["Staff\nDesayuno\nIbérico"] = "Menú Staff Desayuno Ibérico"
    }
local function obtenerNombreMostrado(producto)
    if mapeoNombres[producto] then
        return mapeoNombres[producto]
    else
        return producto
    end
end
local nombreMostrado = obtenerNombreMostrado(Data.producto)
local listaMapping = {
    empty = {},
    panel1 = Data.listas.panel1,
    ensaladas = Data.listas.ensaladas,
    sopas = Data.listas.sopas,
    flautas = Data.listas.flautas,
    snacks = Data.listas.snacks,
    pan = Data.listas.pan,
    tartas = Data.listas.tartas,
    bolleria = Data.listas.bolleria,
    bolleria1 = Data.listas.bolleria,
    bolleria2 = Data.listas.bolleria2,
    resto = Data.listas.resto,
    croissants = Data.listas.croissants,
    bebfrias = Data.listas.bebfrias,
    veri = Data.listas.veri,
    zumoNaranja = Data.listas.zumoNaranja,
    batidos = Data.listas.batidos,
    otras = Data.listas.otras,
    pepsiCola = Data.listas.pepsiCola,
    pepsiLigh = Data.listas.pepsiLigh,
    pepsiMax = Data.listas.pepsiMax,
    kasNaranja = Data.listas.kasNaranja,
    kasLimon = Data.listas.kasLimon,
    liptonLimon = Data.listas.liptonLimon,
    sevenUp = Data.listas.sevenUp,
    aquarade = Data.listas.aquarade,
    milkshakes = Data.listas.milkshakes,
    bebcalient = Data.listas.bebcalient,
    cafes = Data.listas.cafes,
    capuccinos = Data.listas.capuccinos,
    tes = Data.listas.tes,
    infusiones = Data.listas.infusiones,
    comple = Data.listas.comple,
    postres = Data.listas.postres,
    helados = Data.listas.helados,
    panel2 = Data.listas.panel2,
    panel22 = Data.listas.panel2,
    hambur = Data.listas.hambur,
    otros = Data.listas.otros,
    merchandising = Data.listas.merchandising,
    sumplementos = Data.listas.sumplementos,
    menu = Data.listas.menu,
    bebAlcohol = Data.listas.bebAlcohol,
    anis = Data.listas.anis,
    brandy = Data.listas.brandy,
    ginebra = Data.listas.ginebra,
    ron = Data.listas.ron,
    vermouth = Data.listas.vermouth,
    vodka = Data.listas.vodka,
    whisky = Data.listas.whisky,
    licores = Data.listas.licores,
    vinosyCavas = Data.listas.vinosycavas,
    cavas = Data.listas.cavas,
    vinosblancos = Data.listas.vinosblancos,
    vinosrosados = Data.listas.vinosrosados,
    vinostintos = Data.listas.vinostintos,
    tapas = Data.listas.tapas,
    racion = Data.listas.racion,
    obsoletos = Data.listas.obsoletos,
    panel3 = Data.listas.panel3,
    cervezas = Data.listas.cervezas,
    botella = Data.listas.botella,
    lata = Data.listas.lata,
    tirador33cl = Data.listas.tirador33cl,
    tirador50cl = Data.listas.tirador50cl,
    carnes = Data.listas.carnes,
    costillas = Data.listas.costillas,
    tender = Data.listas.tender,
    principales = Data.listas.principales,
    extra = Data.listas.extra,
    sandwich = Data.listas.sandwich,
    bocadillos = Data.listas.bocadillos,
    clasicos = Data.listas.clasicos,
    celiacos = Data.listas.celiacos,
    cocktails = Data.listas.cocktails,
    extras = Data.listas.extras,
    cafepans = Data.listas.cafepans,
    bocadillosCorner = Data.listas.bocadilloscorner,
    flautas2 = Data.listas.flautas2,
    personal = Data.listas.personal,
    panelmenus = Data.listas.panelmenus,
    menunormal = Data.listas.menunormal,
    menupromocionado = Data.listas.menupromoncionado,
    menupromocionado1 = Data.listas.menupromoncionado,
    menu2 = Data.listas.menu2,
    menupromocionado2 = Data.listas.menupromoncionado2
}
function PractiseMenu.new()
    local self = setmetatable({}, PractiseMenu)
    self:updateButtons("panel1", "empty")
    return self
end
function PractiseMenu:update()
    if productosEncontrados == 10 then
        Data.currentState = "startmenu"
    end
end
function PractiseMenu:updateButtons(listaKey1, listaKey2)
    lastParamUsed1 = listaKey1
    lastParamUsed2 = listaKey2
    self.buttons = {}
    local lista1 = listaMapping[listaKey1]
    local lista2 = listaMapping[listaKey2]
    for i, elemento in ipairs(lista1) do
        local fila = math.floor((i - 1) / 6)
        local columna = (i - 1) % 6
        self.buttons[#self.buttons + 1] = {texto = elemento, x = 50 + columna * 140, y = 700 + fila * 140, w = 140, h = 140, lista = "lista1"}
    end
    for i, elemento in ipairs(lista2) do
        local fila = math.floor((i - 1) / 5)
        local columna = (i - 1) % 5
        local indice = #lista1 + i
        self.buttons[indice] = {texto = elemento, x = 50 + columna * 168, y = 50 + fila * 150, w = 168, h = 150, lista = "lista2"}
    end
    self.buttons[#self.buttons + 1] = {texto = "Resolver", x = 1300, y = 780, w = 150, h = 150, lista = "extra"}
    self.buttons[#self.buttons + 1] = {texto = "Pasar\n producto", x = 1450, y = 780, w = 150, h = 150, lista = "extra"}
    self.buttons[#self.buttons + 1] = {texto = "Salir", x = 1600, y = 780, w = 150, h = 150, lista = "extra"}
    self.buttons[#self.buttons + 1] = {texto = "Menús", x = 950, y = 700, w = 140, h = 140, lista = "extra"}
    self.buttons[#self.buttons + 1] = {texto = "Familiar", x = 950, y = 840, w = 140, h = 140, lista = "extra"}
end
function PractiseMenu:draw()
    for i, v in ipairs(self.buttons) do
        if v.lista == "lista1" then
            love.graphics.setColor(0, 0, 0.7)
            love.graphics.rectangle("fill", v.x, v.y, v.w, v.h)
            love.graphics.setColor(0.8, 0.8, 0.8)
            love.graphics.rectangle("line", v.x, v.y, v.w, v.h)
        elseif v.lista == "lista2" then
            love.graphics.setColor(0.3, 0.3, 0.3)
            love.graphics.rectangle("fill", v.x, v.y, v.w, v.h)
            love.graphics.setColor(0.8, 0.8, 0.8)
            love.graphics.rectangle("line", v.x, v.y, v.w, v.h)
            for j, textoVerde in ipairs(textolista2verde) do
                if v.texto == textoVerde then
                    love.graphics.setColor(0, 0.7, 0)
                    love.graphics.rectangle("fill", v.x, v.y, v.w, v.h)
                    love.graphics.setColor(0.8, 0.8, 0.8)
                    love.graphics.rectangle("line", v.x, v.y, v.w, v.h)
                    break
                end
            end       
        elseif v.lista == "extra" then
            if v.texto == "Resolver" and pista then
                love.graphics.setColor(0.7, 0.7, 0)
                love.graphics.rectangle("fill", v.x, v.y, v.w, v.h)
                love.graphics.setColor(0.8, 0.8, 0.8)
                love.graphics.rectangle("line", v.x, v.y, v.w, v.h)
            else
                love.graphics.setColor(0.8, 0.8, 0.8)
                love.graphics.rectangle("line", v.x, v.y, v.w, v.h)
            end
            if v.texto == "Menús" or v.texto == "Familiar" then
                love.graphics.setColor(0.7, 0.4, 0)
                love.graphics.rectangle("fill", v.x, v.y, v.w, v.h)
                love.graphics.setColor(0.8, 0.8, 0.8)
                love.graphics.rectangle("line", v.x, v.y, v.w, v.h)
            end
        else 
            love.graphics.setColor(0.8, 0.8, 0.8)
            love.graphics.rectangle("line", v.x, v.y, v.w, v.h)
        end
        for producto, botones in pairs(botonesPorProducto) do
            if pista and nombreMostrado == producto then
                for _, boton in ipairs(botones) do
                    if v.texto == boton then
                        love.graphics.setColor(0.7, 0.7, 0)
                        love.graphics.rectangle("fill", v.x, v.y, v.w, v.h)
                        love.graphics.setColor(0.8, 0.8, 0.8)
                        love.graphics.rectangle("line", v.x, v.y, v.w, v.h)
                    end
                end
            end
        end
        love.graphics.setFont(font)
        love.graphics.setColor(0.8, 0.8, 0.8) 
        if v.texto == "panel2" or v.texto == "panel3" or v.texto == "panel1" or v.texto == "panel22" then
            local font2 = love.graphics.newFont(1)
            love.graphics.setFont(font2)
            love.graphics.setColor(0, 0, 0.7)
        elseif v.texto == "bolleria2" or v.texto == "bolleria1" or v.texto == "menupro\nmocionado2" or v.texto == "menupro\nmocionado1" then
            local font2 = love.graphics.newFont(1)
            love.graphics.setFont(font2)
            love.graphics.setColor(0.3, 0.3, 0.3)
        end
        love.graphics.printf(v.texto, (v.x - 10) + 1, (v.y + 25) + 1, v.w, "center")
        love.graphics.printf(v.texto, v.x - 10, v.y + 25, v.w, "center")
        if v.texto == "panel2" or v.texto == "panel3" or v.texto == "menupro\nmocionado2" or v.texto =="bolleria2"then
            love.graphics.draw(image1, v.x+10, v.y, 0, imageScale, imageScale)
        elseif v.texto == "panel1" or v.texto == "panel22" or v.texto == "bolleria1" or v.texto == "menupro\nmocionado1" then
            love.graphics.draw(image2, v.x+10, v.y, 0, imageScale, imageScale)
        end
    end
    love.graphics.setFont(font2)
    love.graphics.print(nombreMostrado, 1200, 480)
    love.graphics.setLineWidth(10)
    love.graphics.line(1120, 200, 1900, 200)
    love.graphics.line(1120, 350, 1900, 350)
    love.graphics.line(45, 675, 1900, 675)
    love.graphics.line(920, 45, 920, 987)
    love.graphics.line(1120, 45, 1120, 987)
    love.graphics.setFont(font)
    love.graphics.print("productos encontrados:", 1150, 220)
    love.graphics.print("producto a encontrar:", 1150, 370)
    love.graphics.print("funciones:", 1150, 700)
    love.graphics.setFont(font2)
    love.graphics.print(productosEncontrados, 1550, 260)
    love.graphics.setFont(font3)
    love.graphics.setColor(0.3, 0.3, 0.3)
end
function PractiseMenu:mousepressed(x, y, b, s)
    if b == 1 then
        local buttonActions = {
            ["panel1"] = { lista = "panel1", action = lastParamUsed2 },
            ["Ensa\nladas"] = { lista = lastParamUsed1, action = "ensaladas" },
            ["Sopas"] = { lista = lastParamUsed1, action = "sopas" },
            ["Flautas"] = { lista = lastParamUsed1, action = "flautas" },
            ["Snacks"] = { lista = lastParamUsed1, action = "snacks" },
            ["Pan"] = { lista = lastParamUsed1, action = "pan" },
            ["Tartas"] = { lista = lastParamUsed1, action = "tartas" },
            ["Bolleria"] = { lista = lastParamUsed1, action = "bolleria" },
            ["bolleria1"] = { lista = lastParamUsed1, action = "bolleria" },
            ["bolleria2"] = { lista = lastParamUsed1, action = "bolleria2" },
            ["Resto"] = { lista = lastParamUsed1, action = "resto" },
            ["Croissants"] = { lista = lastParamUsed1, action = "croissants" },
            ["Beb\nFrias"] = { lista = lastParamUsed1, action = "bebfrias" },
            ["Veri"] = { lista = lastParamUsed1, action = "veri" },
            ["ZumoNaranja"] = { lista = lastParamUsed1, action = "zumoNaranja" },
            ["Batidos"] = { lista = lastParamUsed1, action = "batidos" },
            ["Otras"] = { lista = lastParamUsed1, action = "otras" },
            ["Pepsi Cola"] = { lista = lastParamUsed1, action = "pepsiCola" },
            ["Pepsi\nLigh"] = { lista = lastParamUsed1, action = "pepsiLigh" },
            ["Pepsi Max"] = { lista = lastParamUsed1, action = "pepsiMax"},
            ["Kas\nNaranja"] = { lista = lastParamUsed1, action = "kasNaranja" },
            ["Kas Limon"] = { lista = lastParamUsed1, action = "kasLimon" },
            ["Lipton\nLimon"] = { lista = lastParamUsed1, action = "liptonLimon" },
            ["7Up"] = { lista = lastParamUsed1, action = "sevenUp" },
            ["Aquarade"] = { lista = lastParamUsed1, action = "aquarade" },
            ["Milkshakes"] = { lista = lastParamUsed1, action = "milkshakes" },
            ["Beb\nCalient"] = { lista = lastParamUsed1, action = "bebcalient" },
            ["Cafés"] = { lista = lastParamUsed1, action = "cafes" },
            ["Capuccinos"] = { lista = lastParamUsed1, action = "capuccinos" },
            ["Tes"] = { lista = lastParamUsed1, action = "tes" },
            ["Infusiones"] = { lista = lastParamUsed1, action = "infusiones" },
            ["Comple"] = { lista = lastParamUsed1, action = "comple" },
            ["Postres"] = { lista = lastParamUsed1, action = "postres" },
            ["Helados"] = { lista = lastParamUsed1, action = "helados" },
            ["panel2"] = { lista = "panel2", action = lastParamUsed2 },
            ["panel22"] = { lista = "panel2", action = lastParamUsed2 },
            ["Hambur."] = { lista = lastParamUsed1, action = "hambur" },
            ["Otros"] = { lista = lastParamUsed1, action = "otros" },
            ["Merchan\ndising"] = { lista = lastParamUsed1, action = "merchandising" },
            ["Sumple\nmentos"] = { lista = lastParamUsed1, action = "sumplementos" },
            ["Menu"] = { lista = lastParamUsed1, action = "menu" },
            ["Beb\nAlcohol"] = { lista = lastParamUsed1, action = "bebAlcohol" },
            ["Anis"] = { lista = lastParamUsed1, action = "anis" },
            ["Brandy -\nCoñac"] = { lista = lastParamUsed1, action = "brandy" },
            ["Ginebra"] = { lista = lastParamUsed1, action = "ginebra" },
            ["Ron"] = { lista = lastParamUsed1, action = "ron" },
            ["Vermouth"] = { lista = lastParamUsed1, action = "vermouth" },
            ["Vodka"] = { lista = lastParamUsed1, action = "vodka" },
            ["Whisky"] = { lista = lastParamUsed1, action = "whisky" },
            ["Licores"] = { lista = lastParamUsed1, action = "licores" },
            ["vinos y\nCavas"] = { lista = lastParamUsed1, action = "vinosyCavas" },
            ["Cavas"] = { lista = lastParamUsed1, action = "cavas" },
            ["Vinos\nBlancos"] = { lista = lastParamUsed1, action = "vinosblancos" },
            ["Vinos\nRosados"] = { lista = lastParamUsed1, action = "vinosrosados" },
            ["Vinos\nTintos"] = { lista = lastParamUsed1, action = "vinostintos" },
            ["Tapas"] = { lista = lastParamUsed1, action = "tapas" },
            ["RACION"] = { lista = lastParamUsed1, action = "racion" },
            ["Obsole\ntos"] = { lista = lastParamUsed1, action = "obsoletos" },
            ["panel3"] = { lista = "panel3", action = lastParamUsed2 },
            ["Cervezas"] = { lista = lastParamUsed1, action = "cervezas" },
            ["Botella"] = { lista = lastParamUsed1, action = "botella" },
            ["Lata"] = { lista = lastParamUsed1, action = "lata" },
            ["Tirador\n33cl"] = { lista = lastParamUsed1, action = "tirador33cl" },
            ["Tirador\n50cl"] = { lista = lastParamUsed1, action = "tirador50cl" },
            ["Carnes."] = { lista = lastParamUsed1, action = "carnes" },
            ["Costillas"] = { lista = lastParamUsed1, action = "costillas" },
            ["TENDER"] = { lista = lastParamUsed1, action = "tender" },
            ["Princi\npales"] = { lista = lastParamUsed1, action = "principales" },
            ["Extra"] = { lista = lastParamUsed1, action = "extra" },
            ["Sand\nwich"] = { lista = lastParamUsed1, action = "sandwich" },
            ["Boca\ndillos"] = { lista = lastParamUsed1, action = "bocadillos" },
            ["Clásicos"] = { lista = lastParamUsed1, action = "clasicos" },
            ["Celiacos"] = { lista = lastParamUsed1, action = "celiacos" },
            ["Cocktails"] = { lista = lastParamUsed1, action = "cocktails" },
            ["Extras"] = { lista = lastParamUsed1, action = "extras" },
            ["Cafe Pans"] = { lista = lastParamUsed1, action = "cafepans" },
            ["Bocadillos\nCorner"] = { lista = lastParamUsed1, action = "bocadillosCorner" },
            ["flautas2"] = { lista = lastParamUsed1, action = "flautas2" },
            ["Personal"] = { lista = lastParamUsed1, action = "personal" },
            ["Menús"] = { lista = "panelmenus", action = lastParamUsed2 },
            ["Menu\nNormal"] = { lista = lastParamUsed1, action = "menunormal" },
            ["Menu\nPromo\ncionado"] = { lista = lastParamUsed1, action = "menupromocionado" },
            ["menupro\nmocionado1"] = { lista = lastParamUsed1, action = "menupromocionado" },
            ["Menu2"] = { lista = lastParamUsed1, action = "menu2" },
            ["menupro\nmocionado2"] = { lista = lastParamUsed1, action = "menupromocionado2" },
            ["Familiar"] = {lista = "panel1", action = "empty"}
        }
        for _, v in ipairs(self.buttons) do
            if x > v.x and x < v.x + v.w and y > v.y and y < v.y + v.h then
                local action = buttonActions[v.texto]
                if action then
                    if type(action.action) == "function" then
                        action.action()
                    elseif action.lista then
                        self:updateButtons(action.lista, action.action or v.texto)
                    end
                    break
                end
                if v.texto == Data.producto then
                    Data.producto = obtenerProductoAleatorio()
                    nombreMostrado = obtenerNombreMostrado(Data.producto)
                    productosEncontrados = productosEncontrados + 1
                    pista = false
                end
                if v.texto == "Pasar\n producto" then
                    Data.producto = obtenerProductoAleatorio()
                    nombreMostrado = obtenerNombreMostrado(Data.producto)
                    pista = false
                end
                if v.texto == "Salir" then
                    Data.currentState = "startmenu"
                    Data.producto = obtenerProductoAleatorio()
                    nombreMostrado = obtenerNombreMostrado(Data.producto)
                    productosEncontrados = 0
                end
                if v.texto == "Resolver" then
                    if pista then
                        pista = false
                    else 
                        pista = true
                    end
                end
            end
        end
    end
end
return PractiseMenu




