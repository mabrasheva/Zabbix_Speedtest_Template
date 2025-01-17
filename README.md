# Zabbix Speedtest Templates

This repository contains Zabbix templates for monitoring internet speed using the Ookla Speedtest CLI, along with the necessary scripts and instructions for GDPR compliance. The templates have been tested on Zabbix version 5.0.

## Templates

1. **Template_Speedtest.xml**
   - Automatically chooses the best Speedtest server based on your location. Measures and logs internet speed periodically in Zabbix.

2. **Template_Speedtest_with_Specified_Server.xml**
   - Allows specifying a Speedtest server manually by configuring the server ID in the template settings. Useful for consistent testing against a specific server.

## Scripts

The repository includes two scripts necessary for the templates to function:

1. **speedtest_ookla.sh**
2. **speedtest_ookla_specified_server.sh**

### Script Installation

1. **Download the External Scripts:**
   - Download the `speedtest_ookla.sh` and `speedtest_ookla_specified_server.sh` files from this repository.


2. **External Scripts Directory:**
   ```bash
    /usr/lib/zabbix/externalscripts/
   ```

3. **Make the Scripts Executable:**
   ```bash
   sudo chmod +x /usr/lib/zabbix/externalscripts/speedtest_ookla.sh
   sudo chmod +x /usr/lib/zabbix/externalscripts/speedtest_ookla_specified_server.sh
   ```
   
4. **Configure Zabbix to Use External Scripts**
   Depending on whether you're running the script from the Zabbix server or proxy, configure the relevant configuration file.
   For Zabbix Server: /etc/zabbix/zabbix_server.conf
   For Zabbix Proxy: /etc/zabbix/zabbix_proxy.conf 
   Ensure the ExternalScripts parameter points to the directory containing your script:
   ```bash
   ExternalScripts=/usr/lib/zabbix/externalscripts
   ```


5. **GDPR Compliance**
   - To comply with GDPR regulations, a GDPR agreement file must be saved in a specified directory before running Speedtest.



6. **Create the Directory:**
   ```bash
    sudo mkdir -p /var/lib/zabbix
   ```

7. **Set Directory Permissions:**
   ```bash
    sudo chmod o+rw /var/lib/zabbix
   ```


### Speedtest Utility Installation

8. **Intall the speedtest utility from Speedtest Ookla site:**
    - https://www.speedtest.net/apps/cli

   
9. **Verify Installation**
   ```bash
    speedtest --version
   ```

### Zabbix Version Compatibility
   - These templates have been tested on Zabbix version 5.0.
