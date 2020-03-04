dataInputFile = open("data.txt")
dataOutputFile = open("etud.xml","w")

dataInputFile.__next__()

dataOutputFile.write("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n"
                     "<?xml-stylesheet type=\"text/xsl\" href=\"etud.xsl\" ?>\n"
                     "<!DOCTYPE Group_gsi SYSTEM \"etud.dtd\">\n"
                     "<Group_gsi>\n")

for line in dataInputFile:
    splitedLine = line.split("\t")
    dataOutputFile.write("<etudiant>\n"
                         "<Identite>\n"
                         "<Matricule>" + str(splitedLine[0]) + "</Matricule>\n"
                         "<Nom>" + str(splitedLine[1]) + "</Nom>\n"
                         "<Prenom>" + str(splitedLine[2]) + "</Prenom>\n"
                         "</Identite>\n"
                         "<Moy>\n"
                         "<MoyS1>" + str(splitedLine[3]) + "</MoyS1>\n"
                         "<MoyS2>" + str(splitedLine[4]) + "</MoyS2>\n"
                         "<MoyAnnuel>" + str(splitedLine[5]) + "</MoyAnnuel>\n"
                         "<CreditS1>" + str(splitedLine[6]) + "</CreditS1>\n"
                         "<CreditS2>" + str(splitedLine[7]) + "</CreditS2>\n"
                         "<Unite>" + str(splitedLine[8].split("\n")[0]) + "</Unite>\n"
                         "</Moy>\n"
                         "</etudiant>\n")

dataOutputFile.write("</Group_gsi>")
