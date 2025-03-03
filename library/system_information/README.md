# System Information


```dart

import 'package:system_information/system_information.dart';

void main(List<String> args) async {
  final SystemInformation systemInformation = SystemInformation();
  await systemInformation.ensureInitialized(
    isUseStatic: true, 
  );
  print(systemInformation.toMessage());
}

```

```bash
Title: MSI-Modern-14-B5M
Os: Ubuntu 24.04 LTS
Platform Type: Linux
Executable Type: cli
Arch: x86_64
Host: Modern 14 B5M REV:1.0 MS-14DL
Device Name: Modern 14 B5M REV:1.0 MS-14DL
Kernel: Linux 6.8.0-38-generic x86_64
Uptime Program: just now
Uptime: up 5 hours, 26 minutes
Shell: zsh 5.9
Cpu: AMD Ryzen 5 5500U with Radeon Graphics (12)
Gpu: Advanced Micro Devices, Inc. [AMD/ATI] Lucienne
Network: MEDIATEK Corp. MT7921K (RZ608) Wi-Fi 6E 80MHz
Disk: Kingston Technology Company, Inc. OM8PCP Design-In PCIe 3 NVMe SSD (DRAM-less)
Power: 78% Charging
Ram Total: 15 GB
Ram Free: 1 GB
Ram Available: 8 GB
Swap Total: 7 GB
Swap Free: 7 GB
Swap Cache: 28 KB
Total Bandwith Download: 131.85 MB
Total Bandwith Upload: 138.43 MB
Total Bandwith: 270.28 MB
Ram Usage By This Program: 62 MB
```
 