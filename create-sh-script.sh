#!/bin/bash           
##############################################################################################################
SCRIPT_NAME="create-sh-script.sh"
##############################################################################################################
SCRIPT_VERSION="v0.01a"                                                                                    
COMPANY="---"                                                                                             
ORIGINAL_AUTHOR="Orlando Hehl Rebelo dos Santos"
CHANGE_AUTHOR="Orlando Hehl Rebelo dos Santos"
DATE_INI="27-07-2019"                                                                                         
DATE_END="27-07-2019"                                                                                         
##############################################################################################################

NEW_SCRIPT="$1.sh"

echo '#!/bin/bash' > $NEW_SCRIPT
echo '##############################################################################################################' >> $NEW_SCRIPT
echo "SCRIPT_NAME=\"$NEW_SCRIPT\"" >> $NEW_SCRIPT
echo '##############################################################################################################' >> $NEW_SCRIPT
echo 'SCRIPT_VERSION="v0.01a"' >> $NEW_SCRIPT
echo 'COMPANY="XXX"' >> $NEW_SCRIPT
echo 'ORIGINAL_AUTHOR="Orlando Hehl Rebelo dos Santos"' >> $NEW_SCRIPT
echo 'CHANGE_AUTHOR="Orlando Hehl Rebelo dos Santos"' >> $NEW_SCRIPT
echo "DATE_INI=\"$(date +%d-%m-%Y)\"" >> $NEW_SCRIPT
echo "DATE_END=\"$(date +%d-%m-%Y)\"" >> $NEW_SCRIPT
echo '##############################################################################################################' >> $NEW_SCRIPT

chmod +x $NEW_SCRIPT
