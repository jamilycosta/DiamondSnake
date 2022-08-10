
// Project: DiamondSnake 
// Created: 2022-06-04

/*
IMAGENS USADAS:
https://thelastcrystal.com/snake-animation-in-after-effects/
https://gartic.com.br/earthone/desenho-jogo/flecha
https://opengameart.org/content/2d-wooden-box
https://opengameart.org/content/steampunk-brick-old-connecting-tileset-16x16
https://opengameart.org/content/2d-bars
https://opengameart.org/content/animated-spinning-gems
https://www.gratispng.com/png-jkwhf0/
https://www.gratispng.com/png-iy6lpi/

ÁUDIOS USADOS:
https://freesfx.co.uk/Default.aspx
https://opengameart.org/content/loading-screen-loop
*/

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "DiamondSnake" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

// carreganando música de fundo
LoadMusic(1, "fundo.wav")
PlayMusic(1, 1)

// carrega efeitos sonoros
crashBlock = LoadSound("crashBox.wav")
captDiam = LoadSound("captDiam.wav")

// definindo as telas
CreateSprite(LoadImage("BackGround.png"))
telaPrincipal = (LoadImage("TelaPrincipal.png"))
telaContinue = (LoadImage("TelaContinue.png"))

// carregando imagens

// obstáculos
obstaculo1 = LoadImage("box.png")
obstaculo2 = LoadImage("box2.png")
obstaculo3 = LoadImage("block.png")
obstaculo4 = LoadImage("block2.png")
arrow1 = LoadImage("flecha1.png")
arrow2 = LoadImage("flecha2.png")
bar = LoadImage("bar.png")

// jogador
snake = LoadImage("Snake.png")

// diamantes
wd = LoadImage("WhiteDiamond.png") //5pts
bd = LoadImage("BlueDiamond.png") //10pts
yd = LoadImage("YellowDiamond.png") //15pts
gd = LoadImage("GreenDiamond.png") //20pts
pd = LoadImage("PurpleDiamond.png") //25pts
rd = LoadImage("RedDiamond.png") //30pts

// definindo sprites

//jogador
avatar = CreateSprite(snake)

// diamantes
white = CreateSprite(wd)
blue = CreateSprite(bd)
yellow = CreateSprite(yd)
green = CreateSprite(gd)
purple = CreateSprite(pd)
red = CreateSprite(rd)

// flechas
flecha1 = CreateSprite(arrow1)
flecha2 = CreateSprite(arrow2)

// barras
bar1 = CreateSprite(bar)
bar2 = CreateSprite(bar)
bar3 = CreateSprite(bar)
bar4 = CreateSprite(bar)

// esquerda
box1 = CreateSprite(obstaculo1)
box2 = CreateSprite(obstaculo1)
box3 = CreateSprite(obstaculo1)
box4 = CreateSprite(obstaculo1)
box5 = CreateSprite(obstaculo1)
box6 = CreateSprite(obstaculo1)

// direita
box7 = CreateSprite(obstaculo1)
box8 = CreateSprite(obstaculo1)
box9 = CreateSprite(obstaculo1)
box10 = CreateSprite(obstaculo1)
box11 = CreateSprite(obstaculo1)
box12 = CreateSprite(obstaculo1)

// cima
box13 = CreateSprite(obstaculo2)
box14 = CreateSprite(obstaculo2)
box15 = CreateSprite(obstaculo2)
box16 = CreateSprite(obstaculo2)
box17 = CreateSprite(obstaculo2)
box18 = CreateSprite(obstaculo2)
box19 = CreateSprite(obstaculo2)
box20 = CreateSprite(obstaculo2)

// baixo
box21 = CreateSprite(obstaculo2)
box22 = CreateSprite(obstaculo2)
box23 = CreateSprite(obstaculo2)
box24 = CreateSprite(obstaculo2)
box25 = CreateSprite(obstaculo2)
box26 = CreateSprite(obstaculo2)
box27 = CreateSprite(obstaculo2)
box28 = CreateSprite(obstaculo2)

// centro
block1 = CreateSprite(obstaculo3)
block2 = CreateSprite(obstaculo3)
block3 = CreateSprite(obstaculo3)
block4 = CreateSprite(obstaculo3)

block5 = CreateSprite(obstaculo3)
block6 = CreateSprite(obstaculo3)
block7 = CreateSprite(obstaculo3)
block8 = CreateSprite(obstaculo3)

block9 = CreateSprite(obstaculo4)

// placar
placar = LoadImage("Placar.png")
p = CreateSprite(placar)
SetSpritePosition(p, 7, 0)

// Telas
tP = CreateSprite(telaPrincipal)
tC = CreateSprite(telaContinue)

SetSpritePosition(tP, 0, 0)
SetSpritePosition(tC, 0, 0)

SetSpriteVisible(tP, 0)
SetSpriteVisible(tC, 0)

// definindo posicao das sprites

// jogador
SetSpritePosition(avatar, 10, 380)

// flechas
SetSpritePosition(flecha1, 850, 90)
SetSpritePosition(flecha2, 90, 634)

// barras
SetSpritePosition(bar1, 312, 288)
SetSpritePosition(bar2, 312, 384)
SetSpritePosition(bar3, 702, 288)
SetSpritePosition(bar4, 702, 384)

// esquerda
SetSpritePosition(box1, 0, 0)
SetSpritePosition(box2, 0, 96)
SetSpritePosition(box3, 0, 192)
SetSpritePosition(box4, 0, 480)
SetSpritePosition(box5, 0, 576)
SetSpritePosition(box6, 0, 672)

// direita
SetSpritePosition(box7, 956, 0)
SetSpritePosition(box8, 956, 96)
SetSpritePosition(box9, 956, 192)
SetSpritePosition(box10, 956, 480)
SetSpritePosition(box11, 956, 576)
SetSpritePosition(box12, 956, 672)

// cima
SetSpritePosition(box13, 68, 0)
SetSpritePosition(box14, 179, 0)
SetSpritePosition(box15, 290, 0)
SetSpritePosition(box16, 401, 0)
SetSpritePosition(box17, 512, 0)
SetSpritePosition(box18, 623, 0)
SetSpritePosition(box19, 734, 0)
SetSpritePosition(box20, 845, 0)

// baixo
SetSpritePosition(box21, 68, 700)
SetSpritePosition(box22, 179, 700)
SetSpritePosition(box23, 290, 700)
SetSpritePosition(box24, 401, 700)
SetSpritePosition(box25, 512, 700)
SetSpritePosition(box26, 623, 700)
SetSpritePosition(box27, 734, 700)
SetSpritePosition(box28, 845, 700)

//centro
SetSpritePosition(block1, 312, 220)
SetSpritePosition(block2, 412, 220)
SetSpritePosition(block3, 512, 220)
SetSpritePosition(block4, 612, 220)

SetSpritePosition(block5, 312, 480)
SetSpritePosition(block6, 412, 480)
SetSpritePosition(block7, 512, 480)
SetSpritePosition(block8, 612, 480)

SetSpritePosition(block9, 488, 360)

// Animação do avatar
SetSpriteColor(avatar, 0, 255, 100, 255)
SetSpriteAnimation(avatar, 92, 18.75, 8)
PlaySprite(avatar, 2, 1, 1, 8)

// adiciona formas de colisão
SetSpriteShape(avatar, 2)

SetSpriteShape(flecha1, 2)
SetSpriteShape(flecha2, 2)

SetSpriteShape(white, 1)
SetSpriteShape(blue, 1)
SetSpriteShape(yellow, 1)
SetSpriteShape(green, 1)
SetSpriteShape(purple, 1)
SetSpriteShape(red, 1)

SetSpriteShape(bar1, 2)
SetSpriteShape(bar2, 2)
SetSpriteShape(bar3, 2)
SetSpriteShape(bar4, 2)

SetSpriteShape(box1, 2)
SetSpriteShape(box2, 2)
SetSpriteShape(box3, 2)
SetSpriteShape(box4, 2)
SetSpriteShape(box5, 2)
SetSpriteShape(box6, 2)
SetSpriteShape(box7, 2)
SetSpriteShape(box8, 2)
SetSpriteShape(box9, 2)
SetSpriteShape(box10, 2)
SetSpriteShape(box11, 2)
SetSpriteShape(box12, 2)
SetSpriteShape(box13, 2)
SetSpriteShape(box14, 2)
SetSpriteShape(box15, 2)
SetSpriteShape(box16, 2)
SetSpriteShape(box17, 2)
SetSpriteShape(box18, 2)
SetSpriteShape(box19, 2)
SetSpriteShape(box20, 2)
SetSpriteShape(box21, 2)
SetSpriteShape(box22, 2)
SetSpriteShape(box23, 2)
SetSpriteShape(box24, 2)
SetSpriteShape(box25, 2)
SetSpriteShape(box26, 2)
SetSpriteShape(box27, 2)
SetSpriteShape(box28, 2)

SetSpriteShape(block1, 2)
SetSpriteShape(block2, 2)
SetSpriteShape(block3, 2)
SetSpriteShape(block4, 2)
SetSpriteShape(block5, 2)
SetSpriteShape(block6, 2)
SetSpriteShape(block7, 2)
SetSpriteShape(block8, 2)
SetSpriteShape(block9, 2)

// cria partículas
CreateImageColor(1, 255, 255, 255, 150)
CreateParticles(1, 0, 0)

// variáveis
maiorPont = 0
pontTot = 0
diamCapt = 0
dir = 3
mov = 0
aux = 0
i = 1
alter = 1
comecar = 0
x = 0
y = 0
v = 1
velAvat as float = 2
velObs as float = 0.5
velObs2 as float = 2

do
    // Print( ScreenFPS() )
    SetSpriteVisible(tP, v)
    
    if(GetRawKeyPressed(13) or GetRawKeyPressed(32))
		comecar=1
		v = 0
		SetSpriteVisible(tC, v)
		SetSpritePosition(white, Random(100, 920), Random(70, 180))
		SetSpritePosition(blue, Random(100, 920), Random(550, 670))
		SetSpritePosition(yellow, Random(100, 280), Random(220, 450))
		SetSpritePosition(green, Random(715, 920), Random(220, 450))
		SetSpritePosition(purple, Random(315, 475), Random(300, 320))
		SetSpritePosition(red, Random(315, 475), Random(430, 450))
		
		SetSpriteVisible(white, 1)
		SetSpriteVisible(blue, 1)
		SetSpriteVisible(yellow, 1)
		SetSpriteVisible(green, 1)
		SetSpriteVisible(purple, 1)
		SetSpriteVisible(red, 1)
	endif
    if(comecar = 1)
		// Mostra o placar
		PrintC("    ")
		PrintC("Pontuação Total: ")
		PrintC(pontTot)
		PrintC("      Diamantes Capturados: ")
		PrintC(diamCapt)
		PrintC("      Maior Pontuação: ")
		PrintC(maiorPont)
		SetPrintSpacing(2)
		SetPrintSize(23)
		
		// Controle do avatar
		if(dir = 1)
			mover(mov, avatar)
			mov = 0
			aux = 0
			SetSpriteAngle(avatar, 270)
			SetSpritePosition(avatar, GetSpriteX(avatar), GetSpriteY(avatar) - velAvat)
		elseif(dir = 2)
			mover(mov, avatar)
			mov = 0
			aux = 0
			SetSpriteAngle(avatar, 90)
			SetSpritePosition(avatar, GetSpriteX(avatar), GetSpriteY(avatar) + velAvat)
		elseif(dir = 3)
			mover(mov, avatar)
			mov = 0
			aux = 0
			SetSpriteAngle(avatar, 0)
			SetSpritePosition(avatar, GetSpriteX(avatar) + velAvat, GetSpriteY(avatar))
		elseif(dir = 4)
			mover(mov, avatar)
			mov = 0
			aux = 0
			SetSpriteAngle(avatar, 180)
			SetSpritePosition(avatar, GetSpriteX(avatar) - velAvat, GetSpriteY(avatar))
		endif

		if(GetRawKeyPressed(38) or GetRawKeyPressed(87)) //Cima ou W
			aux = dir
			dir = 1
		endif
		if(GetRawKeyPressed(40) or GetRawKeyPressed(83)) //Baixo ou S
			aux = dir
			dir = 2
		endif
		if(GetRawKeyPressed(39) or GetRawKeyPressed(68)) //Direita ou D
			aux = dir
			dir = 3
		endif
		if(GetRawKeyPressed(37) or GetRawKeyPressed(65)) //esquerda ou A
			aux = dir
			dir = 4
		endif
		
		if(GetSpriteX(avatar) > 1024)
			SetSpritePosition(avatar, -50, 380)
		endif
		
		if(GetSpriteX(avatar) < -50)
			SetSpritePosition(avatar, 1020, 380)
		endif
		
		if(aux = 3 AND dir = 1)
			mov = 1
		endif
		
		if(aux = 3 AND dir = 2)
			mov = 2
		endif
		
		if(aux = 4 AND dir = 1)
			mov = 3
		endif
		
		if(aux = 4 AND dir = 2)
			mov = 4
		endif
		
		if(aux = 1 AND dir = 3)
			mov = 5
		endif
		
		if(aux = 1 AND dir = 4)
			mov = 6
		endif
		
		if(aux = 2 AND dir = 3)
			mov = 7
		endif
		
		if(aux = 2 AND dir = 4)
			mov = 8
		endif
		
		// Controle das flechas
		SetSpritePosition(flecha1, GetSpriteX(flecha1) - velObs2, 90)
		SetSpritePosition(flecha2, GetSpriteX(flecha2) + velObs2, 634)
		
		if(GetSpriteX(flecha1) < 90)
			SetSpritePosition(flecha1, 850, 90)
		endif
		
		if(GetSpriteX(flecha2) > 850)
			SetSpritePosition(flecha2, 90, 634)
		endif
		
		// Controle das barras
		if(alter = 1)
			SetSpritePosition(bar1, 312, GetSpriteY(bar1) - velObs)
			SetSpritePosition(bar2, 312, GetSpriteY(bar2) + velObs)
			SetSpritePosition(bar3, 702, GetSpriteY(bar3) - velObs)
			SetSpritePosition(bar4, 702, GetSpriteY(bar4) + velObs)
			if(GetSpriteY(bar1) = 190)
				alter = 2
			endif
		endif
		if(alter = 2)
			SetSpritePosition(bar1, 312, GetSpriteY(bar1) + velObs)
			SetSpritePosition(bar2, 312, GetSpriteY(bar2) - velObs)
			SetSpritePosition(bar3, 702, GetSpriteY(bar3) + velObs)
			SetSpritePosition(bar4, 702, GetSpriteY(bar4) - velObs)
			if(GetSpriteY(bar1) = 288)
				alter = 1
			endif
		endif

		// Pontuação
		if(GetSpriteCollision(avatar, white) = 1)
			SetSpritePosition(white, 0, 0)
			SetSpriteVisible(white, 0)
			pontTot = pontTot + 5
			diamCapt = diamCapt + 1
			x = GetSpriteX(avatar) + 50
			y = GetSpriteY(avatar) + 50
			emitirPartCap(x, y)
			emitirSomCap(captDiam)
		endif
		if(GetSpriteCollision(avatar, blue) = 1)
			SetSpritePosition(blue, 0, 0)
			SetSpriteVisible(blue, 0)
			pontTot = pontTot + 10
			diamCapt = diamCapt + 1
			x = GetSpriteX(avatar) + 50
			y = GetSpriteY(avatar) + 50
			emitirPartCap(x, y)
			emitirSomCap(captDiam)
		endif
		if(GetSpriteCollision(avatar, yellow) = 1)
			SetSpritePosition(yellow, 0, 0)
			SetSpriteVisible(yellow, 0)
			pontTot = pontTot + 15
			diamCapt = diamCapt + 1
			x = GetSpriteX(avatar) + 50
			y = GetSpriteY(avatar) + 50
			emitirPartCap(x, y)
			emitirSomCap(captDiam)
		endif
		if(GetSpriteCollision(avatar, green) = 1)
			SetSpritePosition(green, 0, 0)
			SetSpriteVisible(green, 0)
			pontTot = pontTot + 20
			diamCapt = diamCapt + 1
			x = GetSpriteX(avatar) + 50
			y = GetSpriteY(avatar) + 50
			emitirPartCap(x, y)
			emitirSomCap(captDiam)
		endif
		if(GetSpriteCollision(avatar, purple) = 1)
			SetSpritePosition(purple, 0, 0)
			SetSpriteVisible(purple, 0)
			pontTot = pontTot + 25
			diamCapt = diamCapt + 1
			x = GetSpriteX(avatar) + 50
			y = GetSpriteY(avatar) + 50
			emitirPartCap(x, y)
			emitirSomCap(captDiam)
		endif
		if(GetSpriteCollision(avatar, red) = 1)
			SetSpritePosition(red, 0, 0)
			SetSpriteVisible(red, 0)
			pontTot = pontTot + 30
			diamCapt = diamCapt + 1
			x = GetSpriteX(avatar) + 50
			y = GetSpriteY(avatar) + 50
			emitirPartCap(x, y)
			emitirSomCap(captDiam)
		endif
		
		// Reorganiza o jogo
		if(pontTot > 0 AND pontTot = 105 * i)
			// Controle dos diamantes
			SetSpritePosition(white, Random(100, 920), Random(70, 180))
			SetSpritePosition(blue, Random(100, 920), Random(550, 670))
			SetSpritePosition(yellow, Random(100, 280), Random(220, 450))
			SetSpritePosition(green, Random(715, 920), Random(220, 450))
			SetSpritePosition(purple, Random(315, 475), Random(300, 320))
			SetSpritePosition(red, Random(315, 475), Random(430, 450))
			
			SetSpriteVisible(white, 1)
			SetSpriteVisible(blue, 1)
			SetSpriteVisible(yellow, 1)
			SetSpriteVisible(green, 1)
			SetSpriteVisible(purple, 1)
			SetSpriteVisible(red, 1)
			
			// Incrementa velocidade do avatar
			velAvat = velAvat + 0.5
			
			// Incrementa velocidade da flecha
			velObs2 = velObs2 + 0.5
			
			// Incrementa controlador
			i = i + 1
		endif
		
		// Colisão com obstáculos
		if(GetSpriteCollision(avatar, box1) = 1 OR GetSpriteCollision(avatar, box2) = 1 OR GetSpriteCollision(avatar, box3) = 1 OR GetSpriteCollision(avatar, box4) = 1 OR GetSpriteCollision(avatar, box5) = 1 OR GetSpriteCollision(avatar, box6) = 1 OR GetSpriteCollision(avatar, box7) = 1 OR GetSpriteCollision(avatar, box8) = 1 OR GetSpriteCollision(avatar, box9) = 1 OR GetSpriteCollision(avatar, box10) = 1 OR GetSpriteCollision(avatar, box11) = 1 OR GetSpriteCollision(avatar, box12) = 1 OR GetSpriteCollision(avatar, box13) = 1 OR GetSpriteCollision(avatar, box14) = 1 OR GetSpriteCollision(avatar, box15) = 1 OR GetSpriteCollision(avatar, box16) = 1 OR GetSpriteCollision(avatar, box17) = 1 OR GetSpriteCollision(avatar, box18) = 1 OR GetSpriteCollision(avatar, box19) = 1 OR GetSpriteCollision(avatar, box20) = 1 OR GetSpriteCollision(avatar, box21) = 1 OR GetSpriteCollision(avatar, box22) = 1 OR GetSpriteCollision(avatar, box23) = 1 OR GetSpriteCollision(avatar, box24) = 1 OR GetSpriteCollision(avatar, box25) = 1 OR GetSpriteCollision(avatar, box26) = 1 OR GetSpriteCollision(avatar, box27) = 1 OR GetSpriteCollision(avatar, box28) = 1 OR GetSpriteCollision(avatar, block1) = 1 OR GetSpriteCollision(avatar, block2) = 1 OR GetSpriteCollision(avatar, block3) = 1 OR GetSpriteCollision(avatar, block4) = 1 OR GetSpriteCollision(avatar, block5) = 1 OR GetSpriteCollision(avatar, block6) = 1 OR GetSpriteCollision(avatar, block7) = 1 OR GetSpriteCollision(avatar, block8) = 1 OR GetSpriteCollision(avatar, block9) = 1 OR GetSpriteCollision(avatar, flecha1) = 1 OR GetSpriteCollision(avatar, flecha2) = 1 OR GetSpriteCollision(avatar, bar1) = 1 OR GetSpriteCollision(avatar, bar2) = 1 OR GetSpriteCollision(avatar, bar3) = 1 OR GetSpriteCollision(avatar, bar4) = 1)
			SetSpritePosition(avatar, GetSpriteX(avatar), GetSpriteY(avatar))
			emitirSomCol(crashBlock)
			
			// Armazena a maior pontuação obtida
			if(maiorPont < pontTot)
				maiorPont = pontTot
			endif
			
			// Para o jogo
			comecar = 0
			sleep(500)
			SetSpriteVisible(tC, 1)
			
			// Seta as variáveis
			pontTot = 0
			diamCapt = 0
			velAvat = 2
			velObs = 0.5
			velObs2 = 2
			i = 1
			dir = 3
			SetSpritePosition(avatar, 10, 380)
			sleep(500)
		endif
	endif
    
    Sync()
loop

function mover(mov, avatar)
	if(mov = 1)
		SetSpritePosition(avatar, GetSpriteX(avatar) + 30, GetSpriteY(avatar) - 30)
	endif
	
	if(mov = 2)
		SetSpritePosition(avatar, GetSpriteX(avatar) + 30, GetSpriteY(avatar) + 30)
	endif
	
	if(mov = 3)
		SetSpritePosition(avatar, GetSpriteX(avatar) - 30, GetSpriteY(avatar) - 30)
	endif
	
	if(mov = 4)
		SetSpritePosition(avatar, GetSpriteX(avatar) - 30, GetSpriteY(avatar) + 30)
	endif
	
	if(mov = 5)
		SetSpritePosition(avatar, GetSpriteX(avatar) + 30, GetSpriteY(avatar) - 30)
	endif
	
	if(mov = 6)
		SetSpritePosition(avatar, GetSpriteX(avatar) - 30, GetSpriteY(avatar) - 30)
	endif
	
	if(mov = 7)
		SetSpritePosition(avatar, GetSpriteX(avatar) + 30, GetSpriteY(avatar) + 30)
	endif
	
	if(mov = 8)
		SetSpritePosition(avatar, GetSpriteX(avatar) - 30, GetSpriteY(avatar) + 30)
	endif
endfunction

function emitirPartCap(x, y)
	SetParticlesPosition(1, x, y)
	SetParticlesImage(1, 1)
	ResetParticleCount(1)
	SetParticlesDirection(1, 30, 60)
	SetParticlesLife(1, 0.5)
	SetParticlesSize(1, 3)
	SetParticlesAngle(1, 180)
	SetParticlesFrequency(1, 20)
	SetParticlesVelocityRange(1, 1, 4)
	SetParticlesMax (1, 5)
	Sleep(15)
endfunction

function emitirSomCap(captDiam)
	PlaySound(captDiam)
endfunction

function emitirSomCol(crashBlock)
	PlaySound(crashBlock)
endfunction
