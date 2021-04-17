import os

def main():
    os.system("rm ~/.config/qtile/config.json")
    os.system("cp theme ~/.config/qtile/config.json")
    print("Theme appliedd!!")
    
main()
