# redmine-openshift
Template for Redmine deployment on OpenShift Container Platform, using mysql database in ephemeral mode.

Redmine requires root permission so ensure to give this permission to your project before launching this application (i.e. running *oc adm policy add-scc-to-user anyuid -z default -n yourprojectname*)
