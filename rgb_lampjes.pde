import themidibus.*; //Import the library
import dmxP512.*;
import processing.serial.*;

DmxP512 dmxOutput;
int universeSize=128;
boolean DMXPRO=true;
String DMXPRO_PORT="/dev/tty.usbserial-EN243644"; //adress the usb port
int DMXPRO_BAUDRATE=115000;
int decay; 

MidiBus myBus; // The MidiBus

void setup() {
  size(200,200);
  MidiBus.list(); // List all available Midi devices on STDOUT. This will show each device's index and name.
 //myBus = new MidiBus (this,"KeyStep Pro",20);
  myBus = new MidiBus (this,0,20);
  // init device
  dmxOutput = new DmxP512(this, universeSize, true);
  dmxOutput.setupDmxPro(DMXPRO_PORT, DMXPRO_BAUDRATE);
 }
 
 void draw() {
   background(0);
   
 }
