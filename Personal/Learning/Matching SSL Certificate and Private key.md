
## Question

How to verify if a Private Key Matches a Certificate?

## Answer

The private key contains a series of numbers. Two of those numbers form the "public key", the others are part of your "private key". The "public key" bits are also embedded in your Certificate (we get them from your CSR). To check that the public key in your cert matches the public portion of your private key, you need to view the cert and the key and compare the numbers. You will need to obtain and install OpenSSL from the 3rd party. After OpenSSL is installed, to compare the Certificate and the key run the commands:

  
openssl x509 -noout -modulus -in cert.crt | openssl md5  
openssl rsa -noout -modulus -in privkey.txt | openssl md5

where:  
cert.crt is your certificate  
privkey.txt is your private key.

The second command will require the private key password. Compare the output from both commands. If they are identical then the private key matches the certificate.

Ref: [SSL cert and key match](https://www.ibm.com/support/pages/how-verify-if-private-key-matches-certificate)

#ssl #certificate #privatekey
