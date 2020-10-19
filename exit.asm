; Program: exit
; Executes the exit syscall
; No input
; Output: only $? (the exit status)
;

        segment .text
        global  start

start:
        mov eax, 60 ; exit syscall number according to... something
                    ; 0x2000001 for OS X... oh, i'm sorry, "mac os"
        mov edi, 5  ; the status value to return
        syscall     ; execute a system call
        end

