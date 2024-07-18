asect 0x00

# read value from address 0x03 into r1 (count)
ldi r0, 0x03
ld r0, r1

# write 1 to address 0x04
ldi r2, 0x04
ldi r3, 1
st r2, r3

# add 1 to the count
add r3, r1

# read the value (sum) from address 0x00 and write it to r1
ldi r0, 0x00
ld r0, r1

# write the amount (current account) to 0x03
ldi r0, 0x03
st r0, r1

# read the value from address 0x02 (record) into r3
ldi r2, 0x02
ld r2, r3

# write the record
if
   cmp r3, r1
is lt
   st r2, r1
fi

halt
end