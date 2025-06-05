/// Holds version information for a package.
///
/// - `apt`: Highest-priority Debian-based version (from deb.debian.org or similar).
/// - `kali`: Version provided by Kali repositories (`http.kali.org`).
/// - `installed`: Currently installed version, or empty string if not installed.
class PackageVersion {
  final String apt;
  final String kali;
  final String installed;

  PackageVersion({required this.apt, required this.kali, required this.installed});
}

/// Resolves version information for a given `packageName` using `apt policy`.
///
/// Parses and returns:
/// - the version with the highest non-Kali priority as `apt`
/// - the version from Kali repos as `kali`
/// - the currently installed version (or empty if not installed) as `installed`
///
/// Debian-based sources are picked by highest numeric priority.
///
/// Requires `sudo` privileges to run `apt policy`.
PackageVersion getPackageAvailability(String policy) {
  String apt = '';
  String kali = '';

  List<String> resultLines = policy.split('\n');
  num priority = 0;

  // Get Kali and APT (top priority) version
  for (int i = 0; i < resultLines.length; i += 2) {
    if (resultLines[i].contains('http.kali.org')) {
      String result = resultLines[i - 1].trim().split(' ')[0];
      kali = result != '***' ? result : resultLines[i - 1].trim().split(' ')[1];
      continue;
    } else {
      num newPriority = num.tryParse(resultLines[i].trim().split(' ')[0]) ?? 0;
      if (newPriority == 0) {
        i--;
        continue;
      }
      if (newPriority > priority) {
        priority = newPriority;
        String result = resultLines[i - 1].trim().split(' ')[0];
        apt = result != '***' ? result : resultLines[i - 1].trim().split(' ')[1];
      }
    }
  }

  // Get installed version of the pkg. The result is an empty String if is not installed
  String installed = '';
  for (int i = 4; i < resultLines.length; i += 2) {
    int priorityVersion = int.tryParse(resultLines[i].trim().split(' ')[0]) ?? 0;
    if (priorityVersion == 0) {
      i--;
      continue;
    }

    String result = resultLines[i - 1].trim().split(' ')[0];
    if (result == '***') {
      installed = resultLines[i - 1].trim().split(' ')[1];
      break;
    }
  }

  return PackageVersion(apt: apt, kali: kali, installed: installed);
}

/*
nmap:
  Installed: (none)
  Candidate: 7.93+dfsg1-1
  Version table:
     7.95+dfsg-3kali1 50
         50 http://http.kali.org/kali kali-rolling/non-free amd64 Packages
     7.94+git20230807.3be01efb1+dfsg-4~bpo12+1 100
        100 http://deb.debian.org/debian bookworm-backports/main amd64 Packages
     7.93+dfsg1-1 500
        500 http://deb.debian.org/debian bookworm/main amd64 Packages

nmap:
  Installed: 7.93+dfsg1-1
  Candidate: 7.93+dfsg1-1
  Version table:
     7.95+dfsg-3kali1 50
         50 http://http.kali.org/kali kali-rolling/non-free amd64 Packages
     7.94+git20230807.3be01efb1+dfsg-4~bpo12+1 100
        100 http://deb.debian.org/debian bookworm-backports/main amd64 Packages
 *** 7.93+dfsg1-1 500
        500 http://deb.debian.org/debian bookworm/main amd64 Packages
        100 /var/lib/dpkg/status

beef-xss:
  Installed: (none)
  Candidate: 0.5.4.0+git20250422-0kali1
  Version table:
     0.5.4.0+git20250422-0kali1 50
         50 http://http.kali.org/kali kali-rolling/main amd64 Packages

Candidate goes to "default" installation
If there is no APT download, APT remain an empty String
*/
