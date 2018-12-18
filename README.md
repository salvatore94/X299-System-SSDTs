# X299-System-SSDTs

## Instructions
This X299 System SSDT Github repository is a fork of the great collection made by KGP and others osx86's community.
The aim of this repository is to record changes needed to adapt KGP's collection to my specific motherboard.

The orginal collection is avaiable on [KGP's repository](https://github.com/KGP/X299-System-SSDTs) 

Is possible to downlaod a DSL version of the respective AML files under "Sources" and to subseqeuntly execute the Compile.command from terminal


## My System 
| | |
| :------- | :---------- |
| Motherboard | `Asus X299A-Prime` |
| Graphics Card | `Gainward GTX 1080` |


## SSDTs

Collection of X299 System `SSDTs` for the X299 motherboards.

| AML File | Description |
| :------- | :---------- |
| `SSDT-X299-HDEF.aml` | On-board Realtek ALC S1220 HD Audio controller HDEF PCI implementation |
| `SSDT-X299-ANS.aml` | On-board NVME controller ANS1 and ANS2 PCI implementation |
| `SSDT-X299-PMCR.aml` | On-board PMC controller PCI implementation |
| `SSDT-X299-SAT1.aml` | On-board AHCI SATA controller PCI implementation |
| `SSDT-X299-THSS.aml` | On-board Thermal controller PCI implementation |
| `SSDT-X299-USBX.aml` | Fixes USB Power Errors during system boot |
| `SSDT-X299-XHCI.aml` | On-board ASM1074 USB3.0 extensible Host Controller XHCI PCI implementation |
| `SSDT-X299-XHC.aml` | On-board ASN3142#1, ASN3142#2 and ASN3142#3 USB3.1 extensible Host Controller XHC2, XHC3 and XHC4 PCI implementation |
| `SSDT-X299-ETH.aml` | On-board Intel I219V2 1GB NIC controlller PCI implementation |
| `SSDT-X299-Nvidia.aml` | Nvidia PCIe Slot-1 GFX0 and HDAU PCI implementation |
| `SSDT-DTPG.aml` | DTPG PCI implementation (required for all `SSDTs` listed above) |

## Required Patches

The `SSDTs` above require the following `config.plist` ACPI DSDT patch replacements.

| Comment | Find [HEX] | Replace [Hex] |
| :------ | :--------- | :----------- |
| `PC00` &rarr; `PCI0` | `50433030` | `50434930` |
| `_OSI` &rarr; `XOSI` | `5F4F5349` | `584F5349` |
| `EC0_` &rarr; `EC__` | `4543305F` | `45435F5F` |
| `H_EC` &rarr; `EC__` | `485F4543` | `45435F5F` |
| `HEC1` &rarr; `IMEI` | `48454331` | `494D4549` |
| `IDER` &rarr; `MEID` | `49444552` | `4D454944` |
| `LPC0` &rarr; `LPCB` | `4C504330` | `4C504342` |
| `FPU_` &rarr; `MATH` | `4650555F` | `4D415448` |
| `TMR_` &rarr; `TIMR` | `544D525F` | `54494D52` |
| `PIC_` &rarr; `IPIC` | `5049435F` | `49504943` |
| `_DSM` &rarr; `XDSM` | `5F44534D` | `5844534D` |
| `SMBS._ADR` &rarr; `XSBU.XADR` | `534D4253 085F4144 52` | `58534255 08584144 52` |

## Acknowledgements

Special thanks to Apfelnico and NMano for all substantial and always kind contributions.
