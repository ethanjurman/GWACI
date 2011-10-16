#Class: Grid, class that represents a board of a givin size

class Grid
    def initialize(name, sizeX=8, sizeY=8)
        #name: name of the board
        #sizeX: size of the X axis (a..z); defaults to 8
        #sizeY: size of the Y axis (1..26); defaults to 8 
        @name = name
        @sizeX = sizeX
        @sizeY = sizeY
        @grid = {}
        #populate array
        for i in (0..sizeX-1)
            key = (i+97).chr()
            @grid.merge!(key=>{})
            for j in (0..sizeY-1)
                @grid[key].merge!(j.to_s() => nil)
            end
        end
    end

    def move(pos1, pos2)
        #method to move a piece from one position to the other
        #pos1: string in AN notation, first position (contains piece)
        #pos2: string in AN notation, second position (must be empty)
        @grid[pos2[0]][pos2[1]] = @grid[pos1[0]][pos1[1]]
        @grid[pos1[0]][pos1[1]] = nil
    end

    def addPiece(piece, pos)
        #method to place a piece onto the board
        #piece: piece object
        #pos: string in AN notation, position piece will be placed on (must be empty)
        @grid[pos[0]][pos[1]] = piece
    end

end
