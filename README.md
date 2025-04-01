## x86 Assembly Jargon Abstract ℹ️
This assembly program, designed for use with the Irvine32 library, presents a simple menu-driven interface where the user can either input a number or choose to exit. When the program starts, it displays a welcome message followed by a menu with two options: (1) Enter a number or (2) Quit. The program then waits for user input and evaluates their selection. If the user enters an invalid choice, it prompts them to try again. If they choose to enter a number, the program asks for a numeric input and determines whether it is zero or non-zero. If the input is zero, the program outputs "0." If the input is non-zero, it appends an extra zero and "0." to the input before displaying it.

The program uses loops and conditional jumps to navigate through different sections, ensuring that incorrect inputs do not crash the execution. It leverages Irvine32’s built-in procedures for handling string output (WriteString), integer input (ReadInt), and integer output (WriteInt). The menu and number processing logic repeat until the user selects the quit option, which terminates the program. The implementation structure makes use of .data for storing messages and variables, and .code for executing the logic, maintaining a structured approach to user interaction in assembly language.

## Prerequisites ℹ️
- [MASM32 SDK](http://masm32.com/)
- [Irvine32 Library](http://kipirvine.com/asm/)

## Setup Instructions ℹ️
1. Download and install the **MASM32 SDK** to `C:\masm32`.
2. Download and extract the **Irvine32 library**.
3. Copy `Irvine32.inc` to `C:\masm32\include\`.
4. Copy `Irvine32.lib` to `C:\masm32\lib\`.
5. Copy `Irvine32.dll` to the same directory as the `.exe` file after compiling.

## Compiling and Running ℹ️
1. Open MASM command prompt (`cmd`) in `C:\masm32\bin`.
2. Assemble and link the program:
   ```bash
   ml /c /coff Quiz_Build.asm
   link /subsystem:console Quiz_Build.obj Irvine32.lib kernel32.lib user32.lib
