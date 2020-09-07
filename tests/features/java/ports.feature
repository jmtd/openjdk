@openjdk
@ubi8
@redhat-openjdk-18
@openj9
Feature: Openshift OpenJDK port tests

  Scenario: Check ports are available
    Given s2i build https://github.com/jboss-openshift/openshift-quickstarts from undertow-servlet
    Then check that port 8080 is open
    Then inspect container
       | path                    | value       |
       | /Config/ExposedPorts    | 8080/tcp    |
       | /Config/ExposedPorts    | 8443/tcp    |
       | /Config/ExposedPorts    | 8778/tcp    |
