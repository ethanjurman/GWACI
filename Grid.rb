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
end


