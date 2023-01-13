
Archive of config
---

This archive contains scripts to configure the config file for linux kernel builds. In it you also find the config for my laptop.
The components of my laptop <b>VivoBook ASUSLaptop X513UA M513UA 1.0</b>:
- AMD Ryzen 7 5700U with Radeon Graphics (16) @ 1.800GHz
- NVME: INTEL SSDPEKNU512GZ
- Network controller: MEDIATEK Corp. MT7921 802.11ax PCI Express Wireless Network Adapter
    - Kernel modules: mt7921e
- ELAN: Fingerprint: ID 04f3:0903 Elan Microelectronics Corp.
- WebCam: ID 0408:30d4 Quanta Computer, Inc. USB2.0 HD UVC
- Matherboard: ASUSTeK COMPUTER INC. X513UA 1.0
- Audio device: Advanced Micro Devices, Inc. [AMD/ATI] Renoir Radeon High Definition Audio Controller
    - Kernel modules: snd_hda_intel

My kernel fork
---

I forked the kernel and added some schedulers etc... [Try it](https://github.com/Peppe289/linux)