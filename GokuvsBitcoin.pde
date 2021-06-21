//Por Maurilio Morais e Laiane Nogueira


//infos
boolean devTools =false;


boolean sp = false;
float x = 60;
float y = 360;
int m = 3;
float speedX = random(1, 3);
float speedY = random(1, 3);
int leftColor = 128;
int rightColor = 128;
int rectSize = 150;
float pontos = 0;

int farmStage = 0;
int pVideo =1;
int optionMenu = 0;
int scene = 0;
int mapStage =1;
int i[] = { 0, 0, 0, 0, 0, 0 };
int[] plantStage = { 0, 0, 0, 0, 0, 0 };
float vBitcoin = 200000;

PImage img1;
PImage img2;
PImage bitcoin;
PImage bitcoin2;
PImage painel;
PImage painel2;
PImage planta;
PImage plantacao;
PImage backGroundImg1;

boolean[] podePlantar = { false, false, false, false, false, false};
boolean bit =false;
boolean comprarPlaca = false;
boolean upStage =false;

//AUX COLISÔES

boolean moveUp = true;
boolean moveDown = true;
boolean moveLeft = true;
boolean moveRight =true;

void setup() {
  size(500, 500);
  noStroke();
  smooth();
  ellipseMode(CENTER);
  img1 = loadImage("1.png");
  img2 = loadImage("2.png");
  bitcoin = loadImage("bit1.png");
  bitcoin2 = loadImage("bit2.png");
  planta = loadImage("planta.png");
  plantacao = loadImage("plantacao.png");
  backGroundImg1 = loadImage("back.jpg");
  painel = loadImage("painel.png");
  painel2 = loadImage("painel3.png");
}



void draw() {
  //Menu
  if (scene==0) {
    String iniciarSelect = "";
    String sairSelect = "";
    String creditosSelect = "";
    if (optionMenu==0) {
      iniciarSelect = "-";
    } else {
      iniciarSelect = "";
    }
    if (optionMenu==1) {
      creditosSelect = "-";
    } else {
      creditosSelect = "";
    }
    if (optionMenu==2) {
      sairSelect = "-";
    } else {
      sairSelect = "";
    }
    background(0);
    text(iniciarSelect+"Iniciar"+iniciarSelect, 20, 80);
    text(creditosSelect+"Créditos"+creditosSelect, 20, 100);
    text(sairSelect+"Sair"+sairSelect, 20, 120);
  }
  if (scene==2) { 
    background(0);
    image(painel, 145, 200);
    text("Por: Maurilio Morais", 180, 235);
    text("        Laiane Nogueira ", 180, 250);
    image(painel, 145, 400);
    text("Mouse para sair", 195, 445);
  }

  //JOGO
  if (scene==1) {
    //farms
    image(backGroundImg1, 0, 0);


    //cotação bitcoin
    float bitAlta=random(2);

    if (bitAlta<1) {
      vBitcoin+=random(1000);
    } else {
      vBitcoin-=random(1000);
    }
    if (farmStage==1) {
      image(plantacao, 265, 180);
    } else if (farmStage==2) {
      image(plantacao, 265, 180);
      image(plantacao, 342, 180);
    } else if (farmStage==3) {
      image(plantacao, 265, 180);
      image(plantacao, 342, 180);
      image(plantacao, 422, 180);
    } else if (farmStage==4) {
      image(plantacao, 265, 180);
      image(plantacao, 342, 180);
      image(plantacao, 422, 180);
      image(plantacao, 265, 25);
    } else if (farmStage==5) {
      image(plantacao, 265, 180);
      image(plantacao, 342, 180);
      image(plantacao, 422, 180);
      image(plantacao, 265, 25);
      image(plantacao, 342, 25);
    } else if (farmStage==6) {
      image(plantacao, 265, 180);
      image(plantacao, 342, 180);
      image(plantacao, 422, 180);
      image(plantacao, 265, 25);
      image(plantacao, 342, 25);
      image(plantacao, 422, 25);
    }

    //Farm 1=====================
    if (plantStage[0]==1) {
      planta(280, 350);
      planta(280, 390);
      planta(280, 430);
    } else if (plantStage[0]==2) {
      bitcoinplant(275, 350);
      bitcoinplant(275, 390);
      bitcoinplant(275, 430);
    } else {
      i[0]=0;
    }
    //Farm 2=====================
    if (plantStage[1]==1) {
      planta(355, 350);
      planta(355, 390);
      planta(355, 430);
    } else if (plantStage[1]==2) {
      bitcoinplant(355, 350);
      bitcoinplant(355, 390);
      bitcoinplant(355, 430);
    } else {
      i[1]=0;
    }
    //Farm 3===================== 
    if (plantStage[2]==1) {
      planta(430, 350);
      planta(430, 390);
      planta(430, 430);
    } else if (plantStage[2]==2) {
      bitcoinplant(430, 350);
      bitcoinplant(430, 390);
      bitcoinplant(430, 430);
    } else {
      i[2]=0;
    }
    //Farm 4=====================
    if (plantStage[3]==1) {
      planta(280, 190);
      planta(280, 230);
      planta(280, 270);
    } else if (plantStage[3]==2) {
      bitcoinplant(275, 190);
      bitcoinplant(275, 230);
      bitcoinplant(275, 270);
    } else {
      i[3]=0;
    }
    //Farm 5=====================
    if (plantStage[4]==1) {
      planta(355, 190);
      planta(355, 230);
      planta(355, 270);
    } else if (plantStage[4]==2) {
      bitcoinplant(355, 190);
      bitcoinplant(355, 230);
      bitcoinplant(355, 270);
    } else {
      i[4]=4;
    }
    //Farm 6===================== 
    if (plantStage[5]==1) {
      planta(430, 190);
      planta(430, 230);
      planta(430, 270);
    } else if (plantStage[5]==2) {
      bitcoinplant(430, 190);
      bitcoinplant(430, 230);
      bitcoinplant(430, 270);
    } else {
      i[5]=0;
    }
    image(painel, 40, 430);
    text("Cotação Bitcoin: "+str(vBitcoin), 65, 460);
    text("Bitcoins: "+str(pontos), 65, 475);
    text("Placas de videos: "+str(pVideo), 65, 490);

    fill(128, 128, 128);
    if (sp == true)
    {
      image(img1, x, y);
      delay(200);
      sp = false;
    } else {
      image(img2, x, y);
      delay(200);
      //sp = true;
    }

    if (devTools==true) {
      text("Y: "+str(y), 20, 20);
      text("X: "+str(x), 20, 40);
      text("moveUp: "+str(moveUp), 20, 60);
      text("moveDown: "+str(moveDown), 20, 80);
      text("moveLeft: "+str(moveLeft), 20, 100);
      text("moveRight: "+str(moveRight), 20, 120);
      text("farmStage: "+str(farmStage), 20, 140);
      text("podePlantar[3]: "+str(podePlantar[3]) + " :: " +str(plantStage[3]), 20, 160);
      text("podePlantar[4]: "+str(podePlantar[4]) + " :: " +str(plantStage[4]), 20, 180);
      text("podePlantar[5]: "+str(podePlantar[5]) + " :: " +str(plantStage[5]), 20, 200);
      text("comprarPlaca: "+str(comprarPlaca), 20, 220);
    }

    if (plantStage[0]==1) {
      i[0]++;
      if (i[0]==20) {
        plantStage[0]+=1;
      }
    }
    if (plantStage[1]==1) {
      i[1]++;
      println(i[1]);
      if (i[1]==20) {
        plantStage[1]+=1;
      }
    }
    if (plantStage[2]==1) {
      i[2]++;
      if (i[2]==20) {
        plantStage[2]+=1;
      }
    }
    if (plantStage[3]==1) {
      i[3]++;
      if (i[3]==20) {
        plantStage[3]+=1;
      }
    }
    if (plantStage[4]==1) {
      i[4]++;
      if (i[4]==20) {
        plantStage[4]+=1;
      }
    }
    if (plantStage[5]==1) {
      i[5]++;
      if (i[5]==20) {
        plantStage[5]+=1;
      }
    }

    //COLISÔES

    //Borda
    if (y<11) {
      moveUp=false;
    } else if (y>429) {
      moveDown=false;
    }
    //Casa
    else if (x<70 && y>140) {
      moveLeft=false;
      moveDown=false;
    } else if (x>440) {
      moveRight=false;
    } else if (x<40 && y<120 && y>30) {
      moveLeft=false;
    } else {
      moveUp=true;
      moveLeft=true;
      moveRight=true;
      moveDown=true;
    }

    //Plantação (podePlantar)
    //1
    if (x>235 && x<315 && y>315 && y<425) {
      podePlantar[0]=true;
      if (plantStage[0]==0) {
        interagir("cultivar");
      } else if (plantStage[0]==2) {
        interagir("colher");
      }
    } else {
      podePlantar[0]=false;
    }
    //2
    if (x>315 && x<395 && y>315 && y<425) {
      podePlantar[1]=true;
      if (plantStage[1]==0) {
        interagir("cultivar");
      } else if (plantStage[1]==2) {
        interagir("colher");
      }
    } else {
      podePlantar[1]=false;
    }
    //3
    if (x>395 && x<460 && y>315 && y<425) {
      podePlantar[2]=true;
      if (plantStage[2]==0) {
        interagir("cultivar");
      } else if (plantStage[2]==2) {
        interagir("colher");
      }
    } else {
      podePlantar[2]=false;
    }
    //4
    if (x>235 && x<315 && y>145 && y<270) {
      podePlantar[3]=true;
      if (plantStage[3]==0) {
        interagir("cultivar");
      } else if (plantStage[3]==2) {
        interagir("colher");
      }
    } else {
      podePlantar[3]=false;
    }
    //5
    if (x>315 && x<395 && y>160 && y<270) {
      podePlantar[4]=true;
      if (plantStage[4]==0) {
        interagir("cultivar");
      } else if (plantStage[4]==2) {
        interagir("colher");
      }
    } else {
      podePlantar[4]=false;
    }
    //6
    if (x>395 && x<460 && y>160 && y<270) {
      podePlantar[5]=true;
      if (plantStage[5]==0) {
        interagir("cultivar");
      } else if (plantStage[5]==2) {
        interagir("colher");
      }
    } else {
      podePlantar[5]=false;
    }

    //Comprar Placas de Videos 
    if (x>40 && x<100 && y<90 && y>30) {
      comprarPlaca=true;
      interagir("comprar Placa de Video \npor 0.093BTC");
    } else {
      comprarPlaca=false;
    }

    //comprar terrenos
    if (x>90 && x<190 && y<40 && farmStage<3) {
      upStage=true;
      interagir("comprar nova plantação \npor 4.00BTC");
    } else {
      upStage=false;
    }
  }
}


void interagir(String x) {
  image(painel2, 40, 250);
  text("Pressione o mouse", 70, 280);
  text("para "+ x, 71, 292);
}

void bitcoinplant(int x, int y) {
  if (bit == true)
  {
    image(bitcoin, x, y);
    bit = false;
  } else {
    image(bitcoin2, x, y);
    bit = true;
  }
}

void planta(int x, int y) {
  image(planta, x, y);
}

void mousePressed() {

  //voltar dos créditos para o menu
  if (scene==2) {
    scene=0;
  }

  if (upStage==true && pontos>=4) {
    farmStage+=1;
    pontos-=4;
  }
  if (comprarPlaca==true && pontos>0.093) {
    pontos-=0.093;
    pVideo+=1;
  }
  //farm 1
  if (podePlantar[0]==true) {
    if (plantStage[0]==2) {
      plantStage[0]=0;
      //pontos+=0.098+random(0.05);
      pontos+=vBitcoin/(vBitcoin+1000000);
    } else if (plantStage[0]==0 && pVideo>0) {
      plantStage[0]+=1;
      pVideo-=1;
    }
  }
  //farm 2
  if (podePlantar[1]==true) {
    if (plantStage[1]==2) {
      plantStage[1]=0;
      pontos+=vBitcoin/(vBitcoin+1000000);
    } else if (plantStage[1]==0 && pVideo>0) {
      plantStage[1]+=1;
      pVideo-=1;
    }
  }
  //farm 3
  if (podePlantar[2]==true) {
    if (plantStage[2]==2) {
      plantStage[2]=0;
      pontos+=vBitcoin/(vBitcoin+1000000);
    } else if (plantStage[2]==0 && pVideo>0) {
      plantStage[2]+=1;
      pVideo-=1;
    }
  }
  //farm 4
  if (podePlantar[3]==true) {
    if (plantStage[3]==2) {
      plantStage[3]=0;
      //pontos+=0.098+random(0.05);
      pontos+=vBitcoin/(vBitcoin+1000000);
    } else if (plantStage[3]==0 && pVideo>0) {
      plantStage[3]+=1;
      pVideo-=1;
    }
  }
  //farm 5
  if (podePlantar[4]==true) {
    if (plantStage[4]==2) {
      plantStage[4]=0;
      pontos+=vBitcoin/(vBitcoin+1000000);
    } else if (plantStage[4]==0 && pVideo>0) {
      plantStage[4]+=1;
      pVideo-=1;
    }
  }
  //farm 6
  if (podePlantar[5]==true) {
    if (plantStage[5]==2) {
      plantStage[5]=0;
      pontos+=vBitcoin/(vBitcoin+1000000);
    } else if (plantStage[5]==0 && pVideo>0) {
      plantStage[5]+=1;
      pVideo-=1;
    }
  }
}

void keyPressed() {
  if (scene==0) {
    if (key == CODED) {
      if (keyCode == UP && optionMenu >0) {
        optionMenu-= 1;
      } else if (keyCode == DOWN && optionMenu<2) {
        optionMenu+= 1;
      }
    }
    if (keyCode == ENTER) {
      if (scene==0) {
        if (optionMenu==0) {
          scene=1;
        } else if (optionMenu==1) {
          scene=2;
        } else if (optionMenu==2) {
          exit();
        }
      }
    }
  }
  if (scene==1) {
    if (key == CODED) {
      if (keyCode == ESC) {
        exit();
      }
      if (keyCode == UP) {
        if (moveUp) {
          y = y - m;
          sp = true;
        }
      } else if (keyCode == DOWN) {
        if (moveDown) {
          y = y + m;
          sp = true;
        }
      } else if (keyCode == RIGHT) {
        if (moveRight) {
          x = x + m;
          sp = true;
        }
      } else if (keyCode == LEFT) {
        if (moveLeft) {
          if (x>10) {
            x = x - m;
            sp = true;
          }
        }
      }
    }
  }
}
