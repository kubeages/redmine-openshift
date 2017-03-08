# redmine-openshift
Template for Redmine deployment on OpenShift Container Platform, using mysql database in ephemeral mode.

Redmine requires root permission so ensure to give this permission to your project before launching this application (i.e. running *oc adm policy add-scc-to-user anyuid -z default -n yourprojectname*)

So the steps to deploy this application are:
1. Create the project: *oc create -f yourprojectname*
2. Give root permissions to the default service account: *oc adm policy add-scc-to-user anyuid -z default -n yourprojectname*
3. Clone this repo and from the repo directory, create the template: *oc create -f redmine-mysql-ephemeral.yaml*
4. From the webconsole, access to the project, press Add To Project and create the app using the previously created template.
