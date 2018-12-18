/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ./SSDT-X299-XHC.aml, Tue Dec 18 16:10:36 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000021F (543)
 *     Revision         0x01
 *     Checksum         0x18
 *     OEM ID           "KGP"
 *     OEM Table ID     "X299XHC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X299XHC", 0x00000000)
{
    External (_SB_.PCI0.RP05, DeviceObj)
    External (_SB_.PCI0.RP05.PXSX, DeviceObj)
    External (PXSX, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PCI0.RP05)
    {
        Scope (PXSX)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (XHC2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x69, 
                    0x03
                })
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             
                    })
                }

                Local0 = Package (0x1B)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x09)
                        {
                            "Built In"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x42, 0x21, 0x00, 0x00                           
                        }, 

                        "name", 
                        Buffer (0x17)
                        {
                            "ASMedia XHC Controller"
                        }, 

                        "model", 
                        Buffer (0x2E)
                        {
                            "ASMedia ASM3142 #1 1x USB 3.1 Type-A External"
                        }, 

                        "AAPL,current-available", 
                        0x0834, 
                        "AAPL,current-extra", 
                        0x0A8C, 
                        "AAPL,current-in-sleep", 
                        0x0A8C, 
                        "AAPL,max-port-current-in-sleep", 
                        0x0834, 
                        "AAPL,device-internal", 
                        Zero, 
                        "AAPL,clock-id", 
                        Buffer (One)
                        {
                             0x01                                            
                        }, 

                        "AAPL,root-hub-depth", 
                        0x1A, 
                        "AAPL,XHC-clock-id", 
                        One, 
                        Buffer (One)
                        {
                             0x00                                             
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}

