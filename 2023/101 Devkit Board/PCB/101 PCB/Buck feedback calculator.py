vout = 5

for rb in range(0,10000,100):
    rt = ((vout/0.806) - 1) * rb
    print(rb, round(rt, 0), sep="\t")
