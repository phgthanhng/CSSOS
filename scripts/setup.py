import subprocess
import time
import sys

def run_command(command):
    try:
        return subprocess.run(command, check=True, shell=True)
    except subprocess.CalledProcessError as err:
        raise Exception(str(err.stderr.decode("utf-8")))
    except Exception as err:
        raise Exception(err)

#Update and upgrade
run_command("sudo apt update")
run_command("sudo apt upgrade")
#Install Calcurse
run_command("sudo apt -y install calcurse")
#Install Anki
run_command("sudo apt -y install anki")
#Install VsCode
run_command("sudo apt -y install software-properties-common apt-transport-https curl")
run_command("curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -")
run_command('sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"')
run_command("sudo apt install code")
#Install Airstrike
run_command("sudo apt -y install airstrike") 
#Install and configure Firewall
run_command("sudo apt install ufw")
run_command("sudo ufw enable")