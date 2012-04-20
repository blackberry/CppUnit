# Blackberry Port of cppunit 1.12.1

This is intended to be the sole port of cppunit to the Blackberry/QNX platform. To avoid fragmentation, please do not use any other version of cppunit.

Note there is no official owner for this project. Instead, this project will use an open source development model. If you find a bug in the port, fix it yourself and submit the fix. The port is provided "as is" and without any express or implied warranties.

### Prerequisites

- Blackberry Native SDK (NDK) for Tablet OS

### Build Instructions

1. In Momentics, import cppunit as an existing project.
2. Select the desired build configuration.
3. Build.
4. This will produce a library for the selected configuration (e.g. libcppunit.so).
5. Programs that use cppunit will need to include the path to the include directory (cppunit/include) as well as the
   path to the library in their project files.
   
### Gnu libc

To build against GNU libc instead of the default Dinkumware libc, define the GNULIBC=yes macro in the build. For example from the command line

     make GNULIBC=yes

### Notes

- Only tested compilation in Windows with Momentics.
- The msvc6, qttestrunner and DllPlugInTester folders were disabled in the build, as they result in build errors
  and weren't needed to run tests on the PlayBook.

### TODO

- Test that it builds in Momentics on other operating systems (Mac, Linux).  
