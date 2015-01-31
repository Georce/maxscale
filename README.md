# maxscale
Scalable, highly available and powerful transformative database services with MariaDB MaxScale for docker
# Introduction
MariaDB MaxScale is an open-source, database-centric proxy that works with MariaDB Enterprise, MariaDB Enterprise Cluster, MariaDB 5.5, MariaDB 10 and Oracle MySQL®. It’s pluggable architecture is designed to increase flexibility and aid customization. Built upon a lightweight, high-speed networking core designed to facilitate throughput. MariaDB MaxScale runs between the client application and the database cluster offering connection and statement-based load balancing. MariaDB MaxScale allows scaling of an organization's database infrastructure while keeping the needs of DBAs, Developers and Data Architects in mind.
# Quick Start
You can launch the image using the docker command line,

```bash
docker run -itd --name=maxscale -p 3306:3306 \
-e 'address1=192.168.1.1' -e 'address2=192.168.1.2' -e 'address3=192.168.1.3' \
-e 'user=cluster' -e 'passwd=123456' \
georce/maxscale
```

#Configuration
```bash
/usr/local/skysql/maxscale/etc/MaxScale.cnf
```

# Available Configuration Parameters
*Please refer the docker run command options for the `--env-file` flag where you can specify all required environment variables in a single file. This will save you from writing a potentially long docker run command. Alternately you can use fig.*

Below is the complete list of available options that can be used to customize your maxscale installion.

- **address1**: You must enter your fisrt ip address of galera cluster mariadb
- **address2**: You must enter your second ip address of galera cluster mariadb
- **address3**: You must enter your third ip address of galera cluster mariadb
- **user**:     You must enter your username of galera cluster mariadb
- **passwd**:   You must enter your password of galera cluster mariadb

# References
 * https://mariadb.com/products/mariadb-maxscale
