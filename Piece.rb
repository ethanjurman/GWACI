#Class: Piece, class for any piece on the board, to be used as a parent class

class Piece
    def initialize(name, grid=nil, placement=nil)
        #name: name of the piece
        #grid: grid object that the piece can prompt to move on
        #placement: string representing position in Algebraic Notation
        @name = name
        @type = "generic piece"
        if(grid!=nil and placement!=nil)
            grid.addPiece(self, placement)
        end
    end
end
