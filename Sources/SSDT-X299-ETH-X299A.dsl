/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ./SSDT-X299-ETH-X299A.aml, Tue Dec 18 16:10:36 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000016B (363)
 *     Revision         0x01
 *     Checksum         0x80
 *     OEM ID           "KGP"
 *     OEM Table ID     "X299ETH"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X299ETH", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.ETH0, DeviceObj)
    External (D0A4, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments
    External (GBE1, DeviceObj)
    External (PXSX, DeviceObj)

    Scope (\_SB.PCI0)
    {
        Scope (ETH0)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x10)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x09)
                        {
                            "Built In"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "name", 
                        Buffer (0x16)
                        {
                            "Intel I219V2 Ethernet"
                        }, 

                        "model", 
                        Buffer (0x2A)
                        {
                            "Intel I219V2 PCI Express Gigabit Ethernet"
                        }, 

                        "location", 
                        Buffer (0x02)
                        {
                            "2"
                        }, 

                        "subsystem-id", 
                        Buffer (0x04)
                        {
                             0x72, 0x86, 0x00, 0x00                           // r...
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0xB8, 0x15, 0x00, 0x00                           // ....
                        }, 

                        "subsystem-vendor-id", 
                        Buffer (0x04)
                        {
                             0x43, 0x10, 0x00, 0x00                           // C...
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}

