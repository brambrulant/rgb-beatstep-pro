


void noteOn(int channel, int pitch, int velocity) {
  // Receive a noteOn
  println();
  println("Note On:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("velocity/2:"+velocity/2);
  
  if (channel == 15 && pitch < 45 ) { //RGB's. in this case pitch - 35 corresponds with most dmx channels. 
  dmxOutput.set(pitch-35,velocity/2);
  } if (channel == 15 && pitch > 44  && pitch < 48 ) { // RGB's later added to dmx dimmer
    dmxOutput.set(pitch-29,velocity/2);
  }
   if (channel == 15 && pitch == 48 ) { // RED
    dmxOutput.set(10, velocity/2); 
    dmxOutput.set(13, velocity/2);
    dmxOutput.set(19, velocity/2);
    dmxOutput.set(24, velocity/2);
  }
   if (channel == 15 && pitch == 49 ) { // GREEN
    dmxOutput.set(11, velocity/2);
   dmxOutput.set(14, velocity/2); 
    dmxOutput.set(20, velocity/2); 
    dmxOutput.set(22, velocity/2); 
  }
   if (channel == 15 && pitch == 50 ) { // BLUE
    dmxOutput.set(12, velocity/2);
    dmxOutput.set(15, velocity/2); 
    dmxOutput.set(21, velocity/2); 
    dmxOutput.set(23, velocity/2); 
  } 
   
  
}

void noteOff(int channel, int pitch, int velocity) {
  delay(20);
   if (channel == 15 && pitch < 45 ) { //set RGB's. in this case pitch - 35 corresponds with the dmx channels. 
  dmxOutput.set(pitch-35,0);
  } if (channel == 15 && pitch > 44  && pitch < 48 ) { // RGB's later added to dmx dimmer
    dmxOutput.set(pitch-29,0);
  }
  if (channel == 15 && pitch == 48 ) { // set all RED lights
    dmxOutput.set(10, 0); 
    dmxOutput.set(13, 0);
    dmxOutput.set(19, 0);
    dmxOutput.set(24, 0);
  }
   if (channel == 15 && pitch == 49 ) { // set all GREEN lights
    dmxOutput.set(11, 0);
    dmxOutput.set(14, 0); 
    dmxOutput.set(20, 0); 
    dmxOutput.set(22, 0); 
  }
   if (channel == 15 && pitch == 50 ) { // set all BLUE lights
    dmxOutput.set(12, 0);
    dmxOutput.set(15, 0);
    dmxOutput.set(21, 0); 
    dmxOutput.set(23, 0); 
  } 
}

void controllerChange(int channel, int number, int value) {
   //Receive a controllerChange
  println();
  println("Controller Change:");
  println("--------");
  println("Channel:"+channel);
  println("Number:"+number);
  println("Value:"+value);
}

void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}
