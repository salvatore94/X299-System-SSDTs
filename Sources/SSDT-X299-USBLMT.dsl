/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/salvatore/Desktop/SSDT-1-A M I.aml, Wed Dec 19 14:32:06 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000BA0 (2976)
 *     Revision         0x02
 *     Checksum         0xD6
 *     OEM ID           "ALASKA"
 *     OEM Table ID     "A M I "
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "ALASKA", "USBLMT", 0x00000000)
{
    External (_SB_.PCI0.RP05.PXSX, DeviceObj)
    External (_SB_.PCI0.RP07.PXSX, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.HS01, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.HS02, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.HS03, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.HS04, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.HS05, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.HS06, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.HS07, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.HS08, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.HS09, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.HS10, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.HS11, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.HS12, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.HS13, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.HS14, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.SS01, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.SS02, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.SS03, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.SS04, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.SS05, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.SS06, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.SS07, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.SS08, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.SS09, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.SS10, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.USR1, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB.USR2, DeviceObj)

    Method (GPLD, 2, Serialized)
    {
        Name (PCKG, Package (0x01)
        {
            Buffer (0x10){}
        })
        CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
        REV = One
        CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
        VISI = Arg0
        CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
        GPOS = Arg1
        Return (PCKG) /* \GPLD.PCKG */
    }

    Method (GUPC, 1, Serialized)
    {
        Name (PCKG, Package (0x04)
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
        PCKG [Zero] = Arg0
        Return (PCKG) /* \GUPC.PCKG */
    }

    Name (USSD, Package (0x0A)
    {
        One, 
        One, 
        One, 
        One, 
        One, 
        One, 
        One, 
        One, 
        Zero, 
        Zero
    })
    Name (UHSD, Package (0x0E)
    {
        One, 
        One, 
        One, 
        One, 
        One, 
        One, 
        One, 
        One, 
        One, 
        One, 
        One, 
        One, 
        Zero, 
        Zero
    })
    Scope (\_SB.PCI0.XHCI.RHUB.HS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (UHSD [Zero]), One))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.HS02)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (UHSD [One]), 0x02))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.HS03)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (UHSD [0x02]), 0x03))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.HS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (UHSD [0x03]), 0x04))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.HS05)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (UHSD [0x04]), 0x05))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.HS06)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (UHSD [0x05]), 0x06))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.HS07)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (UHSD [0x06]), 0x07))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.HS08)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (UHSD [0x07]), 0x08))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.HS09)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (UHSD [0x08]), 0x09))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.HS10)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (UHSD [0x09]), 0x0A))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.HS11)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (UHSD [0x0A]), 0x0B))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.HS12)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (UHSD [0x0B]), 0x0C))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.HS13)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (UHSD [0x0C]), 0x0D))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.HS14)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (UHSD [0x0D]), 0x0E))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.USR1)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.USR2)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.SS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (USSD [Zero]), One))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.SS02)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (USSD [One]), 0x02))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.SS03)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (USSD [0x02]), 0x03))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.SS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (USSD [0x03]), 0x04))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.SS05)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (USSD [0x04]), 0x05))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.SS06)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (USSD [0x05]), 0x06))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.SS07)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (USSD [0x06]), 0x07))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.SS08)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (USSD [0x07]), 0x08))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.SS09)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (USSD [0x08]), Zero))
        }
    }

    Scope (\_SB.PCI0.XHCI.RHUB.SS10)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (USSD [0x09]), Zero))
        }
    }

    Scope (\_SB.PCI0.RP05.PXSX)
    {
        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (SS01)
            {
                Name (_ADR, One)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Name (UPCP, Package (0x04)
                    {
                        One, 
                        0x0A, 
                        Zero, 
                        Zero
                    })
                    Return (UPCP) /* \_SB_.PCI0.RP05.PXSX.RHUB.SS01._UPC.UPCP */
                }

                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Return (GPLD (One, 0x0F))
                }
            }

            Device (SS02)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                {
                    Return (GUPC (One))
                }

                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Return (GPLD (One, 0x10))
                }
            }

            Device (HS01)
            {
                Name (_ADR, 0x03)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Name (UPCP, Package (0x04)
                    {
                        One, 
                        0x0A, 
                        Zero, 
                        Zero
                    })
                    Return (UPCP) /* \_SB_.PCI0.RP05.PXSX.RHUB.HS01._UPC.UPCP */
                }

                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Return (GPLD (One, 0x0F))
                }
            }

            Device (HS02)
            {
                Name (_ADR, 0x04)  // _ADR: Address
                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                {
                    Return (GUPC (One))
                }

                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Return (GPLD (One, 0x10))
                }
            }
        }
    }

    Scope (\_SB.PCI0.RP07.PXSX)
    {
        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (SS01)
            {
                Name (_ADR, One)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Name (UPCP, Package (0x04)
                    {
                        One, 
                        0x0A, 
                        Zero, 
                        Zero
                    })
                    Return (UPCP) /* \_SB_.PCI0.RP07.PXSX.RHUB.SS01._UPC.UPCP */
                }

                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Return (GPLD (One, 0x11))
                }
            }

            Device (SS02)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Name (UPCP, Package (0x04)
                    {
                        One, 
                        0x0A, 
                        Zero, 
                        Zero
                    })
                    Return (UPCP) /* \_SB_.PCI0.RP07.PXSX.RHUB.SS02._UPC.UPCP */
                }

                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Return (GPLD (One, 0x11))
                }
            }

            Device (HS01)
            {
                Name (_ADR, 0x03)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Name (UPCP, Package (0x04)
                    {
                        One, 
                        0x0A, 
                        Zero, 
                        Zero
                    })
                    Return (UPCP) /* \_SB_.PCI0.RP07.PXSX.RHUB.HS01._UPC.UPCP */
                }

                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Return (GPLD (One, 0x11))
                }
            }

            Device (HS02)
            {
                Name (_ADR, 0x04)  // _ADR: Address
                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                {
                    Return (GUPC (Zero))
                }

                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Return (GPLD (Zero, Zero))
                }
            }
        }
    }
}

