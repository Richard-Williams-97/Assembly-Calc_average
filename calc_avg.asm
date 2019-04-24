; File name: calcavg.asm

; void calc_avg(float arr[], int size, float* ptr_result);

.586
.MODEL FLAT

.DATA

.CODE

; void calc_avg(float arr[], int size, float* ptr_result);
; a C float type is allocated with a double-word

_calc_avg    PROC

		 push ebp
		 mov ebp, esp
		 push eax
		 push ebx
		 push ecx
		 push edx
		 push esi

			mov esi, [ebp+8]
			mov ecx, [ebp+12]
			mov ebx, [ebp+12]

			mov eax, 0
	forLoop: 
		add eax, [esi]
		loop forloop

		div ebx

		mov [ebp+16], eax


exit:	pop esi
		pop edx
		pop ecx
		pop ebx
		pop eax
		pop ebp
		ret

_calc_avg    ENDP

END
