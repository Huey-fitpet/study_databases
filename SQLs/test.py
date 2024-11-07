

skill_code = [400,2048,1024,16384,8452]
code = [4,16,128,256,1024,2048,8192,16384]

print(bin(skill_code[0]))
print(bin(code[1] + code[5] + code[6]))
print(skill_code[0] | (code[1] + code[5] + code[6]))

