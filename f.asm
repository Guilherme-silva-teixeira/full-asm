section .data
    msg db 'Hello, world!', 0

section .text
    global _start

_start:
    ; Escrever a string na tela
    mov ah, 09h         ; Código da função de serviço para escrever uma string
    mov dx, msg         ; DX aponta para a string
    int 21h             ; Chamada de interrupção 21h para imprimir a string

    ; Encerrar o programa
    mov ah, 4Ch         ; Código da função de serviço para terminar o programa
    int 21h             ; Chamada de interrupção 21h para encerrar o programa
