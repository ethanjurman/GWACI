#Class: Piece, class for any piece on the board, to be used as a parent class

class Piece
    def initialize(name, grid=nil, pos=nil)
        #name: name of the piece
        #grid: grid object that the piece can prompt to move on
        #pos: string representing position in Algebraic Notation
        @name = name
        @type = "generic piece"
        if(grid!=nil and pos!=nil)
            @grid = grid
            @pos = pos
            grid.addPiece(self, pos)
        end
    end

    def moveToPos(pos)
        #pos: string in AN notation (must be empty)
        @grid.move(@pos, pos)
        @pos = pos
    end
end
