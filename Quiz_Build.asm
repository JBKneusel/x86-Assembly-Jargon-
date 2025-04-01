INCLUDE Irvine32.inc

.data
    UserInput0 BYTE "Please make menu selection: ", 0
    UserInput1 BYTE "Please enter a number less than ten 10 digits:  ", 0
    UserInput2 BYTE "Please enter another number: ", 0
    WelcomeMessage BYTE "Welcome to the Quiz! ", 0 
    TryAgain BYTE "Invalid input, please try again", 0
    BigArray DWORD 32 DUP(?)
    Menu BYTE "QUIZ MENU ", 0
    MenuB BYTE "    1. ENTER A NUMBER ", 0
    MenuC BYTE "    2. QUIT " , 0
    Zerostring BYTE "0.", 0
    Justzero BYTE "0", 0

.code
main PROC
again:
    ; Display the menu
    mov edx, OFFSET WelcomeMessage	
    CALL WriteString			
    CALL Crlf
    CALL Crlf
    mov edx, OFFSET Menu	
    CALL WriteString			
    CALL Crlf
    mov edx, OFFSET MenuB	
    CALL WriteString			
    CALL Crlf
    mov edx, OFFSET MenuC	
    CALL WriteString			
    CALL Crlf

    ; Get user input
    mov edx, OFFSET UserInput0		
    CALL WriteString
    CALL ReadInt  ; User input stored in EAX

    ; Compare input choices
    CMP EAX, 1 
    JE number
    CMP EAX, 0
    JE number
    CMP EAX, 2
    JE quit

    ; Invalid input
    mov edx, OFFSET TryAgain
    CALL WriteString
    CALL Crlf
    JMP again

number:
    ; Get Input from user
    mov edx, OFFSET UserInput1
    CALL WriteString
    CALL ReadInt   ; Store user number in EAX

    CMP EAX, 0
    JE default
    JMP decimal

default:  
    CALL WriteInt
    mov edx, OFFSET ZeroString
    CALL WriteString
    CALL Crlf
    JMP again  ; Return to menu

decimal: 
    CALL WriteInt
    mov edx, OFFSET Justzero
    CALL WriteString
    mov edx, OFFSET ZeroString
    CALL WriteString
    CALL Crlf
    JMP again  ; Return to menu

quit:
    exit
main ENDP

END main