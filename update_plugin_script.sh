#!/bin/bash


docker exec -i moodle bash <<EOF

    git -C /var/www/html/mod/assign/submission/mojec/ pull
	echo "Updated"
    

exit

EOF