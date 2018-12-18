/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ./SSDT-X299-Nvidia-1080.aml, Tue Dec 18 21:30:31 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000158 (344)
 *     Revision         0x01
 *     Checksum         0x73
 *     OEM ID           "KGP"
 *     OEM Table ID     "X299NVID"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X299NVID", 0x00000000)
{
    External (_SB_.PC02.BR2A, DeviceObj)
    External (_SB_.PC02.BR2A.PEGP, DeviceObj)
    External (_SB_.PC02.BR2A.SL05, DeviceObj)

    Scope (_SB.PC02.BR2A)
    {
        Scope (SL05)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (PEGP)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (GFX0)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }

        Device (HDAU)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Return (Package (0x0C)
                {
                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                             // .
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xF0, 0x10, 0x00, 0x00                           // ....
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x07)
                    {
                        "Slot-1"
                    }, 

                    "device_type", 
                    Buffer (0x16)
                    {
                        "Multimedia Controller"
                    }, 

                    "name", 
                    Buffer (0x1D)
                    {
                        "NVIDIA High Definition Audio"
                    }, 

                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-2"
                    }
                })
            }
        }
    }
}

