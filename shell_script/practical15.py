n = int(input("Enter the number you want to convert: "))
def dec_to_binary(n):
    binary_num = ''
    while n > 0:
        remainder = n % 2
        binary_num = binary_num + str(remainder)
        n = n // 2
    return  binary_num[::-1]

def dec_to_hexa(n):
    hex_dict = {10:'A',11:'B',12:'C',13:'D',14:'E',15:'F'}
    hex_num = ''
    while n > 0:
        remainder = n % 16
        if remainder in hex_dict:
            hex_num = hex_num + str(hex_dict[remainder])
        else:
            hex_num = hex_num + str(remainder)
        n = n // 16
    return hex_num[::-1]

def dec_to_octal(n):
    oct_num = ''
    while n > 0:
        remainder = n % 8
        oct_num = oct_num + str(remainder)
        n = n // 8
    return oct_num[::-1]

print(f"The binary equivalent of {n} is {dec_to_binary(n)}")
print(f"The octal equivalent of {n} is {dec_to_octal(n)}")
print(f"The hexadecimal equivalent of {n} is {dec_to_hexa(n)}")
