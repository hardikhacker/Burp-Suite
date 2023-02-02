echo 'Starting Keygenerator'
(java -jar keygen.jar) &
sleep 3s
   
# Execute Burp Suite Professional with Keyloader
echo 'Executing Burp Suite Professional with Keyloader'
echo "java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:$(pwd)/loader.jar -noverify -jar $(pwd)/Burp_Suite_Pro.jar &" > burp
chmod +x burp
cp burp /bin/burp 
(./burp)
