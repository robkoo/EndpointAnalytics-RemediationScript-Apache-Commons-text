# Microsoft Defender Vulnerability management found this thread

Update Apache Commons Text
Remediation required

Description
Update Commons Text to a later version to mitigate 1 known vulnerability affecting your devices.

Associated CVEs
Critical 1

# Related threats
Threat Insights: CVE-2022-42889 in Apache Commons Text java library “text4shell" is associated with one or more weaknesses related to this recommendation.

Vulnerability description
This vulnerability affects the following vendors: Suse, Apache, Netapp, Juniper. To view more details about this vulnerability please visit the vendor website.

# Files found
It turned out that folders of previous versions of JetBrain Rider profiles were not removed containing old versions of Apache Commons text.

These folders and files were found on our development workstations:

- %APPPDATA%\JetBrains\Rider2021.1\plugins\azure-toolkit-for-rider\commons-text-1.8.jar
- %APPPDATA%\JetBrains\Rider2021.2\plugins\azure-toolkit-for-rider\commons-text-1.8.jar
- %APPPDATA%\JetBrains\Rider2021.3\plugins\azure-toolkit-for-rider\commons-text-1.8.jar
- %APPPDATA%\JetBrains\Rider2022.1\plugins\azure-toolkit-for-rider\commons-text-1.10.0.jar
- %APPPDATA%\JetBrains\Rider2023.1\plugins\azure-toolkit-for-rider\commons-text-1.10.0.jar

# Detection and remediation script for Defender
This detection and remediation scripts finds old Jetbrain Rider profiles and removes all profile flders except the latest one.
