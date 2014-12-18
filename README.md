# Glassfish role 

Requries Ansible 1.8 or later

This role installs glassfish (either the one from Payara, or the Glassfish community edition) with a custom domain.xml.
In addition, it creates users, creates service scripts and deploys additional libs, if specified.

Assumes the presence of JAVA on the target system