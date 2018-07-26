

echo "building"
javac src/Test.java -d class

echo "weaving"
ajc  -inpath class aspects/AspectTest.aj -d bin -1.5

echo "running"
cd bin
java -classpath $CLASSPATH:/usr/share/java/aspectjrt.jar Test
