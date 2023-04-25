# EndpointAnalytics-RemediationScript-Apache-Commons-text
EndpointAnalytics RemediationScript Apache-Commons-text

Microsoft Defender Vulnerability management found this:

Update Apache Commons Text
Remediation required

Description
Update Commons Text to a later version to mitigate 1 known vulnerability affecting your devices.
Associated CVEs
Critical 1
Related threats
Threat Insights: CVE-2022-42889 in Apache Commons Text java library “text4shell" is associated with one or more weaknesses related to this recommendation.

Vulnerability description
This vulnerability affects the following vendors: Suse, Apache, Netapp, Juniper. To view more details about this vulnerability please visit the vendor website.

It turned out that folders of previous versions of JetBrain Toolkit for Rider were not removed.

These folders and files existed on our development workstations:

%APPPDATA%\JetBrains\Rider2021.1\plugins\azure-toolkit-for-rider\commons-text-1.8.jar
%APPPDATA%\JetBrains\Rider2021.2\plugins\azure-toolkit-for-rider\commons-text-1.8.jar
%APPPDATA%\JetBrains\Rider2021.3\plugins\azure-toolkit-for-rider\commons-text-1.8.jar
%APPPDATA%\JetBrains\Rider2022.1\plugins\azure-toolkit-for-rider\commons-text-1.10.0.jar
%APPPDATA%\JetBrains\Rider2023.1\plugins\azure-toolkit-for-rider\commons-text-1.10.0.jar

This script detect old and vulnerable commons jar files and remediation script removes all old Jetbrain version folders except the latest one.
