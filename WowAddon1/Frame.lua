-- Author      : Marcos Andres
-- Create Date : 4/21/2020 9:57:22 AM

--habilita los panales de los enemigos segun la cantidad que se ingrese
function Button1_OnClick()
	if cantidad_enemigo:GetText() == "1" then
		contenedor_enemigo_1:Show()
		cantidad_vida_enemigo1:SetText(vida_enemigos:GetText())
	elseif cantidad_enemigo:GetText() == "2" then
		contenedor_enemigo_1:Show()
		cantidad_vida_enemigo1:SetText(vida_enemigos:GetText())
		contenedor_enemigo_2:Show()
		cantidad_vida_enemigo2:SetText(vida_enemigos:GetText())
	elseif cantidad_enemigo:GetText() == "3" then
		contenedor_enemigo_1:Show()
		cantidad_vida_enemigo1:SetText(vida_enemigos:GetText())
		contenedor_enemigo_2:Show()
		cantidad_vida_enemigo2:SetText(vida_enemigos:GetText())
		contenedor_enemigo_3:Show()
		cantidad_vida_enemigo3:SetText(vida_enemigos:GetText())
	elseif cantidad_enemigo:GetText() == "4" then
		contenedor_enemigo_1:Show()
		cantidad_vida_enemigo1:SetText(vida_enemigos:GetText())
		contenedor_enemigo_2:Show()
		cantidad_vida_enemigo2:SetText(vida_enemigos:GetText())
		contenedor_enemigo_3:Show()
		cantidad_vida_enemigo3:SetText(vida_enemigos:GetText())
		contenedor_enemigo_4:Show()
		cantidad_vida_enemigo4:SetText(vida_enemigos:GetText())
	elseif cantidad_enemigo:GetText() == "5" then
		contenedor_enemigo_1:Show()
		cantidad_vida_enemigo1:SetText(vida_enemigos:GetText())
		contenedor_enemigo_2:Show()
		cantidad_vida_enemigo2:SetText(vida_enemigos:GetText())
		contenedor_enemigo_3:Show()
		cantidad_vida_enemigo3:SetText(vida_enemigos:GetText())
		contenedor_enemigo_4:Show()
		cantidad_vida_enemigo4:SetText(vida_enemigos:GetText())
		contenedor_enemigo_5:Show()
		cantidad_vida_enemigo5:SetText(vida_enemigos:GetText())
	else
		print("Ingresa una cantidad correcta")
	end
	nombre_enemigo1:SetText("Enemigo 1")
	nombre_enemigo2:SetText("Enemigo 2")
	nombre_enemigo3:SetText("Enemigo 3")
	nombre_enemigo4:SetText("Enemigo 4")
	nombre_enemigo5:SetText("Enemigo 5")
	num_dado1:SetText(20)
	num_dado2:SetText(20)
	num_dado3:SetText(20)
	num_dado4:SetText(20)
	num_dado5:SetText(20)
	--Queda por hacer interfaz y logica para jefe
	
end

--Esta funcion hace la gracias de lanzar el dado llamala donde quieras lanzar un dado
function lanzar_dado(num)
	return math.random(1,num)
end

--botones de lanzar dados de cada enemigo
function btn_lanzar_dado1_OnClick()
	--SendChatMessage(nombre_enemigo1:GetText().." Lanzo dados y obtuvo "..lanzar_dado(num_dado1:GetText()).." (1-"..num_dado1:GetText()..")", "RAID_WARNING")
end

function btn_lanzar_dado2_OnClick()
	SendChatMessage(nombre_enemigo2:GetText().." Lanzo dados y obtuvo "..lanzar_dado(num_dado2:GetText()).." (1-"..num_dado2:GetText()..")", "RAID_WARNING")
end

function btn_lanzar_dado3_OnClick()
	SendChatMessage(nombre_enemigo3:GetText().." Lanzo dados y obtuvo "..lanzar_dado(num_dado3:GetText()).." (1-"..num_dado3:GetText()..")", "RAID_WARNING")
end

function btn_lanzar_dado4_OnClick()
	SendChatMessage(nombre_enemigo4:GetText().." Lanzo dados y obtuvo "..lanzar_dado(num_dado4:GetText()).." (1-"..num_dado4:GetText()..")", "RAID_WARNING")
end

function btn_lanzar_dados5_OnClick()
	SendChatMessage(nombre_enemigo5:GetText().." Lanzo dados y obtuvo "..lanzar_dado(num_dado5:GetText()).." (1-"..num_dado5:GetText()..")", "RAID_WARNING")
end


function cerrar_principal_OnClick()
	principal:Hide()
	panel_estado_jugadores:Hide()
	ListPlayers:SetText("")
end

function cerrar1_OnClick()
	contenedor_enemigo_1:Hide()
end

function cerrar2_OnClick()
	contenedor_enemigo_2:Hide()
end


function cerrar3_OnClick()
	contenedor_enemigo_3:Hide()
end

function cerrar4_OnClick()
	contenedor_enemigo_4:Hide()
end

function cerrar5_OnClick()
	contenedor_enemigo_5:Hide()
end

function limpiar_OnClick()
	contenedor_enemigo_1:Hide()
	contenedor_enemigo_2:Hide()
	contenedor_enemigo_3:Hide()
	contenedor_enemigo_4:Hide()
	contenedor_enemigo_5:Hide()
end

--publica el estado de todos los enemigos activos 
function publicar_OnClick()
	if contenedor_enemigo_1:IsVisible() and contenedor_enemigo_2:IsVisible() and
		contenedor_enemigo_3:IsVisible() and contenedor_enemigo_4:IsVisible() and
		contenedor_enemigo_5:IsVisible() then 

		SendChatMessage("Recuento total = "..nombre_enemigo1:GetText().." "..cantidad_vida_enemigo1:GetText()..
					" "..nombre_enemigo2:GetText().." "..cantidad_vida_enemigo2:GetText()..
					" "..nombre_enemigo3:GetText().." "..cantidad_vida_enemigo3:GetText()..
					" "..nombre_enemigo4:GetText().." "..cantidad_vida_enemigo4:GetText()..
					" "..nombre_enemigo5:GetText().." "..cantidad_vida_enemigo5:GetText(), "RAID_WARNING")

	elseif contenedor_enemigo_1:IsVisible() and contenedor_enemigo_2:IsVisible()  and 
			contenedor_enemigo_3:IsVisible() and contenedor_enemigo_4:IsVisible() then
			
			SendChatMessage("Estado total = "..nombre_enemigo1:GetText().." "..cantidad_vida_enemigo1:GetText()..
					" "..nombre_enemigo2:GetText().." "..cantidad_vida_enemigo2:GetText()..
					" "..nombre_enemigo3:GetText().." "..cantidad_vida_enemigo3:GetText()..
					" "..nombre_enemigo4:GetText().." "..cantidad_vida_enemigo4:GetText(), "RAID_WARNING")
		
	elseif contenedor_enemigo_1:IsVisible() and contenedor_enemigo_2:IsVisible() and 
			contenedor_enemigo_3:IsVisible() then 

			SendChatMessage("Estado total = "..nombre_enemigo1:GetText().." "..cantidad_vida_enemigo1:GetText()..
					" "..nombre_enemigo2:GetText().." "..cantidad_vida_enemigo2:GetText()..
					" "..nombre_enemigo3:GetText().." "..cantidad_vida_enemigo3:GetText(), "RAID_WARNING")

	elseif contenedor_enemigo_1:IsVisible() and contenedor_enemigo_2:IsVisible()then

		SendChatMessage("Estado total = "..nombre_enemigo1:GetText().." "..cantidad_vida_enemigo1:GetText()..
					" "..nombre_enemigo2:GetText().." "..cantidad_vida_enemigo2:GetText(), "RAID_WARNING")
	else
		print("No hay nada que mostrar")
	end

end

function btn_publicar1_OnClick()
	SendChatMessage("Estado del enemigo "..nombre_enemigo1:GetText().."  "..cantidad_vida_enemigo1:GetText(), "RAID_WARNING")
end

function btn_publicar2_OnClick()
	SendChatMessage("Estado del enemigo "..nombre_enemigo2:GetText().."  "..cantidad_vida_enemigo2:GetText(), "RAID_WARNING")
end

function btn_publicar3_OnClick()
	SendChatMessage("Estado del enemigo "..nombre_enemigo3:GetText().."  "..cantidad_vida_enemigo3:GetText(), "RAID_WARNING")
end

function btn_publicar4_OnClick()
	SendChatMessage("Estado del enemigo "..nombre_enemigo4:GetText().."  "..cantidad_vida_enemigo4:GetText(), "RAID_WARNING")
end

function btn_publicar5_OnClick()
	SendChatMessage("Estado del enemigo "..nombre_enemigo5:GetText().."  "..cantidad_vida_enemigo5:GetText(), "RAID_WARNING")
end

--Esta funcion hace la llamada a un metodo del juego que retorna el nombre de un jugador de la party segun el indice que se le entregue
function obtener_nombre_jugador(indice)
	return GetRaidRosterInfo(indice)
end

--dejo aqui la variable para que otras funciones en este archivo tengan acceso
local ListPlayers = CreateFrame("EditBox", "DoTrackerEditBoxSpells", menu)

--es un array con el nombre de los jugadores
lista_temp_jugadores = {}

-- este boton genera una lista en base a los miembros de la raid y les a?ade vida que es ingresada por el usuario
-- en el design es el boton generar lista
function Button2_OnClick()
			
	for i=1,40 do
	nombre_jugador = obtener_nombre_jugador(i)
		if nombre_jugador == null then
			break
		else
		--por hacer : quitar-nombre servidor 
			lista_temp_jugadores[i] = nombre_jugador.." "..vida_por_jugador:GetText().."\n"
		end
	end
	listado_temp = table.concat(lista_temp_jugadores," ")
	ListPlayers:SetText(listado_temp)
	
end

function panel_estado_jugadores_OnLoad()

	vida_por_jugador:SetText("3/3")
	ListPlayers:SetBackdrop({
		edgeSize = 14,
		insets = {left = 3, right = 3, top = 3, bottom = 3},
	})
	ListPlayers:SetMultiLine(true)
	ListPlayers:SetSize(180, 450)
	ListPlayers:SetPoint("TOPLEFT", 853, -40)
	ListPlayers:SetAutoFocus(false)
	ListPlayers:SetCursorPosition(0)
	ListPlayers:SetFont("Fonts\\FRIZQT__.TTF", 10)
	ListPlayers:SetJustifyH("LEFT")
	ListPlayers:SetJustifyV("CENTER")
end

function limpiar_lista_jugadores_OnClick()
	ListPlayers:SetText(" ")
end

function publicar_estado_jugadores_OnClick()
	lista_filtrada = string.gsub(ListPlayers:GetText(),"\n"," ")
	SendChatMessage("Recuento de vidas de los Jugadores = "..lista_filtrada, "RAID_WARNING")
end

function principal_OnLoad()
	print("asdasdasd")


	JoinTemporaryChannel("qwe",123, ChatFrame1:GetID());
	print("asdasdasd11111111111111")
end
	local frame=CreateFrame("frame");
	frame:RegisterEvent("CHAT_MSG_SAY");
	frame:SetScript("OnEvent",function(self,event,message,author)
		if event == "CHAT_MSG_SAY" and message:lower():match("hello") then
			SendChatMessage("hi","PARTY");
		end
	end);

function estado_jugadores_OnLoad()
	
end
