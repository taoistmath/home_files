from argparse import ArgumentParser
from sys import exit


class Lucas:

    def __init__(self, var1, var2, num_elements):
        self.sequence = []
        self.generate_sequence(var1, var2, num_elements)
        self.print_sequence(var1, var2, num_elements)

    def generate_sequence(self, var1, var2, num_elements):
        if num_elements == 0:
            return
        elif num_elements == 1:
            self.sequence = [var1]
        elif num_elements >= 2:
            self.sequence = [var1, var2]
            self.generate_next_element(var1, var2, num_elements)

    def generate_next_element(self, var1, var2, num_elements):
        if len(self.sequence) < num_elements:
            varn = var1 + var2
            self.sequence.append(varn)
            var1 = var2
            var2 = varn
            self.generate_next_element(var1, var2, num_elements)

    def print_sequence(self, var1, var2, num_elements):
        if num_elements == 1: print("The first element of the Lucas Sequence starting with {0} and {1} is: {3}".format(
            var1, var2, num_elements, self.sequence))
        else: print("The first {2} elements of the Lucas Sequence starting with {0} and {1} is: {3}".format(
            var1, var2, num_elements, self.sequence))

def get_arguments(args=None):
    parser = ArgumentParser(description='Generates Lucas Sequence')
    parser.add_argument('var1', help='Starting Variable', type=int)
    parser.add_argument('var2', help='Second Variable', type=int)
    parser.add_argument('num_elements', help='Number if elements in the sequence', type=int)
    return parser.parse_args(args)


def main(args=None):
    try:
        args = get_arguments(args)
        Lucas(var1=args.var1, var2=args.var2, num_elements=args.num_elements)
    except Exception as e:
        print(e.message)
        exit(1)

if __name__ == '__main__':
    main()
