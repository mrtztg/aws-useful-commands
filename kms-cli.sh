# Encrypt
aws kms encrypt alias/{alias of kms key} --plaintext fileb://password.txt --output --query CiphertextBlob --region eu-west-2 > passwordEncrypted.base64
# Now you can share this encrypted file with anyone you want


# If you decrypt the new file, you'll get unmeaningful result.
cat passwordEncrypted.base64 | base64 --decode > passwordDecrypted


#So, let's decrypt file using KMS key.
# We don't need to define key here. It's embedded inside the encrypted file.
aws kms decrypt --ciphertext-blob fileb://passwordEncrypted --output text --query Plaintext --region eu-west-2 > passwordDecrypted.base64

#We'll get the original text after decoding
cat passwordDecrypted.base64 | base64 --decode > passwordDecrypted