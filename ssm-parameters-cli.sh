# Getting parameters.
aws ssm get-parameters --names /my-app/dev/db-url /my-app/dev/db-pass

# If you want to return original values of encrypted parameters, add --with-decryption.
# Note this this aws account should have access to this parameter to be able to user --with-decryption

aws ssm get-parameters --names /my-app/dev/db-url /my-app/dev/db-pass --with-decryption


# Use get-parameters-by-path is you want to get all parameters in the path
aws ssm get-parameters-by-path --path /my-app/dev/ --with-decryption

# Add --recursive if you want incluse subdirectories as well
aws ssm get-parameters-by-path --path /my-app/ --recursive --with-decryption