path_pdf="./ressources/Le_rire_et_sa_signification_éthique.pdf"
pdf_basename=$(basename ${path_pdf})

# Fetch path for valide load_file() in mysql
tmp=$(mysql -u root -p -e "SELECT @@secure_file_priv")
path_secure_file=$(echo $tmp |cut -d ' ' -f 2) # Contain a / at the end

echo ${path_secure_file}

echo "cp $path_pdf ${path_secure_file}${pdf_basename}"
sudo cp $path_pdf ${path_secure_file}${pdf_basename}

mysql -u root -p < create_db.sql
