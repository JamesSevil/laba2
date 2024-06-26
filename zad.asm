;------------------------------------------ОБЪЯВЛЕНИЕ ЭКСТЕРНОВ-----------------------------------;
extern scanf                                                                                      ;
extern printf                                                                                     ;
                                                                                                  ;
;-------------------------------------------ВЫДЕЛЕНИЕ ПАМЯТИ--------------------------------------;
section .data                                                                                     ;
    frmt db "%d", 0                                                                               ;
    frmt2 db 0xA, "%d", 0                                                                         ;
    num1 dd 0                                                                                     ;
    num2 dd 0                                                                                     ;
    num3 dd 0                                                                                     ;
    num4 dd 0                                                                                     ;                                                                        
    MSG_1 db 0x17, "Type 1-st num: "                                                              ;
    MSG_2 db 0x17, "Type 2-nd num: "                                                              ;
    MSG_3 db 0x17, "Type 3-rd num: "                                                              ;
    MSG_4 db 0x17, "Type 4-th num: "                                                              ;
    MSG_5 db 0x10, "EXIT CAUSE ERROR "                                                            ;                                                                                    
section .bss                                                                                      ;                                                                                  
    sum resd 1                                                                                    ;
                                                                                                  ;
;-------------------------------------------------ФУНКЦИИ-----------------------------------------;
section .text                                                                                     ;
    global main                                                                                   ;
                                                                                                  ;
sum_of_digits:                                                                                    ;
    mov eax, edi        ; Перемещение аргумента NUM в EAX                                         ;
    xor ecx, ecx        ; Инициализируем счётчик суммы                                            ;
loop_digits:                                                                                      ;
    test eax, eax       ; проверка, равно ли это число нулю                                       ;
    jz end_sum_of_digits  ; Если ноль, выход из цикла                                             ;
    mov edx, 0          ; Очистить EDX для разделения                                             ;
    mov ebx, 10         ; Делитель                                                                ;
    div ebx             ; Разделить EAX на 10                                                     ;
    add ecx, edx        ; Прибавить остаток к сумме                                               ;
    jmp loop_digits     ; Повторяем цикл                                                          ;
end_sum_of_digits:                                                                                ;
    mov eax, ecx        ; Перемещаем сумму в EAX                                                  ;
    ret                 ; Возврат из функции                                                      ;
                                                                                                  ;
main:                                                                                             ;
;---------------------------------------------MSG: Type num1 -------------------------------------;
    mov rax, 1                                                                                    ;
    mov rdi, 1                                                                                    ;
    mov rsi, MSG_1                                                                                ;
    mov rdx, 17                                                                                   ;
    syscall                                                                                       ;
                                                                                                  ;
;------------------------------------------------READ: num1---------------------------------------;
    push rbp                                                                                      ;
    lea rdi, [frmt] ; Формат загрузки                                                             ;
    lea rsi, [num1]                                                                               ;
    call scanf                                                                                    ;
    pop rbp ; Восстанавливаем стек                                                                ;
                                                                                                  ;                                                                                         
;-----0---------------------------------------MSG: Type num2 -------------------------------------;
    mov rax, 1                                                                                    ;
    mov rdi, 1                                                                                    ;
    mov rsi, MSG_2                                                                                ;
    mov rdx, 17                                                                                   ;
    syscall                                                                                       ;
                                                                                                  ;
;-----------------------------------------------READ: num2----------------------------------------;
    push rbp                                                                                      ;
    lea rdi, [frmt] ; Формат загрузки                                                             ;
    lea rsi, [num2]                                                                               ;
    call scanf                                                                                    ;
    pop rbp ; Восстанавливаем стек                                                                ;
                                                                                                  ;
;---0-----------------------------------------MSG: Type num3 -------------------------------------;
    mov rax, 1                                                                                    ;
    mov rdi, 1                                                                                    ;
    mov rsi, MSG_3                                                                                ;
    mov rdx, 17                                                                                   ;
    syscall                                                                                       ;
                                                                                                  ;
;-----------------------------------------------READ: num3----------------------------------------;
    push rbp                                                                                      ;
    lea rdi, [frmt] ; Формат загрузки                                                             ;
    lea rsi, [num3]                                                                               ;
    call scanf                                                                                    ;
    pop rbp ; Восстанавливаем стек                                                                ;
                                                                                                  ;
;---------------------------------------------MSG: Type num4 -------------------------------------;
    mov rax, 1                                                                                    ;
    mov rdi, 1                                                                                    ;
    mov rsi, MSG_4                                                                                ;
    mov rdx, 17                                                                                   ;
    syscall                                                                                       ;
                                                                                                  ;
;-----------------------------------------------READ: num4----------------------------------------;
    push rbp                                                                                      ;
    lea rdi, [frmt] ; Формат загрузки                                                             ;
    lea rsi, [num4]                                                                               ;
    call scanf                                                                                    ;
    pop rbp ; Восстанавливаем стек                                                                ;
                                                                                                  ;
;-------------------------------------ОБРАБОТКА И ВЫВОД СУММЫ-------------------------------------;
    mov eax, [num1]                                                                               ;
    mov edi, eax         ; Передаём num1 в качестве аргумента в sum_of_digits                     ;
    call sum_of_digits                                                                            ;
    cmp eax, 0x9           ; Проверяем условие суммы                                              ;
    jbe .print_num1      ; Если сумма <= 9, то вывод                                              ;
    jmp .check_num2      ; Иначе, переходим к следующему                                          ;
                                                                                                  ;
.print_num1:                                                                                      ;
    push rbp                                                                                      ;
    mov rdi, frmt2                                                                                ;
    mov esi, [num1]                                                                               ;
    xor rax, rax                                                                                  ;
    call printf                                                                                   ;
    pop rbp                                                                                       ;
                                                                                                  ;
.check_num2:                                                                                      ;
    mov eax, [num2]                                                                               ;
    mov edi, eax         ; Передаём num2 в качестве аргумента в sum_of_digits                     ;
    call sum_of_digits                                                                            ;
    cmp eax, 0x9           ; Проверяем условие суммы                                              ;
    jbe .print_num2      ; Если сумма <= 9, то вывод                                              ;
    jmp .check_num3      ; Иначе, переходим к следующему                                          ;
                                                                                                  ;
.print_num2:                                                                                      ;
    push rbp                                                                                      ;
    mov rdi, frmt2                                                                                ;
    mov esi, [num2]                                                                               ;
    xor rax, rax                                                                                  ;
    call printf                                                                                   ;
    pop rbp                                                                                       ;
                                                                                                  ;
.check_num3:                                                                                      ;
    mov eax, [num3]                                                                               ;
    mov edi, eax         ; Передаём num3 в качестве аргумента в sum_of_digits                     ;
    call sum_of_digits                                                                            ;
    cmp eax, 0x9           ; Проверяем условие суммы                                              ;
    jbe .print_num3      ; Если сумма <= 9, то вывод                                              ;
    jmp .check_num4      ; Иначе, переходим к следующему                                          ;
                                                                                                  ;
.print_num3:                                                                                      ;
    push rbp                                                                                      ;
    mov rdi, frmt2                                                                                ;
    mov esi, [num3]                                                                               ;
    xor rax, rax                                                                                  ;
    call printf                                                                                   ;
    pop rbp                                                                                       ;
                                                                                                  ;
.check_num4:                                                                                      ;
    mov eax, [num4]                                                                               ;
    mov edi, eax         ; Передаём num4 в качестве аргумента в sum_of_digits                     ;
    call sum_of_digits                                                                            ;
    cmp eax, 0x9           ; Проверяем условие суммы                                              ;
    jbe .print_num4      ; Если сумма <= 9, то вывод                                              ;
    jmp .exit_program    ; Иначе, переходим к следующему                                          ;
                                                                                                  ;
.print_num4:                                                                                      ;
    push rbp                                                                                      ;
    mov rdi, frmt2          				                                                              ;        
    mov esi, [num4]                                                                               ;
    xor rax, rax                                                                                  ;
    call printf                                                                                   ;
    pop rbp                                                                                       ;
                                                                                                  ;
.exit_program:                                                                                    ;
    ; имитирует return 0                                                                          ;
    mov rax, 0                                                                                    ;
    ret                                                                                           ;
;-----------------------------------------!!!!!!WIN!!!!!------------------------------------------;
