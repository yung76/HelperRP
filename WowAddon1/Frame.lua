-- Author      : Marcos Andres
-- Create Date : 4/21/2020 9:57:22 AM

--habilita los panales de los enemigos segun la cantidad que se ingrese
function Button1_OnClick()
	--print("HOLA"..cantidad_enemigo:GetText())
	if cantidad_enemigo:GetText() == "1" then
		contenedor_enemigo_1:Show()
		--nombre_enemigo1:SetText("Enemigo 1")
		cantidad_vida_enemigo1:SetText(vida_enemigos:GetText())
	elseif cantidad_enemigo:GetText() == "2" then
		contenedor_enemigo_1:Show()
		--nombre_enemigo1:SetText("Enemigo 1")
		cantidad_vida_enemigo1:SetText(vida_enemigos:GetText())
		contenedor_enemigo_2:Show()
		--nombre_enemigo2:SetText("Enemigo 2")
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
	--cantidad_vida_enemigo2:SetText(vida_enemigos:GetText())
	--cantidad_vida_enemigo3:SetText(vida_enemigos:GetText())
	--cantidad_vida_enemigo4:SetText(vida_enemigos:GetText())
	--cantidad_vida_enemigo5:SetText(vida_enemigos:GetText())
	if es_jefe:GetChecked() then
	 print("Es JEFAZO")
	end
	--contenedor_enemigo_1:Show()
	--contenedor_enemigo_2:Show()
	--contenedor_enemigo_3:Show()
	--contenedor_enemigo_4:Show()
	--contenedor_enemigo_5:Show()
end

--Esta funcion hace la gracias de lanzar el dado llamala donde quieras lanzar un dado
function lanzar_dado(num)
	return math.random(1,num)
end

--botones de lanzar dados de cada enemigo
function btn_lanzar_dado1_OnClick()
	--print("1 Lanz? dados y saco ="..lanzar_dado(num_dado1:GetText()))
	SendChatMessage(nombre_enemigo1:GetText().." 1 Lanzo dados y obtuvo "..lanzar_dado(num_dado1:GetText()), "RAID_WARNING")
end
function btn_lanzar_dado2_OnClick()
	--print("2 Lanz? dados y saco ="..lanzar_dado(num_dado2:GetText()))
	SendChatMessage(nombre_enemigo2:GetText().." 2 Lanzo dados y obtuvo "..lanzar_dado(num_dado1:GetText()), "RAID_WARNING")
end

function btn_lanzar_dado3_OnClick()
	--print("3 Lanz? dados y saco ="..lanzar_dado(num_dado3:GetText()))
	SendChatMessage(nombre_enemigo3:GetText().." 3 Lanzo dados y obtuvo "..lanzar_dado(num_dado1:GetText()), "RAID_WARNING")
end

function btn_lanzar_dado4_OnClick()
	--print("4 Lanz? dados y saco ="..lanzar_dado(num_dado4:GetText()))
	SendChatMessage(nombre_enemigo4:GetText().." 4 Lanzo dados y obtuvo "..lanzar_dado(num_dado1:GetText()), "RAID_WARNING")
end

function btn_lanzar_dados5_OnClick()
	--print("5 Lanz? dados y saco ="..lanzar_dado(num_dado5:GetText()))
	SendChatMessage(nombre_enemigo5:GetText().." 5 Lanzo dados y obtuvo "..lanzar_dado(num_dado1:GetText()), "RAID_WARNING")
end


function cerrar_principal_OnClick()
	principal:Hide()
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

function contenedor_enemigo_12_OnLoad()
	
	nombre_enemigo2:SetText("Enemigo 2")
	nombre_enemigo3:SetText("Enemigo 3")
	nombre_enemigo4:SetText("Enemigo 4")
	nombre_enemigo5:SetText("Enemigo 5")
end

--publica el estado de todos los enemigos activos 
function publicar_OnClick()
	print("PRINT")
	if contenedor_enemigo_1:IsVisible() and contenedor_enemigo_2:IsVisible() and
		contenedor_enemigo_3:IsVisible() and contenedor_enemigo_4:IsVisible() and
		contenedor_enemigo_5:IsVisible() then 
		--print("NOMBRE= "..nombre_enemigo1:GetText().." "..cantidad_vida_enemigo1:GetText()..
			--	"NOMBRE= "..nombre_enemigo2:GetText().." "..cantidad_vida_enemigo2:GetText()..
				--"NOMBRE= "..nombre_enemigo3:GetText().." "..cantidad_vida_enemigo3:GetText()..
				--"NOMBRE= "..nombre_enemigo4:GetText().." "..cantidad_vida_enemigo4:GetText()..
				--"NOMBRE= "..nombre_enemigo5:GetText().." "..cantidad_vida_enemigo5:GetText())
		SendChatMessage("Recuento total= "..nombre_enemigo1:GetText().." "..cantidad_vida_enemigo1:GetText()..
					" "..nombre_enemigo2:GetText().." "..cantidad_vida_enemigo2:GetText()..
					" "..nombre_enemigo3:GetText().." "..cantidad_vida_enemigo3:GetText()..
					" "..nombre_enemigo4:GetText().." "..cantidad_vida_enemigo4:GetText()..
					" "..nombre_enemigo5:GetText().." "..cantidad_vida_enemigo5:GetText(), "RAID_WARNING")
		--print("HOLAS55555")
	elseif contenedor_enemigo_1:IsVisible() and contenedor_enemigo_2:IsVisible()  and 
			contenedor_enemigo_3:IsVisible() and contenedor_enemigo_4:IsVisible() then
			
			SendChatMessage("Estado total enemigos= "..nombre_enemigo1:GetText().." "..cantidad_vida_enemigo1:GetText()..
					" "..nombre_enemigo2:GetText().." "..cantidad_vida_enemigo2:GetText()..
					" "..nombre_enemigo3:GetText().." "..cantidad_vida_enemigo3:GetText()..
					" "..nombre_enemigo4:GetText().." "..cantidad_vida_enemigo4:GetText(), "RAID_WARNING")
		
		--print("HOLAS444")
	elseif contenedor_enemigo_1:IsVisible() and contenedor_enemigo_2:IsVisible() and 
			contenedor_enemigo_3:IsVisible() then 
			SendChatMessage("Estado total enemigos= "..nombre_enemigo1:GetText().." "..cantidad_vida_enemigo1:GetText()..
					" "..nombre_enemigo2:GetText().." "..cantidad_vida_enemigo2:GetText()..
					" "..nombre_enemigo3:GetText().." "..cantidad_vida_enemigo3:GetText(), "RAID_WARNING")
		--print("HOLA333")
	elseif contenedor_enemigo_1:IsVisible() and contenedor_enemigo_2:IsVisible()then
		SendChatMessage("Estado total enemigos= "..nombre_enemigo1:GetText().." "..cantidad_vida_enemigo1:GetText()..
					" "..nombre_enemigo2:GetText().." "..cantidad_vida_enemigo2:GetText(), "RAID_WARNING")
		--print("HOLA222")
	else
		print("No hay nada que mostrar")
	end

end

function btn_publicar1_OnClick()
	--print("NOMBRE= "..nombre_enemigo1:GetText().." "..cantidad_vida_enemigo1:GetText())
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
