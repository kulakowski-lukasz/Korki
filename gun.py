class Clip:

    def __init__(self, rounds):
        self.rounds = rounds
        self.reload = rounds

    def load_clip(self):
        self.rounds = self.reload

class Gun:

    def __init__(self, rounds):
        self.clip = Clip(rounds)

    def load_gun(self):
        self.clip.load_clip()

    def shoot(self, times):
        if times > self.clip.rounds:
            print("RELOAD!")
        else:
            for shoots in range(times):
                print("BANG!")
                self.clip.rounds -= 1

    def check_clip(self):
        print(self.clip.rounds)


gun = Gun(5)
gun.load_gun()
gun.shoot(3)
gun.check_clip()
gun.shoot(1)
gun.check_clip()