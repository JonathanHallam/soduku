class Sudoku_doer
  def sudokuer(puzzle)

        # Right, a little back story to this utter monstrosity
        # I've been working on this for about 3 days.
        # I used to have a line on line 181 that was...
        # sudokuer(puzzle) if puzzle.flatten.include?(0) ; puzzle
        # I've tested that line with a simpler version of this and
        # it worked perfectly, but for some reason in this it threw
        # out a load of really long arrays of arrays seemingly ignoring
        # quite a lot of the stuff that worked...
        # I just copied and pasted the bits that work a few times and it
        # can now solve fairly hard problems but, if anyone could
        # help me work out what i did wrong it would be so appreciated...
    

        blocks = puzzle.map{|row| row.each_slice(3).to_a}.transpose.flatten.each_slice(9).to_a
        columns = puzzle.transpose
        x = [1, 2, 3, 4, 5, 6, 7, 8, 9]

        puzzle[0][0] = x - puzzle[0] - columns[0] - blocks[0] if puzzle[0][0] == 0
        puzzle[0][1] = x - puzzle[0] - columns[1] - blocks[0] if puzzle[0][1] == 0
        puzzle[0][2] = x - puzzle[0] - columns[2] - blocks[0] if puzzle[0][2] == 0
        puzzle[0][3] = x - puzzle[0] - columns[3] - blocks[3] if puzzle[0][3] == 0
        puzzle[0][4] = x - puzzle[0] - columns[4] - blocks[3] if puzzle[0][4] == 0
        puzzle[0][5] = x - puzzle[0] - columns[5] - blocks[3] if puzzle[0][5] == 0
        puzzle[0][6] = x - puzzle[0] - columns[6] - blocks[6] if puzzle[0][6] == 0
        puzzle[0][7] = x - puzzle[0] - columns[7] - blocks[6] if puzzle[0][7] == 0
        puzzle[0][8] = x - puzzle[0] - columns[8] - blocks[6] if puzzle[0][8] == 0

        puzzle[1][0] = x - puzzle[1] - columns[0] - blocks[0] if puzzle[1][0] == 0
        puzzle[1][1] = x - puzzle[1] - columns[1] - blocks[0] if puzzle[1][1] == 0
        puzzle[1][2] = x - puzzle[1] - columns[2] - blocks[0] if puzzle[1][2] == 0
        puzzle[1][3] = x - puzzle[1] - columns[3] - blocks[3] if puzzle[1][3] == 0
        puzzle[1][4] = x - puzzle[1] - columns[4] - blocks[3] if puzzle[1][4] == 0
        puzzle[1][5] = x - puzzle[1] - columns[5] - blocks[3] if puzzle[1][5] == 0
        puzzle[1][6] = x - puzzle[1] - columns[6] - blocks[6] if puzzle[1][6] == 0
        puzzle[1][7] = x - puzzle[1] - columns[7] - blocks[6] if puzzle[1][7] == 0
        puzzle[1][8] = x - puzzle[1] - columns[8] - blocks[6] if puzzle[1][8] == 0

        puzzle[2][0] = x - puzzle[2] - columns[0] - blocks[0] if puzzle[2][0] == 0
        puzzle[2][1] = x - puzzle[2] - columns[1] - blocks[0] if puzzle[2][1] == 0
        puzzle[2][2] = x - puzzle[2] - columns[2] - blocks[0] if puzzle[2][2] == 0
        puzzle[2][3] = x - puzzle[2] - columns[3] - blocks[3] if puzzle[2][3] == 0
        puzzle[2][4] = x - puzzle[2] - columns[4] - blocks[3] if puzzle[2][4] == 0
        puzzle[2][5] = x - puzzle[2] - columns[5] - blocks[3] if puzzle[2][5] == 0
        puzzle[2][6] = x - puzzle[2] - columns[6] - blocks[6] if puzzle[2][6] == 0
        puzzle[2][7] = x - puzzle[2] - columns[7] - blocks[6] if puzzle[2][7] == 0
        puzzle[2][8] = x - puzzle[2] - columns[8] - blocks[6] if puzzle[2][8] == 0

        puzzle[3][0] = x - puzzle[3] - columns[0] - blocks[1] if puzzle[3][0] == 0
        puzzle[3][1] = x - puzzle[3] - columns[1] - blocks[1] if puzzle[3][1] == 0
        puzzle[3][2] = x - puzzle[3] - columns[2] - blocks[1] if puzzle[3][2] == 0
        puzzle[3][3] = x - puzzle[3] - columns[3] - blocks[4] if puzzle[3][3] == 0
        puzzle[3][4] = x - puzzle[3] - columns[4] - blocks[4] if puzzle[3][4] == 0
        puzzle[3][5] = x - puzzle[3] - columns[5] - blocks[4] if puzzle[3][5] == 0
        puzzle[3][6] = x - puzzle[3] - columns[6] - blocks[7] if puzzle[3][6] == 0
        puzzle[3][7] = x - puzzle[3] - columns[7] - blocks[7] if puzzle[3][7] == 0
        puzzle[3][8] = x - puzzle[3] - columns[8] - blocks[7] if puzzle[3][8] == 0

        puzzle[4][0] = x - puzzle[4] - columns[0] - blocks[1] if puzzle[4][0] == 0
        puzzle[4][1] = x - puzzle[4] - columns[1] - blocks[1] if puzzle[4][1] == 0
        puzzle[4][2] = x - puzzle[4] - columns[2] - blocks[1] if puzzle[4][2] == 0
        puzzle[4][3] = x - puzzle[4] - columns[3] - blocks[4] if puzzle[4][3] == 0
        puzzle[4][4] = x - puzzle[4] - columns[4] - blocks[4] if puzzle[4][4] == 0
        puzzle[4][5] = x - puzzle[4] - columns[5] - blocks[4] if puzzle[4][5] == 0
        puzzle[4][6] = x - puzzle[4] - columns[6] - blocks[7] if puzzle[4][6] == 0
        puzzle[4][7] = x - puzzle[4] - columns[7] - blocks[7] if puzzle[4][7] == 0
        puzzle[4][8] = x - puzzle[4] - columns[8] - blocks[7] if puzzle[4][8] == 0

        puzzle[5][0] = x - puzzle[5] - columns[0] - blocks[1] if puzzle[5][0] == 0
        puzzle[5][1] = x - puzzle[5] - columns[1] - blocks[1] if puzzle[5][1] == 0
        puzzle[5][2] = x - puzzle[5] - columns[2] - blocks[1] if puzzle[5][2] == 0
        puzzle[5][3] = x - puzzle[5] - columns[3] - blocks[4] if puzzle[5][3] == 0
        puzzle[5][4] = x - puzzle[5] - columns[4] - blocks[4] if puzzle[5][4] == 0
        puzzle[5][5] = x - puzzle[5] - columns[5] - blocks[4] if puzzle[5][5] == 0
        puzzle[5][6] = x - puzzle[5] - columns[6] - blocks[7] if puzzle[5][6] == 0
        puzzle[5][7] = x - puzzle[5] - columns[7] - blocks[7] if puzzle[5][7] == 0
        puzzle[5][8] = x - puzzle[5] - columns[8] - blocks[7] if puzzle[5][8] == 0

        puzzle[6][0] = x - puzzle[6] - columns[0] - blocks[2] if puzzle[6][0] == 0
        puzzle[6][1] = x - puzzle[6] - columns[1] - blocks[2] if puzzle[6][1] == 0
        puzzle[6][2] = x - puzzle[6] - columns[2] - blocks[2] if puzzle[6][2] == 0
        puzzle[6][3] = x - puzzle[6] - columns[3] - blocks[5] if puzzle[6][3] == 0
        puzzle[6][4] = x - puzzle[6] - columns[4] - blocks[5] if puzzle[6][4] == 0
        puzzle[6][5] = x - puzzle[6] - columns[5] - blocks[5] if puzzle[6][5] == 0
        puzzle[6][6] = x - puzzle[6] - columns[6] - blocks[8] if puzzle[6][6] == 0
        puzzle[6][7] = x - puzzle[6] - columns[7] - blocks[8] if puzzle[6][7] == 0
        puzzle[6][8] = x - puzzle[6] - columns[8] - blocks[8] if puzzle[6][8] == 0

        puzzle[7][0] = x - puzzle[7] - columns[0] - blocks[2] if puzzle[7][0] == 0
        puzzle[7][1] = x - puzzle[7] - columns[1] - blocks[2] if puzzle[7][1] == 0
        puzzle[7][2] = x - puzzle[7] - columns[2] - blocks[2] if puzzle[7][2] == 0
        puzzle[7][3] = x - puzzle[7] - columns[3] - blocks[5] if puzzle[7][3] == 0
        puzzle[7][4] = x - puzzle[7] - columns[4] - blocks[5] if puzzle[7][4] == 0
        puzzle[7][5] = x - puzzle[7] - columns[5] - blocks[5] if puzzle[7][5] == 0
        puzzle[7][6] = x - puzzle[7] - columns[6] - blocks[8] if puzzle[7][6] == 0
        puzzle[7][7] = x - puzzle[7] - columns[7] - blocks[8] if puzzle[7][7] == 0
        puzzle[7][8] = x - puzzle[7] - columns[8] - blocks[8] if puzzle[7][8] == 0

        puzzle[8][0] = x - puzzle[8] - columns[0] - blocks[2] if puzzle[8][0] == 0
        puzzle[8][1] = x - puzzle[8] - columns[1] - blocks[2] if puzzle[8][1] == 0
        puzzle[8][2] = x - puzzle[8] - columns[2] - blocks[2] if puzzle[8][2] == 0
        puzzle[8][3] = x - puzzle[8] - columns[3] - blocks[5] if puzzle[8][3] == 0
        puzzle[8][4] = x - puzzle[8] - columns[4] - blocks[5] if puzzle[8][4] == 0
        puzzle[8][5] = x - puzzle[8] - columns[5] - blocks[5] if puzzle[8][5] == 0
        puzzle[8][6] = x - puzzle[8] - columns[6] - blocks[8] if puzzle[8][6] == 0
        puzzle[8][7] = x - puzzle[8] - columns[7] - blocks[8] if puzzle[8][7] == 0
        puzzle[8][8] = x - puzzle[8] - columns[8] - blocks[8] if puzzle[8][8] == 0


        def refiner(arry)
          block_1 = { 1 => [], 2 => [], 3 => [], 4 => [], 5 => [],
                      6 => [], 7 => [], 8 => [], 9 => []}

          arry.map { |x|  if x.kind_of?(Integer)
                            block_1[x] << arry.index(x)
                          else x.kind_of?(Array)
                            x.map {|y| block_1[y] << arry.index(x)}
                          end}

          block_1 = block_1.each { |key, value| block_1.delete(key) if value.length != 1}

          block_1.each { |key, value| arry[value[0]] = key }
          arry
        end

        def flattener(puzzle)
          puzzle[0] = puzzle[0].map { |x| x = x[0] if x.kind_of?(Array) && x.length == 1 ; x = x}
          puzzle[1] = puzzle[1].map { |x| x = x[0] if x.kind_of?(Array) && x.length == 1 ; x = x}
          puzzle[2] = puzzle[2].map { |x| x = x[0] if x.kind_of?(Array) && x.length == 1 ; x = x}
          puzzle[3] = puzzle[3].map { |x| x = x[0] if x.kind_of?(Array) && x.length == 1 ; x = x}
          puzzle[4] = puzzle[4].map { |x| x = x[0] if x.kind_of?(Array) && x.length == 1 ; x = x}
          puzzle[5] = puzzle[5].map { |x| x = x[0] if x.kind_of?(Array) && x.length == 1 ; x = x}
          puzzle[6] = puzzle[6].map { |x| x = x[0] if x.kind_of?(Array) && x.length == 1 ; x = x}
          puzzle[7] = puzzle[7].map { |x| x = x[0] if x.kind_of?(Array) && x.length == 1 ; x = x}
          puzzle[8] = puzzle[8].map { |x| x = x[0] if x.kind_of?(Array) && x.length == 1 ; x = x}
        end
        flattener(puzzle)

        puzzle.each { |x| refiner(x) }

        flattener(puzzle)

        columns = puzzle.transpose

        puzzle = columns.each {|x| refiner(x)}.transpose

        flattener(puzzle)

        blocks[0] = puzzle[0][0..2] + puzzle[1][0..2] + puzzle[2][0..2]
        blocks[1] = puzzle[3][0..2] + puzzle[4][0..2] + puzzle[5][0..2]
        blocks[2] = puzzle[6][0..2] + puzzle[7][0..2] + puzzle[8][0..2]
        blocks[3] = puzzle[0][3..5] + puzzle[1][3..5] + puzzle[2][3..5]
        blocks[4] = puzzle[3][3..5] + puzzle[4][3..5] + puzzle[5][3..5]
        blocks[5] = puzzle[6][3..5] + puzzle[7][3..5] + puzzle[8][3..5]
        blocks[6] = puzzle[0][6..8] + puzzle[1][6..8] + puzzle[2][6..8]
        blocks[7] = puzzle[3][6..8] + puzzle[4][6..8] + puzzle[5][6..8]
        blocks[8] = puzzle[6][6..8] + puzzle[7][6..8] + puzzle[8][6..8]

        blocks.each { |x| refiner(x)}

        puzzle[0] = blocks[0][0..2] + blocks[3][0..2] + blocks[6][0..2]
        puzzle[1] = blocks[0][3..5] + blocks[3][3..5] + blocks[6][3..5]
        puzzle[2] = blocks[0][6..8] + blocks[3][6..8] + blocks[6][6..8]
        puzzle[3] = blocks[1][0..2] + blocks[4][0..2] + blocks[7][0..2]
        puzzle[4] = blocks[1][3..5] + blocks[4][3..5] + blocks[7][3..5]
        puzzle[5] = blocks[1][6..8] + blocks[4][6..8] + blocks[7][6..8]
        puzzle[6] = blocks[2][0..2] + blocks[5][0..2] + blocks[8][0..2]
        puzzle[7] = blocks[2][3..5] + blocks[5][3..5] + blocks[8][3..5]
        puzzle[8] = blocks[2][6..8] + blocks[5][6..8] + blocks[8][6..8]

        puzzle[0] = puzzle[0].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[1] = puzzle[1].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[2] = puzzle[2].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[3] = puzzle[3].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[4] = puzzle[4].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[5] = puzzle[5].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[6] = puzzle[6].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[7] = puzzle[7].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[8] = puzzle[8].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten

        blocks = puzzle.map{|row| row.each_slice(3).to_a}.transpose.flatten.each_slice(9).to_a
        columns = puzzle.transpose
        x = [1, 2, 3, 4, 5, 6, 7, 8, 9]

        puzzle[0][0] = x - puzzle[0] - columns[0] - blocks[0] if puzzle[0][0] == 0
        puzzle[0][1] = x - puzzle[0] - columns[1] - blocks[0] if puzzle[0][1] == 0
        puzzle[0][2] = x - puzzle[0] - columns[2] - blocks[0] if puzzle[0][2] == 0
        puzzle[0][3] = x - puzzle[0] - columns[3] - blocks[3] if puzzle[0][3] == 0
        puzzle[0][4] = x - puzzle[0] - columns[4] - blocks[3] if puzzle[0][4] == 0
        puzzle[0][5] = x - puzzle[0] - columns[5] - blocks[3] if puzzle[0][5] == 0
        puzzle[0][6] = x - puzzle[0] - columns[6] - blocks[6] if puzzle[0][6] == 0
        puzzle[0][7] = x - puzzle[0] - columns[7] - blocks[6] if puzzle[0][7] == 0
        puzzle[0][8] = x - puzzle[0] - columns[8] - blocks[6] if puzzle[0][8] == 0

        puzzle[1][0] = x - puzzle[1] - columns[0] - blocks[0] if puzzle[1][0] == 0
        puzzle[1][1] = x - puzzle[1] - columns[1] - blocks[0] if puzzle[1][1] == 0
        puzzle[1][2] = x - puzzle[1] - columns[2] - blocks[0] if puzzle[1][2] == 0
        puzzle[1][3] = x - puzzle[1] - columns[3] - blocks[3] if puzzle[1][3] == 0
        puzzle[1][4] = x - puzzle[1] - columns[4] - blocks[3] if puzzle[1][4] == 0
        puzzle[1][5] = x - puzzle[1] - columns[5] - blocks[3] if puzzle[1][5] == 0
        puzzle[1][6] = x - puzzle[1] - columns[6] - blocks[6] if puzzle[1][6] == 0
        puzzle[1][7] = x - puzzle[1] - columns[7] - blocks[6] if puzzle[1][7] == 0
        puzzle[1][8] = x - puzzle[1] - columns[8] - blocks[6] if puzzle[1][8] == 0

        puzzle[2][0] = x - puzzle[2] - columns[0] - blocks[0] if puzzle[2][0] == 0
        puzzle[2][1] = x - puzzle[2] - columns[1] - blocks[0] if puzzle[2][1] == 0
        puzzle[2][2] = x - puzzle[2] - columns[2] - blocks[0] if puzzle[2][2] == 0
        puzzle[2][3] = x - puzzle[2] - columns[3] - blocks[3] if puzzle[2][3] == 0
        puzzle[2][4] = x - puzzle[2] - columns[4] - blocks[3] if puzzle[2][4] == 0
        puzzle[2][5] = x - puzzle[2] - columns[5] - blocks[3] if puzzle[2][5] == 0
        puzzle[2][6] = x - puzzle[2] - columns[6] - blocks[6] if puzzle[2][6] == 0
        puzzle[2][7] = x - puzzle[2] - columns[7] - blocks[6] if puzzle[2][7] == 0
        puzzle[2][8] = x - puzzle[2] - columns[8] - blocks[6] if puzzle[2][8] == 0

        puzzle[3][0] = x - puzzle[3] - columns[0] - blocks[1] if puzzle[3][0] == 0
        puzzle[3][1] = x - puzzle[3] - columns[1] - blocks[1] if puzzle[3][1] == 0
        puzzle[3][2] = x - puzzle[3] - columns[2] - blocks[1] if puzzle[3][2] == 0
        puzzle[3][3] = x - puzzle[3] - columns[3] - blocks[4] if puzzle[3][3] == 0
        puzzle[3][4] = x - puzzle[3] - columns[4] - blocks[4] if puzzle[3][4] == 0
        puzzle[3][5] = x - puzzle[3] - columns[5] - blocks[4] if puzzle[3][5] == 0
        puzzle[3][6] = x - puzzle[3] - columns[6] - blocks[7] if puzzle[3][6] == 0
        puzzle[3][7] = x - puzzle[3] - columns[7] - blocks[7] if puzzle[3][7] == 0
        puzzle[3][8] = x - puzzle[3] - columns[8] - blocks[7] if puzzle[3][8] == 0

        puzzle[4][0] = x - puzzle[4] - columns[0] - blocks[1] if puzzle[4][0] == 0
        puzzle[4][1] = x - puzzle[4] - columns[1] - blocks[1] if puzzle[4][1] == 0
        puzzle[4][2] = x - puzzle[4] - columns[2] - blocks[1] if puzzle[4][2] == 0
        puzzle[4][3] = x - puzzle[4] - columns[3] - blocks[4] if puzzle[4][3] == 0
        puzzle[4][4] = x - puzzle[4] - columns[4] - blocks[4] if puzzle[4][4] == 0
        puzzle[4][5] = x - puzzle[4] - columns[5] - blocks[4] if puzzle[4][5] == 0
        puzzle[4][6] = x - puzzle[4] - columns[6] - blocks[7] if puzzle[4][6] == 0
        puzzle[4][7] = x - puzzle[4] - columns[7] - blocks[7] if puzzle[4][7] == 0
        puzzle[4][8] = x - puzzle[4] - columns[8] - blocks[7] if puzzle[4][8] == 0

        puzzle[5][0] = x - puzzle[5] - columns[0] - blocks[1] if puzzle[5][0] == 0
        puzzle[5][1] = x - puzzle[5] - columns[1] - blocks[1] if puzzle[5][1] == 0
        puzzle[5][2] = x - puzzle[5] - columns[2] - blocks[1] if puzzle[5][2] == 0
        puzzle[5][3] = x - puzzle[5] - columns[3] - blocks[4] if puzzle[5][3] == 0
        puzzle[5][4] = x - puzzle[5] - columns[4] - blocks[4] if puzzle[5][4] == 0
        puzzle[5][5] = x - puzzle[5] - columns[5] - blocks[4] if puzzle[5][5] == 0
        puzzle[5][6] = x - puzzle[5] - columns[6] - blocks[7] if puzzle[5][6] == 0
        puzzle[5][7] = x - puzzle[5] - columns[7] - blocks[7] if puzzle[5][7] == 0
        puzzle[5][8] = x - puzzle[5] - columns[8] - blocks[7] if puzzle[5][8] == 0

        puzzle[6][0] = x - puzzle[6] - columns[0] - blocks[2] if puzzle[6][0] == 0
        puzzle[6][1] = x - puzzle[6] - columns[1] - blocks[2] if puzzle[6][1] == 0
        puzzle[6][2] = x - puzzle[6] - columns[2] - blocks[2] if puzzle[6][2] == 0
        puzzle[6][3] = x - puzzle[6] - columns[3] - blocks[5] if puzzle[6][3] == 0
        puzzle[6][4] = x - puzzle[6] - columns[4] - blocks[5] if puzzle[6][4] == 0
        puzzle[6][5] = x - puzzle[6] - columns[5] - blocks[5] if puzzle[6][5] == 0
        puzzle[6][6] = x - puzzle[6] - columns[6] - blocks[8] if puzzle[6][6] == 0
        puzzle[6][7] = x - puzzle[6] - columns[7] - blocks[8] if puzzle[6][7] == 0
        puzzle[6][8] = x - puzzle[6] - columns[8] - blocks[8] if puzzle[6][8] == 0

        puzzle[7][0] = x - puzzle[7] - columns[0] - blocks[2] if puzzle[7][0] == 0
        puzzle[7][1] = x - puzzle[7] - columns[1] - blocks[2] if puzzle[7][1] == 0
        puzzle[7][2] = x - puzzle[7] - columns[2] - blocks[2] if puzzle[7][2] == 0
        puzzle[7][3] = x - puzzle[7] - columns[3] - blocks[5] if puzzle[7][3] == 0
        puzzle[7][4] = x - puzzle[7] - columns[4] - blocks[5] if puzzle[7][4] == 0
        puzzle[7][5] = x - puzzle[7] - columns[5] - blocks[5] if puzzle[7][5] == 0
        puzzle[7][6] = x - puzzle[7] - columns[6] - blocks[8] if puzzle[7][6] == 0
        puzzle[7][7] = x - puzzle[7] - columns[7] - blocks[8] if puzzle[7][7] == 0
        puzzle[7][8] = x - puzzle[7] - columns[8] - blocks[8] if puzzle[7][8] == 0

        puzzle[8][0] = x - puzzle[8] - columns[0] - blocks[2] if puzzle[8][0] == 0
        puzzle[8][1] = x - puzzle[8] - columns[1] - blocks[2] if puzzle[8][1] == 0
        puzzle[8][2] = x - puzzle[8] - columns[2] - blocks[2] if puzzle[8][2] == 0
        puzzle[8][3] = x - puzzle[8] - columns[3] - blocks[5] if puzzle[8][3] == 0
        puzzle[8][4] = x - puzzle[8] - columns[4] - blocks[5] if puzzle[8][4] == 0
        puzzle[8][5] = x - puzzle[8] - columns[5] - blocks[5] if puzzle[8][5] == 0
        puzzle[8][6] = x - puzzle[8] - columns[6] - blocks[8] if puzzle[8][6] == 0
        puzzle[8][7] = x - puzzle[8] - columns[7] - blocks[8] if puzzle[8][7] == 0
        puzzle[8][8] = x - puzzle[8] - columns[8] - blocks[8] if puzzle[8][8] == 0

        flattener(puzzle)

        puzzle.each { |x| refiner(x) }

        flattener(puzzle)

        columns = puzzle.transpose

        puzzle = columns.each {|x| refiner(x)}.transpose

        flattener(puzzle)

        blocks[0] = puzzle[0][0..2] + puzzle[1][0..2] + puzzle[2][0..2]
        blocks[1] = puzzle[3][0..2] + puzzle[4][0..2] + puzzle[5][0..2]
        blocks[2] = puzzle[6][0..2] + puzzle[7][0..2] + puzzle[8][0..2]
        blocks[3] = puzzle[0][3..5] + puzzle[1][3..5] + puzzle[2][3..5]
        blocks[4] = puzzle[3][3..5] + puzzle[4][3..5] + puzzle[5][3..5]
        blocks[5] = puzzle[6][3..5] + puzzle[7][3..5] + puzzle[8][3..5]
        blocks[6] = puzzle[0][6..8] + puzzle[1][6..8] + puzzle[2][6..8]
        blocks[7] = puzzle[3][6..8] + puzzle[4][6..8] + puzzle[5][6..8]
        blocks[8] = puzzle[6][6..8] + puzzle[7][6..8] + puzzle[8][6..8]

        blocks.each { |x| refiner(x)}

        puzzle[0] = blocks[0][0..2] + blocks[3][0..2] + blocks[6][0..2]
        puzzle[1] = blocks[0][3..5] + blocks[3][3..5] + blocks[6][3..5]
        puzzle[2] = blocks[0][6..8] + blocks[3][6..8] + blocks[6][6..8]
        puzzle[3] = blocks[1][0..2] + blocks[4][0..2] + blocks[7][0..2]
        puzzle[4] = blocks[1][3..5] + blocks[4][3..5] + blocks[7][3..5]
        puzzle[5] = blocks[1][6..8] + blocks[4][6..8] + blocks[7][6..8]
        puzzle[6] = blocks[2][0..2] + blocks[5][0..2] + blocks[8][0..2]
        puzzle[7] = blocks[2][3..5] + blocks[5][3..5] + blocks[8][3..5]
        puzzle[8] = blocks[2][6..8] + blocks[5][6..8] + blocks[8][6..8]

        puzzle[0] = puzzle[0].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[1] = puzzle[1].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[2] = puzzle[2].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[3] = puzzle[3].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[4] = puzzle[4].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[5] = puzzle[5].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[6] = puzzle[6].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[7] = puzzle[7].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[8] = puzzle[8].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten

        blocks = puzzle.map{|row| row.each_slice(3).to_a}.transpose.flatten.each_slice(9).to_a
        columns = puzzle.transpose
        x = [1, 2, 3, 4, 5, 6, 7, 8, 9]

        puzzle[0][0] = x - puzzle[0] - columns[0] - blocks[0] if puzzle[0][0] == 0
        puzzle[0][1] = x - puzzle[0] - columns[1] - blocks[0] if puzzle[0][1] == 0
        puzzle[0][2] = x - puzzle[0] - columns[2] - blocks[0] if puzzle[0][2] == 0
        puzzle[0][3] = x - puzzle[0] - columns[3] - blocks[3] if puzzle[0][3] == 0
        puzzle[0][4] = x - puzzle[0] - columns[4] - blocks[3] if puzzle[0][4] == 0
        puzzle[0][5] = x - puzzle[0] - columns[5] - blocks[3] if puzzle[0][5] == 0
        puzzle[0][6] = x - puzzle[0] - columns[6] - blocks[6] if puzzle[0][6] == 0
        puzzle[0][7] = x - puzzle[0] - columns[7] - blocks[6] if puzzle[0][7] == 0
        puzzle[0][8] = x - puzzle[0] - columns[8] - blocks[6] if puzzle[0][8] == 0

        puzzle[1][0] = x - puzzle[1] - columns[0] - blocks[0] if puzzle[1][0] == 0
        puzzle[1][1] = x - puzzle[1] - columns[1] - blocks[0] if puzzle[1][1] == 0
        puzzle[1][2] = x - puzzle[1] - columns[2] - blocks[0] if puzzle[1][2] == 0
        puzzle[1][3] = x - puzzle[1] - columns[3] - blocks[3] if puzzle[1][3] == 0
        puzzle[1][4] = x - puzzle[1] - columns[4] - blocks[3] if puzzle[1][4] == 0
        puzzle[1][5] = x - puzzle[1] - columns[5] - blocks[3] if puzzle[1][5] == 0
        puzzle[1][6] = x - puzzle[1] - columns[6] - blocks[6] if puzzle[1][6] == 0
        puzzle[1][7] = x - puzzle[1] - columns[7] - blocks[6] if puzzle[1][7] == 0
        puzzle[1][8] = x - puzzle[1] - columns[8] - blocks[6] if puzzle[1][8] == 0

        puzzle[2][0] = x - puzzle[2] - columns[0] - blocks[0] if puzzle[2][0] == 0
        puzzle[2][1] = x - puzzle[2] - columns[1] - blocks[0] if puzzle[2][1] == 0
        puzzle[2][2] = x - puzzle[2] - columns[2] - blocks[0] if puzzle[2][2] == 0
        puzzle[2][3] = x - puzzle[2] - columns[3] - blocks[3] if puzzle[2][3] == 0
        puzzle[2][4] = x - puzzle[2] - columns[4] - blocks[3] if puzzle[2][4] == 0
        puzzle[2][5] = x - puzzle[2] - columns[5] - blocks[3] if puzzle[2][5] == 0
        puzzle[2][6] = x - puzzle[2] - columns[6] - blocks[6] if puzzle[2][6] == 0
        puzzle[2][7] = x - puzzle[2] - columns[7] - blocks[6] if puzzle[2][7] == 0
        puzzle[2][8] = x - puzzle[2] - columns[8] - blocks[6] if puzzle[2][8] == 0

        puzzle[3][0] = x - puzzle[3] - columns[0] - blocks[1] if puzzle[3][0] == 0
        puzzle[3][1] = x - puzzle[3] - columns[1] - blocks[1] if puzzle[3][1] == 0
        puzzle[3][2] = x - puzzle[3] - columns[2] - blocks[1] if puzzle[3][2] == 0
        puzzle[3][3] = x - puzzle[3] - columns[3] - blocks[4] if puzzle[3][3] == 0
        puzzle[3][4] = x - puzzle[3] - columns[4] - blocks[4] if puzzle[3][4] == 0
        puzzle[3][5] = x - puzzle[3] - columns[5] - blocks[4] if puzzle[3][5] == 0
        puzzle[3][6] = x - puzzle[3] - columns[6] - blocks[7] if puzzle[3][6] == 0
        puzzle[3][7] = x - puzzle[3] - columns[7] - blocks[7] if puzzle[3][7] == 0
        puzzle[3][8] = x - puzzle[3] - columns[8] - blocks[7] if puzzle[3][8] == 0

        puzzle[4][0] = x - puzzle[4] - columns[0] - blocks[1] if puzzle[4][0] == 0
        puzzle[4][1] = x - puzzle[4] - columns[1] - blocks[1] if puzzle[4][1] == 0
        puzzle[4][2] = x - puzzle[4] - columns[2] - blocks[1] if puzzle[4][2] == 0
        puzzle[4][3] = x - puzzle[4] - columns[3] - blocks[4] if puzzle[4][3] == 0
        puzzle[4][4] = x - puzzle[4] - columns[4] - blocks[4] if puzzle[4][4] == 0
        puzzle[4][5] = x - puzzle[4] - columns[5] - blocks[4] if puzzle[4][5] == 0
        puzzle[4][6] = x - puzzle[4] - columns[6] - blocks[7] if puzzle[4][6] == 0
        puzzle[4][7] = x - puzzle[4] - columns[7] - blocks[7] if puzzle[4][7] == 0
        puzzle[4][8] = x - puzzle[4] - columns[8] - blocks[7] if puzzle[4][8] == 0

        puzzle[5][0] = x - puzzle[5] - columns[0] - blocks[1] if puzzle[5][0] == 0
        puzzle[5][1] = x - puzzle[5] - columns[1] - blocks[1] if puzzle[5][1] == 0
        puzzle[5][2] = x - puzzle[5] - columns[2] - blocks[1] if puzzle[5][2] == 0
        puzzle[5][3] = x - puzzle[5] - columns[3] - blocks[4] if puzzle[5][3] == 0
        puzzle[5][4] = x - puzzle[5] - columns[4] - blocks[4] if puzzle[5][4] == 0
        puzzle[5][5] = x - puzzle[5] - columns[5] - blocks[4] if puzzle[5][5] == 0
        puzzle[5][6] = x - puzzle[5] - columns[6] - blocks[7] if puzzle[5][6] == 0
        puzzle[5][7] = x - puzzle[5] - columns[7] - blocks[7] if puzzle[5][7] == 0
        puzzle[5][8] = x - puzzle[5] - columns[8] - blocks[7] if puzzle[5][8] == 0

        puzzle[6][0] = x - puzzle[6] - columns[0] - blocks[2] if puzzle[6][0] == 0
        puzzle[6][1] = x - puzzle[6] - columns[1] - blocks[2] if puzzle[6][1] == 0
        puzzle[6][2] = x - puzzle[6] - columns[2] - blocks[2] if puzzle[6][2] == 0
        puzzle[6][3] = x - puzzle[6] - columns[3] - blocks[5] if puzzle[6][3] == 0
        puzzle[6][4] = x - puzzle[6] - columns[4] - blocks[5] if puzzle[6][4] == 0
        puzzle[6][5] = x - puzzle[6] - columns[5] - blocks[5] if puzzle[6][5] == 0
        puzzle[6][6] = x - puzzle[6] - columns[6] - blocks[8] if puzzle[6][6] == 0
        puzzle[6][7] = x - puzzle[6] - columns[7] - blocks[8] if puzzle[6][7] == 0
        puzzle[6][8] = x - puzzle[6] - columns[8] - blocks[8] if puzzle[6][8] == 0

        puzzle[7][0] = x - puzzle[7] - columns[0] - blocks[2] if puzzle[7][0] == 0
        puzzle[7][1] = x - puzzle[7] - columns[1] - blocks[2] if puzzle[7][1] == 0
        puzzle[7][2] = x - puzzle[7] - columns[2] - blocks[2] if puzzle[7][2] == 0
        puzzle[7][3] = x - puzzle[7] - columns[3] - blocks[5] if puzzle[7][3] == 0
        puzzle[7][4] = x - puzzle[7] - columns[4] - blocks[5] if puzzle[7][4] == 0
        puzzle[7][5] = x - puzzle[7] - columns[5] - blocks[5] if puzzle[7][5] == 0
        puzzle[7][6] = x - puzzle[7] - columns[6] - blocks[8] if puzzle[7][6] == 0
        puzzle[7][7] = x - puzzle[7] - columns[7] - blocks[8] if puzzle[7][7] == 0
        puzzle[7][8] = x - puzzle[7] - columns[8] - blocks[8] if puzzle[7][8] == 0

        puzzle[8][0] = x - puzzle[8] - columns[0] - blocks[2] if puzzle[8][0] == 0
        puzzle[8][1] = x - puzzle[8] - columns[1] - blocks[2] if puzzle[8][1] == 0
        puzzle[8][2] = x - puzzle[8] - columns[2] - blocks[2] if puzzle[8][2] == 0
        puzzle[8][3] = x - puzzle[8] - columns[3] - blocks[5] if puzzle[8][3] == 0
        puzzle[8][4] = x - puzzle[8] - columns[4] - blocks[5] if puzzle[8][4] == 0
        puzzle[8][5] = x - puzzle[8] - columns[5] - blocks[5] if puzzle[8][5] == 0
        puzzle[8][6] = x - puzzle[8] - columns[6] - blocks[8] if puzzle[8][6] == 0
        puzzle[8][7] = x - puzzle[8] - columns[7] - blocks[8] if puzzle[8][7] == 0
        puzzle[8][8] = x - puzzle[8] - columns[8] - blocks[8] if puzzle[8][8] == 0

        flattener(puzzle)

        puzzle.each { |x| refiner(x) }

        flattener(puzzle)

        columns = puzzle.transpose

        puzzle = columns.each {|x| refiner(x)}.transpose

        flattener(puzzle)

        blocks[0] = puzzle[0][0..2] + puzzle[1][0..2] + puzzle[2][0..2]
        blocks[1] = puzzle[3][0..2] + puzzle[4][0..2] + puzzle[5][0..2]
        blocks[2] = puzzle[6][0..2] + puzzle[7][0..2] + puzzle[8][0..2]
        blocks[3] = puzzle[0][3..5] + puzzle[1][3..5] + puzzle[2][3..5]
        blocks[4] = puzzle[3][3..5] + puzzle[4][3..5] + puzzle[5][3..5]
        blocks[5] = puzzle[6][3..5] + puzzle[7][3..5] + puzzle[8][3..5]
        blocks[6] = puzzle[0][6..8] + puzzle[1][6..8] + puzzle[2][6..8]
        blocks[7] = puzzle[3][6..8] + puzzle[4][6..8] + puzzle[5][6..8]
        blocks[8] = puzzle[6][6..8] + puzzle[7][6..8] + puzzle[8][6..8]

        blocks.each { |x| refiner(x)}

        puzzle[0] = blocks[0][0..2] + blocks[3][0..2] + blocks[6][0..2]
        puzzle[1] = blocks[0][3..5] + blocks[3][3..5] + blocks[6][3..5]
        puzzle[2] = blocks[0][6..8] + blocks[3][6..8] + blocks[6][6..8]
        puzzle[3] = blocks[1][0..2] + blocks[4][0..2] + blocks[7][0..2]
        puzzle[4] = blocks[1][3..5] + blocks[4][3..5] + blocks[7][3..5]
        puzzle[5] = blocks[1][6..8] + blocks[4][6..8] + blocks[7][6..8]
        puzzle[6] = blocks[2][0..2] + blocks[5][0..2] + blocks[8][0..2]
        puzzle[7] = blocks[2][3..5] + blocks[5][3..5] + blocks[8][3..5]
        puzzle[8] = blocks[2][6..8] + blocks[5][6..8] + blocks[8][6..8]

        puzzle[0] = puzzle[0].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[1] = puzzle[1].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[2] = puzzle[2].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[3] = puzzle[3].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[4] = puzzle[4].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[5] = puzzle[5].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[6] = puzzle[6].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[7] = puzzle[7].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[8] = puzzle[8].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten

        blocks = puzzle.map{|row| row.each_slice(3).to_a}.transpose.flatten.each_slice(9).to_a
        columns = puzzle.transpose
        x = [1, 2, 3, 4, 5, 6, 7, 8, 9]

        puzzle[0][0] = x - puzzle[0] - columns[0] - blocks[0] if puzzle[0][0] == 0
        puzzle[0][1] = x - puzzle[0] - columns[1] - blocks[0] if puzzle[0][1] == 0
        puzzle[0][2] = x - puzzle[0] - columns[2] - blocks[0] if puzzle[0][2] == 0
        puzzle[0][3] = x - puzzle[0] - columns[3] - blocks[3] if puzzle[0][3] == 0
        puzzle[0][4] = x - puzzle[0] - columns[4] - blocks[3] if puzzle[0][4] == 0
        puzzle[0][5] = x - puzzle[0] - columns[5] - blocks[3] if puzzle[0][5] == 0
        puzzle[0][6] = x - puzzle[0] - columns[6] - blocks[6] if puzzle[0][6] == 0
        puzzle[0][7] = x - puzzle[0] - columns[7] - blocks[6] if puzzle[0][7] == 0
        puzzle[0][8] = x - puzzle[0] - columns[8] - blocks[6] if puzzle[0][8] == 0

        puzzle[1][0] = x - puzzle[1] - columns[0] - blocks[0] if puzzle[1][0] == 0
        puzzle[1][1] = x - puzzle[1] - columns[1] - blocks[0] if puzzle[1][1] == 0
        puzzle[1][2] = x - puzzle[1] - columns[2] - blocks[0] if puzzle[1][2] == 0
        puzzle[1][3] = x - puzzle[1] - columns[3] - blocks[3] if puzzle[1][3] == 0
        puzzle[1][4] = x - puzzle[1] - columns[4] - blocks[3] if puzzle[1][4] == 0
        puzzle[1][5] = x - puzzle[1] - columns[5] - blocks[3] if puzzle[1][5] == 0
        puzzle[1][6] = x - puzzle[1] - columns[6] - blocks[6] if puzzle[1][6] == 0
        puzzle[1][7] = x - puzzle[1] - columns[7] - blocks[6] if puzzle[1][7] == 0
        puzzle[1][8] = x - puzzle[1] - columns[8] - blocks[6] if puzzle[1][8] == 0

        puzzle[2][0] = x - puzzle[2] - columns[0] - blocks[0] if puzzle[2][0] == 0
        puzzle[2][1] = x - puzzle[2] - columns[1] - blocks[0] if puzzle[2][1] == 0
        puzzle[2][2] = x - puzzle[2] - columns[2] - blocks[0] if puzzle[2][2] == 0
        puzzle[2][3] = x - puzzle[2] - columns[3] - blocks[3] if puzzle[2][3] == 0
        puzzle[2][4] = x - puzzle[2] - columns[4] - blocks[3] if puzzle[2][4] == 0
        puzzle[2][5] = x - puzzle[2] - columns[5] - blocks[3] if puzzle[2][5] == 0
        puzzle[2][6] = x - puzzle[2] - columns[6] - blocks[6] if puzzle[2][6] == 0
        puzzle[2][7] = x - puzzle[2] - columns[7] - blocks[6] if puzzle[2][7] == 0
        puzzle[2][8] = x - puzzle[2] - columns[8] - blocks[6] if puzzle[2][8] == 0

        puzzle[3][0] = x - puzzle[3] - columns[0] - blocks[1] if puzzle[3][0] == 0
        puzzle[3][1] = x - puzzle[3] - columns[1] - blocks[1] if puzzle[3][1] == 0
        puzzle[3][2] = x - puzzle[3] - columns[2] - blocks[1] if puzzle[3][2] == 0
        puzzle[3][3] = x - puzzle[3] - columns[3] - blocks[4] if puzzle[3][3] == 0
        puzzle[3][4] = x - puzzle[3] - columns[4] - blocks[4] if puzzle[3][4] == 0
        puzzle[3][5] = x - puzzle[3] - columns[5] - blocks[4] if puzzle[3][5] == 0
        puzzle[3][6] = x - puzzle[3] - columns[6] - blocks[7] if puzzle[3][6] == 0
        puzzle[3][7] = x - puzzle[3] - columns[7] - blocks[7] if puzzle[3][7] == 0
        puzzle[3][8] = x - puzzle[3] - columns[8] - blocks[7] if puzzle[3][8] == 0

        puzzle[4][0] = x - puzzle[4] - columns[0] - blocks[1] if puzzle[4][0] == 0
        puzzle[4][1] = x - puzzle[4] - columns[1] - blocks[1] if puzzle[4][1] == 0
        puzzle[4][2] = x - puzzle[4] - columns[2] - blocks[1] if puzzle[4][2] == 0
        puzzle[4][3] = x - puzzle[4] - columns[3] - blocks[4] if puzzle[4][3] == 0
        puzzle[4][4] = x - puzzle[4] - columns[4] - blocks[4] if puzzle[4][4] == 0
        puzzle[4][5] = x - puzzle[4] - columns[5] - blocks[4] if puzzle[4][5] == 0
        puzzle[4][6] = x - puzzle[4] - columns[6] - blocks[7] if puzzle[4][6] == 0
        puzzle[4][7] = x - puzzle[4] - columns[7] - blocks[7] if puzzle[4][7] == 0
        puzzle[4][8] = x - puzzle[4] - columns[8] - blocks[7] if puzzle[4][8] == 0

        puzzle[5][0] = x - puzzle[5] - columns[0] - blocks[1] if puzzle[5][0] == 0
        puzzle[5][1] = x - puzzle[5] - columns[1] - blocks[1] if puzzle[5][1] == 0
        puzzle[5][2] = x - puzzle[5] - columns[2] - blocks[1] if puzzle[5][2] == 0
        puzzle[5][3] = x - puzzle[5] - columns[3] - blocks[4] if puzzle[5][3] == 0
        puzzle[5][4] = x - puzzle[5] - columns[4] - blocks[4] if puzzle[5][4] == 0
        puzzle[5][5] = x - puzzle[5] - columns[5] - blocks[4] if puzzle[5][5] == 0
        puzzle[5][6] = x - puzzle[5] - columns[6] - blocks[7] if puzzle[5][6] == 0
        puzzle[5][7] = x - puzzle[5] - columns[7] - blocks[7] if puzzle[5][7] == 0
        puzzle[5][8] = x - puzzle[5] - columns[8] - blocks[7] if puzzle[5][8] == 0

        puzzle[6][0] = x - puzzle[6] - columns[0] - blocks[2] if puzzle[6][0] == 0
        puzzle[6][1] = x - puzzle[6] - columns[1] - blocks[2] if puzzle[6][1] == 0
        puzzle[6][2] = x - puzzle[6] - columns[2] - blocks[2] if puzzle[6][2] == 0
        puzzle[6][3] = x - puzzle[6] - columns[3] - blocks[5] if puzzle[6][3] == 0
        puzzle[6][4] = x - puzzle[6] - columns[4] - blocks[5] if puzzle[6][4] == 0
        puzzle[6][5] = x - puzzle[6] - columns[5] - blocks[5] if puzzle[6][5] == 0
        puzzle[6][6] = x - puzzle[6] - columns[6] - blocks[8] if puzzle[6][6] == 0
        puzzle[6][7] = x - puzzle[6] - columns[7] - blocks[8] if puzzle[6][7] == 0
        puzzle[6][8] = x - puzzle[6] - columns[8] - blocks[8] if puzzle[6][8] == 0

        puzzle[7][0] = x - puzzle[7] - columns[0] - blocks[2] if puzzle[7][0] == 0
        puzzle[7][1] = x - puzzle[7] - columns[1] - blocks[2] if puzzle[7][1] == 0
        puzzle[7][2] = x - puzzle[7] - columns[2] - blocks[2] if puzzle[7][2] == 0
        puzzle[7][3] = x - puzzle[7] - columns[3] - blocks[5] if puzzle[7][3] == 0
        puzzle[7][4] = x - puzzle[7] - columns[4] - blocks[5] if puzzle[7][4] == 0
        puzzle[7][5] = x - puzzle[7] - columns[5] - blocks[5] if puzzle[7][5] == 0
        puzzle[7][6] = x - puzzle[7] - columns[6] - blocks[8] if puzzle[7][6] == 0
        puzzle[7][7] = x - puzzle[7] - columns[7] - blocks[8] if puzzle[7][7] == 0
        puzzle[7][8] = x - puzzle[7] - columns[8] - blocks[8] if puzzle[7][8] == 0

        puzzle[8][0] = x - puzzle[8] - columns[0] - blocks[2] if puzzle[8][0] == 0
        puzzle[8][1] = x - puzzle[8] - columns[1] - blocks[2] if puzzle[8][1] == 0
        puzzle[8][2] = x - puzzle[8] - columns[2] - blocks[2] if puzzle[8][2] == 0
        puzzle[8][3] = x - puzzle[8] - columns[3] - blocks[5] if puzzle[8][3] == 0
        puzzle[8][4] = x - puzzle[8] - columns[4] - blocks[5] if puzzle[8][4] == 0
        puzzle[8][5] = x - puzzle[8] - columns[5] - blocks[5] if puzzle[8][5] == 0
        puzzle[8][6] = x - puzzle[8] - columns[6] - blocks[8] if puzzle[8][6] == 0
        puzzle[8][7] = x - puzzle[8] - columns[7] - blocks[8] if puzzle[8][7] == 0
        puzzle[8][8] = x - puzzle[8] - columns[8] - blocks[8] if puzzle[8][8] == 0

        flattener(puzzle)

        puzzle.each { |x| refiner(x) }

        flattener(puzzle)

        columns = puzzle.transpose

        puzzle = columns.each {|x| refiner(x)}.transpose

        flattener(puzzle)

        blocks[0] = puzzle[0][0..2] + puzzle[1][0..2] + puzzle[2][0..2]
        blocks[1] = puzzle[3][0..2] + puzzle[4][0..2] + puzzle[5][0..2]
        blocks[2] = puzzle[6][0..2] + puzzle[7][0..2] + puzzle[8][0..2]
        blocks[3] = puzzle[0][3..5] + puzzle[1][3..5] + puzzle[2][3..5]
        blocks[4] = puzzle[3][3..5] + puzzle[4][3..5] + puzzle[5][3..5]
        blocks[5] = puzzle[6][3..5] + puzzle[7][3..5] + puzzle[8][3..5]
        blocks[6] = puzzle[0][6..8] + puzzle[1][6..8] + puzzle[2][6..8]
        blocks[7] = puzzle[3][6..8] + puzzle[4][6..8] + puzzle[5][6..8]
        blocks[8] = puzzle[6][6..8] + puzzle[7][6..8] + puzzle[8][6..8]

        blocks.each { |x| refiner(x)}

        puzzle[0] = blocks[0][0..2] + blocks[3][0..2] + blocks[6][0..2]
        puzzle[1] = blocks[0][3..5] + blocks[3][3..5] + blocks[6][3..5]
        puzzle[2] = blocks[0][6..8] + blocks[3][6..8] + blocks[6][6..8]
        puzzle[3] = blocks[1][0..2] + blocks[4][0..2] + blocks[7][0..2]
        puzzle[4] = blocks[1][3..5] + blocks[4][3..5] + blocks[7][3..5]
        puzzle[5] = blocks[1][6..8] + blocks[4][6..8] + blocks[7][6..8]
        puzzle[6] = blocks[2][0..2] + blocks[5][0..2] + blocks[8][0..2]
        puzzle[7] = blocks[2][3..5] + blocks[5][3..5] + blocks[8][3..5]
        puzzle[8] = blocks[2][6..8] + blocks[5][6..8] + blocks[8][6..8]

        puzzle[0] = puzzle[0].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[1] = puzzle[1].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[2] = puzzle[2].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[3] = puzzle[3].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[4] = puzzle[4].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[5] = puzzle[5].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[6] = puzzle[6].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[7] = puzzle[7].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[8] = puzzle[8].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten

        blocks = puzzle.map{|row| row.each_slice(3).to_a}.transpose.flatten.each_slice(9).to_a
        columns = puzzle.transpose
        x = [1, 2, 3, 4, 5, 6, 7, 8, 9]

        puzzle[0][0] = x - puzzle[0] - columns[0] - blocks[0] if puzzle[0][0] == 0
        puzzle[0][1] = x - puzzle[0] - columns[1] - blocks[0] if puzzle[0][1] == 0
        puzzle[0][2] = x - puzzle[0] - columns[2] - blocks[0] if puzzle[0][2] == 0
        puzzle[0][3] = x - puzzle[0] - columns[3] - blocks[3] if puzzle[0][3] == 0
        puzzle[0][4] = x - puzzle[0] - columns[4] - blocks[3] if puzzle[0][4] == 0
        puzzle[0][5] = x - puzzle[0] - columns[5] - blocks[3] if puzzle[0][5] == 0
        puzzle[0][6] = x - puzzle[0] - columns[6] - blocks[6] if puzzle[0][6] == 0
        puzzle[0][7] = x - puzzle[0] - columns[7] - blocks[6] if puzzle[0][7] == 0
        puzzle[0][8] = x - puzzle[0] - columns[8] - blocks[6] if puzzle[0][8] == 0

        puzzle[1][0] = x - puzzle[1] - columns[0] - blocks[0] if puzzle[1][0] == 0
        puzzle[1][1] = x - puzzle[1] - columns[1] - blocks[0] if puzzle[1][1] == 0
        puzzle[1][2] = x - puzzle[1] - columns[2] - blocks[0] if puzzle[1][2] == 0
        puzzle[1][3] = x - puzzle[1] - columns[3] - blocks[3] if puzzle[1][3] == 0
        puzzle[1][4] = x - puzzle[1] - columns[4] - blocks[3] if puzzle[1][4] == 0
        puzzle[1][5] = x - puzzle[1] - columns[5] - blocks[3] if puzzle[1][5] == 0
        puzzle[1][6] = x - puzzle[1] - columns[6] - blocks[6] if puzzle[1][6] == 0
        puzzle[1][7] = x - puzzle[1] - columns[7] - blocks[6] if puzzle[1][7] == 0
        puzzle[1][8] = x - puzzle[1] - columns[8] - blocks[6] if puzzle[1][8] == 0

        puzzle[2][0] = x - puzzle[2] - columns[0] - blocks[0] if puzzle[2][0] == 0
        puzzle[2][1] = x - puzzle[2] - columns[1] - blocks[0] if puzzle[2][1] == 0
        puzzle[2][2] = x - puzzle[2] - columns[2] - blocks[0] if puzzle[2][2] == 0
        puzzle[2][3] = x - puzzle[2] - columns[3] - blocks[3] if puzzle[2][3] == 0
        puzzle[2][4] = x - puzzle[2] - columns[4] - blocks[3] if puzzle[2][4] == 0
        puzzle[2][5] = x - puzzle[2] - columns[5] - blocks[3] if puzzle[2][5] == 0
        puzzle[2][6] = x - puzzle[2] - columns[6] - blocks[6] if puzzle[2][6] == 0
        puzzle[2][7] = x - puzzle[2] - columns[7] - blocks[6] if puzzle[2][7] == 0
        puzzle[2][8] = x - puzzle[2] - columns[8] - blocks[6] if puzzle[2][8] == 0

        puzzle[3][0] = x - puzzle[3] - columns[0] - blocks[1] if puzzle[3][0] == 0
        puzzle[3][1] = x - puzzle[3] - columns[1] - blocks[1] if puzzle[3][1] == 0
        puzzle[3][2] = x - puzzle[3] - columns[2] - blocks[1] if puzzle[3][2] == 0
        puzzle[3][3] = x - puzzle[3] - columns[3] - blocks[4] if puzzle[3][3] == 0
        puzzle[3][4] = x - puzzle[3] - columns[4] - blocks[4] if puzzle[3][4] == 0
        puzzle[3][5] = x - puzzle[3] - columns[5] - blocks[4] if puzzle[3][5] == 0
        puzzle[3][6] = x - puzzle[3] - columns[6] - blocks[7] if puzzle[3][6] == 0
        puzzle[3][7] = x - puzzle[3] - columns[7] - blocks[7] if puzzle[3][7] == 0
        puzzle[3][8] = x - puzzle[3] - columns[8] - blocks[7] if puzzle[3][8] == 0

        puzzle[4][0] = x - puzzle[4] - columns[0] - blocks[1] if puzzle[4][0] == 0
        puzzle[4][1] = x - puzzle[4] - columns[1] - blocks[1] if puzzle[4][1] == 0
        puzzle[4][2] = x - puzzle[4] - columns[2] - blocks[1] if puzzle[4][2] == 0
        puzzle[4][3] = x - puzzle[4] - columns[3] - blocks[4] if puzzle[4][3] == 0
        puzzle[4][4] = x - puzzle[4] - columns[4] - blocks[4] if puzzle[4][4] == 0
        puzzle[4][5] = x - puzzle[4] - columns[5] - blocks[4] if puzzle[4][5] == 0
        puzzle[4][6] = x - puzzle[4] - columns[6] - blocks[7] if puzzle[4][6] == 0
        puzzle[4][7] = x - puzzle[4] - columns[7] - blocks[7] if puzzle[4][7] == 0
        puzzle[4][8] = x - puzzle[4] - columns[8] - blocks[7] if puzzle[4][8] == 0

        puzzle[5][0] = x - puzzle[5] - columns[0] - blocks[1] if puzzle[5][0] == 0
        puzzle[5][1] = x - puzzle[5] - columns[1] - blocks[1] if puzzle[5][1] == 0
        puzzle[5][2] = x - puzzle[5] - columns[2] - blocks[1] if puzzle[5][2] == 0
        puzzle[5][3] = x - puzzle[5] - columns[3] - blocks[4] if puzzle[5][3] == 0
        puzzle[5][4] = x - puzzle[5] - columns[4] - blocks[4] if puzzle[5][4] == 0
        puzzle[5][5] = x - puzzle[5] - columns[5] - blocks[4] if puzzle[5][5] == 0
        puzzle[5][6] = x - puzzle[5] - columns[6] - blocks[7] if puzzle[5][6] == 0
        puzzle[5][7] = x - puzzle[5] - columns[7] - blocks[7] if puzzle[5][7] == 0
        puzzle[5][8] = x - puzzle[5] - columns[8] - blocks[7] if puzzle[5][8] == 0

        puzzle[6][0] = x - puzzle[6] - columns[0] - blocks[2] if puzzle[6][0] == 0
        puzzle[6][1] = x - puzzle[6] - columns[1] - blocks[2] if puzzle[6][1] == 0
        puzzle[6][2] = x - puzzle[6] - columns[2] - blocks[2] if puzzle[6][2] == 0
        puzzle[6][3] = x - puzzle[6] - columns[3] - blocks[5] if puzzle[6][3] == 0
        puzzle[6][4] = x - puzzle[6] - columns[4] - blocks[5] if puzzle[6][4] == 0
        puzzle[6][5] = x - puzzle[6] - columns[5] - blocks[5] if puzzle[6][5] == 0
        puzzle[6][6] = x - puzzle[6] - columns[6] - blocks[8] if puzzle[6][6] == 0
        puzzle[6][7] = x - puzzle[6] - columns[7] - blocks[8] if puzzle[6][7] == 0
        puzzle[6][8] = x - puzzle[6] - columns[8] - blocks[8] if puzzle[6][8] == 0

        puzzle[7][0] = x - puzzle[7] - columns[0] - blocks[2] if puzzle[7][0] == 0
        puzzle[7][1] = x - puzzle[7] - columns[1] - blocks[2] if puzzle[7][1] == 0
        puzzle[7][2] = x - puzzle[7] - columns[2] - blocks[2] if puzzle[7][2] == 0
        puzzle[7][3] = x - puzzle[7] - columns[3] - blocks[5] if puzzle[7][3] == 0
        puzzle[7][4] = x - puzzle[7] - columns[4] - blocks[5] if puzzle[7][4] == 0
        puzzle[7][5] = x - puzzle[7] - columns[5] - blocks[5] if puzzle[7][5] == 0
        puzzle[7][6] = x - puzzle[7] - columns[6] - blocks[8] if puzzle[7][6] == 0
        puzzle[7][7] = x - puzzle[7] - columns[7] - blocks[8] if puzzle[7][7] == 0
        puzzle[7][8] = x - puzzle[7] - columns[8] - blocks[8] if puzzle[7][8] == 0

        puzzle[8][0] = x - puzzle[8] - columns[0] - blocks[2] if puzzle[8][0] == 0
        puzzle[8][1] = x - puzzle[8] - columns[1] - blocks[2] if puzzle[8][1] == 0
        puzzle[8][2] = x - puzzle[8] - columns[2] - blocks[2] if puzzle[8][2] == 0
        puzzle[8][3] = x - puzzle[8] - columns[3] - blocks[5] if puzzle[8][3] == 0
        puzzle[8][4] = x - puzzle[8] - columns[4] - blocks[5] if puzzle[8][4] == 0
        puzzle[8][5] = x - puzzle[8] - columns[5] - blocks[5] if puzzle[8][5] == 0
        puzzle[8][6] = x - puzzle[8] - columns[6] - blocks[8] if puzzle[8][6] == 0
        puzzle[8][7] = x - puzzle[8] - columns[7] - blocks[8] if puzzle[8][7] == 0
        puzzle[8][8] = x - puzzle[8] - columns[8] - blocks[8] if puzzle[8][8] == 0

        flattener(puzzle)

        puzzle.each { |x| refiner(x) }

        flattener(puzzle)

        columns = puzzle.transpose

        puzzle = columns.each {|x| refiner(x)}.transpose

        flattener(puzzle)

        blocks[0] = puzzle[0][0..2] + puzzle[1][0..2] + puzzle[2][0..2]
        blocks[1] = puzzle[3][0..2] + puzzle[4][0..2] + puzzle[5][0..2]
        blocks[2] = puzzle[6][0..2] + puzzle[7][0..2] + puzzle[8][0..2]
        blocks[3] = puzzle[0][3..5] + puzzle[1][3..5] + puzzle[2][3..5]
        blocks[4] = puzzle[3][3..5] + puzzle[4][3..5] + puzzle[5][3..5]
        blocks[5] = puzzle[6][3..5] + puzzle[7][3..5] + puzzle[8][3..5]
        blocks[6] = puzzle[0][6..8] + puzzle[1][6..8] + puzzle[2][6..8]
        blocks[7] = puzzle[3][6..8] + puzzle[4][6..8] + puzzle[5][6..8]
        blocks[8] = puzzle[6][6..8] + puzzle[7][6..8] + puzzle[8][6..8]

        blocks.each { |x| refiner(x)}

        puzzle[0] = blocks[0][0..2] + blocks[3][0..2] + blocks[6][0..2]
        puzzle[1] = blocks[0][3..5] + blocks[3][3..5] + blocks[6][3..5]
        puzzle[2] = blocks[0][6..8] + blocks[3][6..8] + blocks[6][6..8]
        puzzle[3] = blocks[1][0..2] + blocks[4][0..2] + blocks[7][0..2]
        puzzle[4] = blocks[1][3..5] + blocks[4][3..5] + blocks[7][3..5]
        puzzle[5] = blocks[1][6..8] + blocks[4][6..8] + blocks[7][6..8]
        puzzle[6] = blocks[2][0..2] + blocks[5][0..2] + blocks[8][0..2]
        puzzle[7] = blocks[2][3..5] + blocks[5][3..5] + blocks[8][3..5]
        puzzle[8] = blocks[2][6..8] + blocks[5][6..8] + blocks[8][6..8]

        puzzle[0] = puzzle[0].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[1] = puzzle[1].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[2] = puzzle[2].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[3] = puzzle[3].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[4] = puzzle[4].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[5] = puzzle[5].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[6] = puzzle[6].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[7] = puzzle[7].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[8] = puzzle[8].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten

        blocks = puzzle.map{|row| row.each_slice(3).to_a}.transpose.flatten.each_slice(9).to_a
        columns = puzzle.transpose
        x = [1, 2, 3, 4, 5, 6, 7, 8, 9]

        puzzle[0][0] = x - puzzle[0] - columns[0] - blocks[0] if puzzle[0][0] == 0
        puzzle[0][1] = x - puzzle[0] - columns[1] - blocks[0] if puzzle[0][1] == 0
        puzzle[0][2] = x - puzzle[0] - columns[2] - blocks[0] if puzzle[0][2] == 0
        puzzle[0][3] = x - puzzle[0] - columns[3] - blocks[3] if puzzle[0][3] == 0
        puzzle[0][4] = x - puzzle[0] - columns[4] - blocks[3] if puzzle[0][4] == 0
        puzzle[0][5] = x - puzzle[0] - columns[5] - blocks[3] if puzzle[0][5] == 0
        puzzle[0][6] = x - puzzle[0] - columns[6] - blocks[6] if puzzle[0][6] == 0
        puzzle[0][7] = x - puzzle[0] - columns[7] - blocks[6] if puzzle[0][7] == 0
        puzzle[0][8] = x - puzzle[0] - columns[8] - blocks[6] if puzzle[0][8] == 0

        puzzle[1][0] = x - puzzle[1] - columns[0] - blocks[0] if puzzle[1][0] == 0
        puzzle[1][1] = x - puzzle[1] - columns[1] - blocks[0] if puzzle[1][1] == 0
        puzzle[1][2] = x - puzzle[1] - columns[2] - blocks[0] if puzzle[1][2] == 0
        puzzle[1][3] = x - puzzle[1] - columns[3] - blocks[3] if puzzle[1][3] == 0
        puzzle[1][4] = x - puzzle[1] - columns[4] - blocks[3] if puzzle[1][4] == 0
        puzzle[1][5] = x - puzzle[1] - columns[5] - blocks[3] if puzzle[1][5] == 0
        puzzle[1][6] = x - puzzle[1] - columns[6] - blocks[6] if puzzle[1][6] == 0
        puzzle[1][7] = x - puzzle[1] - columns[7] - blocks[6] if puzzle[1][7] == 0
        puzzle[1][8] = x - puzzle[1] - columns[8] - blocks[6] if puzzle[1][8] == 0

        puzzle[2][0] = x - puzzle[2] - columns[0] - blocks[0] if puzzle[2][0] == 0
        puzzle[2][1] = x - puzzle[2] - columns[1] - blocks[0] if puzzle[2][1] == 0
        puzzle[2][2] = x - puzzle[2] - columns[2] - blocks[0] if puzzle[2][2] == 0
        puzzle[2][3] = x - puzzle[2] - columns[3] - blocks[3] if puzzle[2][3] == 0
        puzzle[2][4] = x - puzzle[2] - columns[4] - blocks[3] if puzzle[2][4] == 0
        puzzle[2][5] = x - puzzle[2] - columns[5] - blocks[3] if puzzle[2][5] == 0
        puzzle[2][6] = x - puzzle[2] - columns[6] - blocks[6] if puzzle[2][6] == 0
        puzzle[2][7] = x - puzzle[2] - columns[7] - blocks[6] if puzzle[2][7] == 0
        puzzle[2][8] = x - puzzle[2] - columns[8] - blocks[6] if puzzle[2][8] == 0

        puzzle[3][0] = x - puzzle[3] - columns[0] - blocks[1] if puzzle[3][0] == 0
        puzzle[3][1] = x - puzzle[3] - columns[1] - blocks[1] if puzzle[3][1] == 0
        puzzle[3][2] = x - puzzle[3] - columns[2] - blocks[1] if puzzle[3][2] == 0
        puzzle[3][3] = x - puzzle[3] - columns[3] - blocks[4] if puzzle[3][3] == 0
        puzzle[3][4] = x - puzzle[3] - columns[4] - blocks[4] if puzzle[3][4] == 0
        puzzle[3][5] = x - puzzle[3] - columns[5] - blocks[4] if puzzle[3][5] == 0
        puzzle[3][6] = x - puzzle[3] - columns[6] - blocks[7] if puzzle[3][6] == 0
        puzzle[3][7] = x - puzzle[3] - columns[7] - blocks[7] if puzzle[3][7] == 0
        puzzle[3][8] = x - puzzle[3] - columns[8] - blocks[7] if puzzle[3][8] == 0

        puzzle[4][0] = x - puzzle[4] - columns[0] - blocks[1] if puzzle[4][0] == 0
        puzzle[4][1] = x - puzzle[4] - columns[1] - blocks[1] if puzzle[4][1] == 0
        puzzle[4][2] = x - puzzle[4] - columns[2] - blocks[1] if puzzle[4][2] == 0
        puzzle[4][3] = x - puzzle[4] - columns[3] - blocks[4] if puzzle[4][3] == 0
        puzzle[4][4] = x - puzzle[4] - columns[4] - blocks[4] if puzzle[4][4] == 0
        puzzle[4][5] = x - puzzle[4] - columns[5] - blocks[4] if puzzle[4][5] == 0
        puzzle[4][6] = x - puzzle[4] - columns[6] - blocks[7] if puzzle[4][6] == 0
        puzzle[4][7] = x - puzzle[4] - columns[7] - blocks[7] if puzzle[4][7] == 0
        puzzle[4][8] = x - puzzle[4] - columns[8] - blocks[7] if puzzle[4][8] == 0

        puzzle[5][0] = x - puzzle[5] - columns[0] - blocks[1] if puzzle[5][0] == 0
        puzzle[5][1] = x - puzzle[5] - columns[1] - blocks[1] if puzzle[5][1] == 0
        puzzle[5][2] = x - puzzle[5] - columns[2] - blocks[1] if puzzle[5][2] == 0
        puzzle[5][3] = x - puzzle[5] - columns[3] - blocks[4] if puzzle[5][3] == 0
        puzzle[5][4] = x - puzzle[5] - columns[4] - blocks[4] if puzzle[5][4] == 0
        puzzle[5][5] = x - puzzle[5] - columns[5] - blocks[4] if puzzle[5][5] == 0
        puzzle[5][6] = x - puzzle[5] - columns[6] - blocks[7] if puzzle[5][6] == 0
        puzzle[5][7] = x - puzzle[5] - columns[7] - blocks[7] if puzzle[5][7] == 0
        puzzle[5][8] = x - puzzle[5] - columns[8] - blocks[7] if puzzle[5][8] == 0

        puzzle[6][0] = x - puzzle[6] - columns[0] - blocks[2] if puzzle[6][0] == 0
        puzzle[6][1] = x - puzzle[6] - columns[1] - blocks[2] if puzzle[6][1] == 0
        puzzle[6][2] = x - puzzle[6] - columns[2] - blocks[2] if puzzle[6][2] == 0
        puzzle[6][3] = x - puzzle[6] - columns[3] - blocks[5] if puzzle[6][3] == 0
        puzzle[6][4] = x - puzzle[6] - columns[4] - blocks[5] if puzzle[6][4] == 0
        puzzle[6][5] = x - puzzle[6] - columns[5] - blocks[5] if puzzle[6][5] == 0
        puzzle[6][6] = x - puzzle[6] - columns[6] - blocks[8] if puzzle[6][6] == 0
        puzzle[6][7] = x - puzzle[6] - columns[7] - blocks[8] if puzzle[6][7] == 0
        puzzle[6][8] = x - puzzle[6] - columns[8] - blocks[8] if puzzle[6][8] == 0

        puzzle[7][0] = x - puzzle[7] - columns[0] - blocks[2] if puzzle[7][0] == 0
        puzzle[7][1] = x - puzzle[7] - columns[1] - blocks[2] if puzzle[7][1] == 0
        puzzle[7][2] = x - puzzle[7] - columns[2] - blocks[2] if puzzle[7][2] == 0
        puzzle[7][3] = x - puzzle[7] - columns[3] - blocks[5] if puzzle[7][3] == 0
        puzzle[7][4] = x - puzzle[7] - columns[4] - blocks[5] if puzzle[7][4] == 0
        puzzle[7][5] = x - puzzle[7] - columns[5] - blocks[5] if puzzle[7][5] == 0
        puzzle[7][6] = x - puzzle[7] - columns[6] - blocks[8] if puzzle[7][6] == 0
        puzzle[7][7] = x - puzzle[7] - columns[7] - blocks[8] if puzzle[7][7] == 0
        puzzle[7][8] = x - puzzle[7] - columns[8] - blocks[8] if puzzle[7][8] == 0

        puzzle[8][0] = x - puzzle[8] - columns[0] - blocks[2] if puzzle[8][0] == 0
        puzzle[8][1] = x - puzzle[8] - columns[1] - blocks[2] if puzzle[8][1] == 0
        puzzle[8][2] = x - puzzle[8] - columns[2] - blocks[2] if puzzle[8][2] == 0
        puzzle[8][3] = x - puzzle[8] - columns[3] - blocks[5] if puzzle[8][3] == 0
        puzzle[8][4] = x - puzzle[8] - columns[4] - blocks[5] if puzzle[8][4] == 0
        puzzle[8][5] = x - puzzle[8] - columns[5] - blocks[5] if puzzle[8][5] == 0
        puzzle[8][6] = x - puzzle[8] - columns[6] - blocks[8] if puzzle[8][6] == 0
        puzzle[8][7] = x - puzzle[8] - columns[7] - blocks[8] if puzzle[8][7] == 0
        puzzle[8][8] = x - puzzle[8] - columns[8] - blocks[8] if puzzle[8][8] == 0

        flattener(puzzle)

        puzzle.each { |x| refiner(x) }

        flattener(puzzle)

        columns = puzzle.transpose

        puzzle = columns.each {|x| refiner(x)}.transpose

        flattener(puzzle)

        blocks[0] = puzzle[0][0..2] + puzzle[1][0..2] + puzzle[2][0..2]
        blocks[1] = puzzle[3][0..2] + puzzle[4][0..2] + puzzle[5][0..2]
        blocks[2] = puzzle[6][0..2] + puzzle[7][0..2] + puzzle[8][0..2]
        blocks[3] = puzzle[0][3..5] + puzzle[1][3..5] + puzzle[2][3..5]
        blocks[4] = puzzle[3][3..5] + puzzle[4][3..5] + puzzle[5][3..5]
        blocks[5] = puzzle[6][3..5] + puzzle[7][3..5] + puzzle[8][3..5]
        blocks[6] = puzzle[0][6..8] + puzzle[1][6..8] + puzzle[2][6..8]
        blocks[7] = puzzle[3][6..8] + puzzle[4][6..8] + puzzle[5][6..8]
        blocks[8] = puzzle[6][6..8] + puzzle[7][6..8] + puzzle[8][6..8]

        blocks.each { |x| refiner(x)}

        puzzle[0] = blocks[0][0..2] + blocks[3][0..2] + blocks[6][0..2]
        puzzle[1] = blocks[0][3..5] + blocks[3][3..5] + blocks[6][3..5]
        puzzle[2] = blocks[0][6..8] + blocks[3][6..8] + blocks[6][6..8]
        puzzle[3] = blocks[1][0..2] + blocks[4][0..2] + blocks[7][0..2]
        puzzle[4] = blocks[1][3..5] + blocks[4][3..5] + blocks[7][3..5]
        puzzle[5] = blocks[1][6..8] + blocks[4][6..8] + blocks[7][6..8]
        puzzle[6] = blocks[2][0..2] + blocks[5][0..2] + blocks[8][0..2]
        puzzle[7] = blocks[2][3..5] + blocks[5][3..5] + blocks[8][3..5]
        puzzle[8] = blocks[2][6..8] + blocks[5][6..8] + blocks[8][6..8]

        puzzle[0] = puzzle[0].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[1] = puzzle[1].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[2] = puzzle[2].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[3] = puzzle[3].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[4] = puzzle[4].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[5] = puzzle[5].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[6] = puzzle[6].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[7] = puzzle[7].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[8] = puzzle[8].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten

        blocks = puzzle.map{|row| row.each_slice(3).to_a}.transpose.flatten.each_slice(9).to_a
        columns = puzzle.transpose
        x = [1, 2, 3, 4, 5, 6, 7, 8, 9]

        puzzle[0][0] = x - puzzle[0] - columns[0] - blocks[0] if puzzle[0][0] == 0
        puzzle[0][1] = x - puzzle[0] - columns[1] - blocks[0] if puzzle[0][1] == 0
        puzzle[0][2] = x - puzzle[0] - columns[2] - blocks[0] if puzzle[0][2] == 0
        puzzle[0][3] = x - puzzle[0] - columns[3] - blocks[3] if puzzle[0][3] == 0
        puzzle[0][4] = x - puzzle[0] - columns[4] - blocks[3] if puzzle[0][4] == 0
        puzzle[0][5] = x - puzzle[0] - columns[5] - blocks[3] if puzzle[0][5] == 0
        puzzle[0][6] = x - puzzle[0] - columns[6] - blocks[6] if puzzle[0][6] == 0
        puzzle[0][7] = x - puzzle[0] - columns[7] - blocks[6] if puzzle[0][7] == 0
        puzzle[0][8] = x - puzzle[0] - columns[8] - blocks[6] if puzzle[0][8] == 0

        puzzle[1][0] = x - puzzle[1] - columns[0] - blocks[0] if puzzle[1][0] == 0
        puzzle[1][1] = x - puzzle[1] - columns[1] - blocks[0] if puzzle[1][1] == 0
        puzzle[1][2] = x - puzzle[1] - columns[2] - blocks[0] if puzzle[1][2] == 0
        puzzle[1][3] = x - puzzle[1] - columns[3] - blocks[3] if puzzle[1][3] == 0
        puzzle[1][4] = x - puzzle[1] - columns[4] - blocks[3] if puzzle[1][4] == 0
        puzzle[1][5] = x - puzzle[1] - columns[5] - blocks[3] if puzzle[1][5] == 0
        puzzle[1][6] = x - puzzle[1] - columns[6] - blocks[6] if puzzle[1][6] == 0
        puzzle[1][7] = x - puzzle[1] - columns[7] - blocks[6] if puzzle[1][7] == 0
        puzzle[1][8] = x - puzzle[1] - columns[8] - blocks[6] if puzzle[1][8] == 0

        puzzle[2][0] = x - puzzle[2] - columns[0] - blocks[0] if puzzle[2][0] == 0
        puzzle[2][1] = x - puzzle[2] - columns[1] - blocks[0] if puzzle[2][1] == 0
        puzzle[2][2] = x - puzzle[2] - columns[2] - blocks[0] if puzzle[2][2] == 0
        puzzle[2][3] = x - puzzle[2] - columns[3] - blocks[3] if puzzle[2][3] == 0
        puzzle[2][4] = x - puzzle[2] - columns[4] - blocks[3] if puzzle[2][4] == 0
        puzzle[2][5] = x - puzzle[2] - columns[5] - blocks[3] if puzzle[2][5] == 0
        puzzle[2][6] = x - puzzle[2] - columns[6] - blocks[6] if puzzle[2][6] == 0
        puzzle[2][7] = x - puzzle[2] - columns[7] - blocks[6] if puzzle[2][7] == 0
        puzzle[2][8] = x - puzzle[2] - columns[8] - blocks[6] if puzzle[2][8] == 0

        puzzle[3][0] = x - puzzle[3] - columns[0] - blocks[1] if puzzle[3][0] == 0
        puzzle[3][1] = x - puzzle[3] - columns[1] - blocks[1] if puzzle[3][1] == 0
        puzzle[3][2] = x - puzzle[3] - columns[2] - blocks[1] if puzzle[3][2] == 0
        puzzle[3][3] = x - puzzle[3] - columns[3] - blocks[4] if puzzle[3][3] == 0
        puzzle[3][4] = x - puzzle[3] - columns[4] - blocks[4] if puzzle[3][4] == 0
        puzzle[3][5] = x - puzzle[3] - columns[5] - blocks[4] if puzzle[3][5] == 0
        puzzle[3][6] = x - puzzle[3] - columns[6] - blocks[7] if puzzle[3][6] == 0
        puzzle[3][7] = x - puzzle[3] - columns[7] - blocks[7] if puzzle[3][7] == 0
        puzzle[3][8] = x - puzzle[3] - columns[8] - blocks[7] if puzzle[3][8] == 0

        puzzle[4][0] = x - puzzle[4] - columns[0] - blocks[1] if puzzle[4][0] == 0
        puzzle[4][1] = x - puzzle[4] - columns[1] - blocks[1] if puzzle[4][1] == 0
        puzzle[4][2] = x - puzzle[4] - columns[2] - blocks[1] if puzzle[4][2] == 0
        puzzle[4][3] = x - puzzle[4] - columns[3] - blocks[4] if puzzle[4][3] == 0
        puzzle[4][4] = x - puzzle[4] - columns[4] - blocks[4] if puzzle[4][4] == 0
        puzzle[4][5] = x - puzzle[4] - columns[5] - blocks[4] if puzzle[4][5] == 0
        puzzle[4][6] = x - puzzle[4] - columns[6] - blocks[7] if puzzle[4][6] == 0
        puzzle[4][7] = x - puzzle[4] - columns[7] - blocks[7] if puzzle[4][7] == 0
        puzzle[4][8] = x - puzzle[4] - columns[8] - blocks[7] if puzzle[4][8] == 0

        puzzle[5][0] = x - puzzle[5] - columns[0] - blocks[1] if puzzle[5][0] == 0
        puzzle[5][1] = x - puzzle[5] - columns[1] - blocks[1] if puzzle[5][1] == 0
        puzzle[5][2] = x - puzzle[5] - columns[2] - blocks[1] if puzzle[5][2] == 0
        puzzle[5][3] = x - puzzle[5] - columns[3] - blocks[4] if puzzle[5][3] == 0
        puzzle[5][4] = x - puzzle[5] - columns[4] - blocks[4] if puzzle[5][4] == 0
        puzzle[5][5] = x - puzzle[5] - columns[5] - blocks[4] if puzzle[5][5] == 0
        puzzle[5][6] = x - puzzle[5] - columns[6] - blocks[7] if puzzle[5][6] == 0
        puzzle[5][7] = x - puzzle[5] - columns[7] - blocks[7] if puzzle[5][7] == 0
        puzzle[5][8] = x - puzzle[5] - columns[8] - blocks[7] if puzzle[5][8] == 0

        puzzle[6][0] = x - puzzle[6] - columns[0] - blocks[2] if puzzle[6][0] == 0
        puzzle[6][1] = x - puzzle[6] - columns[1] - blocks[2] if puzzle[6][1] == 0
        puzzle[6][2] = x - puzzle[6] - columns[2] - blocks[2] if puzzle[6][2] == 0
        puzzle[6][3] = x - puzzle[6] - columns[3] - blocks[5] if puzzle[6][3] == 0
        puzzle[6][4] = x - puzzle[6] - columns[4] - blocks[5] if puzzle[6][4] == 0
        puzzle[6][5] = x - puzzle[6] - columns[5] - blocks[5] if puzzle[6][5] == 0
        puzzle[6][6] = x - puzzle[6] - columns[6] - blocks[8] if puzzle[6][6] == 0
        puzzle[6][7] = x - puzzle[6] - columns[7] - blocks[8] if puzzle[6][7] == 0
        puzzle[6][8] = x - puzzle[6] - columns[8] - blocks[8] if puzzle[6][8] == 0

        puzzle[7][0] = x - puzzle[7] - columns[0] - blocks[2] if puzzle[7][0] == 0
        puzzle[7][1] = x - puzzle[7] - columns[1] - blocks[2] if puzzle[7][1] == 0
        puzzle[7][2] = x - puzzle[7] - columns[2] - blocks[2] if puzzle[7][2] == 0
        puzzle[7][3] = x - puzzle[7] - columns[3] - blocks[5] if puzzle[7][3] == 0
        puzzle[7][4] = x - puzzle[7] - columns[4] - blocks[5] if puzzle[7][4] == 0
        puzzle[7][5] = x - puzzle[7] - columns[5] - blocks[5] if puzzle[7][5] == 0
        puzzle[7][6] = x - puzzle[7] - columns[6] - blocks[8] if puzzle[7][6] == 0
        puzzle[7][7] = x - puzzle[7] - columns[7] - blocks[8] if puzzle[7][7] == 0
        puzzle[7][8] = x - puzzle[7] - columns[8] - blocks[8] if puzzle[7][8] == 0

        puzzle[8][0] = x - puzzle[8] - columns[0] - blocks[2] if puzzle[8][0] == 0
        puzzle[8][1] = x - puzzle[8] - columns[1] - blocks[2] if puzzle[8][1] == 0
        puzzle[8][2] = x - puzzle[8] - columns[2] - blocks[2] if puzzle[8][2] == 0
        puzzle[8][3] = x - puzzle[8] - columns[3] - blocks[5] if puzzle[8][3] == 0
        puzzle[8][4] = x - puzzle[8] - columns[4] - blocks[5] if puzzle[8][4] == 0
        puzzle[8][5] = x - puzzle[8] - columns[5] - blocks[5] if puzzle[8][5] == 0
        puzzle[8][6] = x - puzzle[8] - columns[6] - blocks[8] if puzzle[8][6] == 0
        puzzle[8][7] = x - puzzle[8] - columns[7] - blocks[8] if puzzle[8][7] == 0
        puzzle[8][8] = x - puzzle[8] - columns[8] - blocks[8] if puzzle[8][8] == 0

        flattener(puzzle)

        puzzle.each { |x| refiner(x) }

        flattener(puzzle)

        columns = puzzle.transpose

        puzzle = columns.each {|x| refiner(x)}.transpose

        flattener(puzzle)

        blocks[0] = puzzle[0][0..2] + puzzle[1][0..2] + puzzle[2][0..2]
        blocks[1] = puzzle[3][0..2] + puzzle[4][0..2] + puzzle[5][0..2]
        blocks[2] = puzzle[6][0..2] + puzzle[7][0..2] + puzzle[8][0..2]
        blocks[3] = puzzle[0][3..5] + puzzle[1][3..5] + puzzle[2][3..5]
        blocks[4] = puzzle[3][3..5] + puzzle[4][3..5] + puzzle[5][3..5]
        blocks[5] = puzzle[6][3..5] + puzzle[7][3..5] + puzzle[8][3..5]
        blocks[6] = puzzle[0][6..8] + puzzle[1][6..8] + puzzle[2][6..8]
        blocks[7] = puzzle[3][6..8] + puzzle[4][6..8] + puzzle[5][6..8]
        blocks[8] = puzzle[6][6..8] + puzzle[7][6..8] + puzzle[8][6..8]

        blocks.each { |x| refiner(x)}

        puzzle[0] = blocks[0][0..2] + blocks[3][0..2] + blocks[6][0..2]
        puzzle[1] = blocks[0][3..5] + blocks[3][3..5] + blocks[6][3..5]
        puzzle[2] = blocks[0][6..8] + blocks[3][6..8] + blocks[6][6..8]
        puzzle[3] = blocks[1][0..2] + blocks[4][0..2] + blocks[7][0..2]
        puzzle[4] = blocks[1][3..5] + blocks[4][3..5] + blocks[7][3..5]
        puzzle[5] = blocks[1][6..8] + blocks[4][6..8] + blocks[7][6..8]
        puzzle[6] = blocks[2][0..2] + blocks[5][0..2] + blocks[8][0..2]
        puzzle[7] = blocks[2][3..5] + blocks[5][3..5] + blocks[8][3..5]
        puzzle[8] = blocks[2][6..8] + blocks[5][6..8] + blocks[8][6..8]

        puzzle[0] = puzzle[0].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[1] = puzzle[1].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[2] = puzzle[2].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[3] = puzzle[3].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[4] = puzzle[4].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[5] = puzzle[5].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[6] = puzzle[6].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[7] = puzzle[7].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[8] = puzzle[8].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten

        blocks = puzzle.map{|row| row.each_slice(3).to_a}.transpose.flatten.each_slice(9).to_a
        columns = puzzle.transpose
        x = [1, 2, 3, 4, 5, 6, 7, 8, 9]

        puzzle[0][0] = x - puzzle[0] - columns[0] - blocks[0] if puzzle[0][0] == 0
        puzzle[0][1] = x - puzzle[0] - columns[1] - blocks[0] if puzzle[0][1] == 0
        puzzle[0][2] = x - puzzle[0] - columns[2] - blocks[0] if puzzle[0][2] == 0
        puzzle[0][3] = x - puzzle[0] - columns[3] - blocks[3] if puzzle[0][3] == 0
        puzzle[0][4] = x - puzzle[0] - columns[4] - blocks[3] if puzzle[0][4] == 0
        puzzle[0][5] = x - puzzle[0] - columns[5] - blocks[3] if puzzle[0][5] == 0
        puzzle[0][6] = x - puzzle[0] - columns[6] - blocks[6] if puzzle[0][6] == 0
        puzzle[0][7] = x - puzzle[0] - columns[7] - blocks[6] if puzzle[0][7] == 0
        puzzle[0][8] = x - puzzle[0] - columns[8] - blocks[6] if puzzle[0][8] == 0

        puzzle[1][0] = x - puzzle[1] - columns[0] - blocks[0] if puzzle[1][0] == 0
        puzzle[1][1] = x - puzzle[1] - columns[1] - blocks[0] if puzzle[1][1] == 0
        puzzle[1][2] = x - puzzle[1] - columns[2] - blocks[0] if puzzle[1][2] == 0
        puzzle[1][3] = x - puzzle[1] - columns[3] - blocks[3] if puzzle[1][3] == 0
        puzzle[1][4] = x - puzzle[1] - columns[4] - blocks[3] if puzzle[1][4] == 0
        puzzle[1][5] = x - puzzle[1] - columns[5] - blocks[3] if puzzle[1][5] == 0
        puzzle[1][6] = x - puzzle[1] - columns[6] - blocks[6] if puzzle[1][6] == 0
        puzzle[1][7] = x - puzzle[1] - columns[7] - blocks[6] if puzzle[1][7] == 0
        puzzle[1][8] = x - puzzle[1] - columns[8] - blocks[6] if puzzle[1][8] == 0

        puzzle[2][0] = x - puzzle[2] - columns[0] - blocks[0] if puzzle[2][0] == 0
        puzzle[2][1] = x - puzzle[2] - columns[1] - blocks[0] if puzzle[2][1] == 0
        puzzle[2][2] = x - puzzle[2] - columns[2] - blocks[0] if puzzle[2][2] == 0
        puzzle[2][3] = x - puzzle[2] - columns[3] - blocks[3] if puzzle[2][3] == 0
        puzzle[2][4] = x - puzzle[2] - columns[4] - blocks[3] if puzzle[2][4] == 0
        puzzle[2][5] = x - puzzle[2] - columns[5] - blocks[3] if puzzle[2][5] == 0
        puzzle[2][6] = x - puzzle[2] - columns[6] - blocks[6] if puzzle[2][6] == 0
        puzzle[2][7] = x - puzzle[2] - columns[7] - blocks[6] if puzzle[2][7] == 0
        puzzle[2][8] = x - puzzle[2] - columns[8] - blocks[6] if puzzle[2][8] == 0

        puzzle[3][0] = x - puzzle[3] - columns[0] - blocks[1] if puzzle[3][0] == 0
        puzzle[3][1] = x - puzzle[3] - columns[1] - blocks[1] if puzzle[3][1] == 0
        puzzle[3][2] = x - puzzle[3] - columns[2] - blocks[1] if puzzle[3][2] == 0
        puzzle[3][3] = x - puzzle[3] - columns[3] - blocks[4] if puzzle[3][3] == 0
        puzzle[3][4] = x - puzzle[3] - columns[4] - blocks[4] if puzzle[3][4] == 0
        puzzle[3][5] = x - puzzle[3] - columns[5] - blocks[4] if puzzle[3][5] == 0
        puzzle[3][6] = x - puzzle[3] - columns[6] - blocks[7] if puzzle[3][6] == 0
        puzzle[3][7] = x - puzzle[3] - columns[7] - blocks[7] if puzzle[3][7] == 0
        puzzle[3][8] = x - puzzle[3] - columns[8] - blocks[7] if puzzle[3][8] == 0

        puzzle[4][0] = x - puzzle[4] - columns[0] - blocks[1] if puzzle[4][0] == 0
        puzzle[4][1] = x - puzzle[4] - columns[1] - blocks[1] if puzzle[4][1] == 0
        puzzle[4][2] = x - puzzle[4] - columns[2] - blocks[1] if puzzle[4][2] == 0
        puzzle[4][3] = x - puzzle[4] - columns[3] - blocks[4] if puzzle[4][3] == 0
        puzzle[4][4] = x - puzzle[4] - columns[4] - blocks[4] if puzzle[4][4] == 0
        puzzle[4][5] = x - puzzle[4] - columns[5] - blocks[4] if puzzle[4][5] == 0
        puzzle[4][6] = x - puzzle[4] - columns[6] - blocks[7] if puzzle[4][6] == 0
        puzzle[4][7] = x - puzzle[4] - columns[7] - blocks[7] if puzzle[4][7] == 0
        puzzle[4][8] = x - puzzle[4] - columns[8] - blocks[7] if puzzle[4][8] == 0

        puzzle[5][0] = x - puzzle[5] - columns[0] - blocks[1] if puzzle[5][0] == 0
        puzzle[5][1] = x - puzzle[5] - columns[1] - blocks[1] if puzzle[5][1] == 0
        puzzle[5][2] = x - puzzle[5] - columns[2] - blocks[1] if puzzle[5][2] == 0
        puzzle[5][3] = x - puzzle[5] - columns[3] - blocks[4] if puzzle[5][3] == 0
        puzzle[5][4] = x - puzzle[5] - columns[4] - blocks[4] if puzzle[5][4] == 0
        puzzle[5][5] = x - puzzle[5] - columns[5] - blocks[4] if puzzle[5][5] == 0
        puzzle[5][6] = x - puzzle[5] - columns[6] - blocks[7] if puzzle[5][6] == 0
        puzzle[5][7] = x - puzzle[5] - columns[7] - blocks[7] if puzzle[5][7] == 0
        puzzle[5][8] = x - puzzle[5] - columns[8] - blocks[7] if puzzle[5][8] == 0

        puzzle[6][0] = x - puzzle[6] - columns[0] - blocks[2] if puzzle[6][0] == 0
        puzzle[6][1] = x - puzzle[6] - columns[1] - blocks[2] if puzzle[6][1] == 0
        puzzle[6][2] = x - puzzle[6] - columns[2] - blocks[2] if puzzle[6][2] == 0
        puzzle[6][3] = x - puzzle[6] - columns[3] - blocks[5] if puzzle[6][3] == 0
        puzzle[6][4] = x - puzzle[6] - columns[4] - blocks[5] if puzzle[6][4] == 0
        puzzle[6][5] = x - puzzle[6] - columns[5] - blocks[5] if puzzle[6][5] == 0
        puzzle[6][6] = x - puzzle[6] - columns[6] - blocks[8] if puzzle[6][6] == 0
        puzzle[6][7] = x - puzzle[6] - columns[7] - blocks[8] if puzzle[6][7] == 0
        puzzle[6][8] = x - puzzle[6] - columns[8] - blocks[8] if puzzle[6][8] == 0

        puzzle[7][0] = x - puzzle[7] - columns[0] - blocks[2] if puzzle[7][0] == 0
        puzzle[7][1] = x - puzzle[7] - columns[1] - blocks[2] if puzzle[7][1] == 0
        puzzle[7][2] = x - puzzle[7] - columns[2] - blocks[2] if puzzle[7][2] == 0
        puzzle[7][3] = x - puzzle[7] - columns[3] - blocks[5] if puzzle[7][3] == 0
        puzzle[7][4] = x - puzzle[7] - columns[4] - blocks[5] if puzzle[7][4] == 0
        puzzle[7][5] = x - puzzle[7] - columns[5] - blocks[5] if puzzle[7][5] == 0
        puzzle[7][6] = x - puzzle[7] - columns[6] - blocks[8] if puzzle[7][6] == 0
        puzzle[7][7] = x - puzzle[7] - columns[7] - blocks[8] if puzzle[7][7] == 0
        puzzle[7][8] = x - puzzle[7] - columns[8] - blocks[8] if puzzle[7][8] == 0

        puzzle[8][0] = x - puzzle[8] - columns[0] - blocks[2] if puzzle[8][0] == 0
        puzzle[8][1] = x - puzzle[8] - columns[1] - blocks[2] if puzzle[8][1] == 0
        puzzle[8][2] = x - puzzle[8] - columns[2] - blocks[2] if puzzle[8][2] == 0
        puzzle[8][3] = x - puzzle[8] - columns[3] - blocks[5] if puzzle[8][3] == 0
        puzzle[8][4] = x - puzzle[8] - columns[4] - blocks[5] if puzzle[8][4] == 0
        puzzle[8][5] = x - puzzle[8] - columns[5] - blocks[5] if puzzle[8][5] == 0
        puzzle[8][6] = x - puzzle[8] - columns[6] - blocks[8] if puzzle[8][6] == 0
        puzzle[8][7] = x - puzzle[8] - columns[7] - blocks[8] if puzzle[8][7] == 0
        puzzle[8][8] = x - puzzle[8] - columns[8] - blocks[8] if puzzle[8][8] == 0

        flattener(puzzle)

        puzzle.each { |x| refiner(x) }

        flattener(puzzle)

        columns = puzzle.transpose

        puzzle = columns.each {|x| refiner(x)}.transpose

        flattener(puzzle)

        blocks[0] = puzzle[0][0..2] + puzzle[1][0..2] + puzzle[2][0..2]
        blocks[1] = puzzle[3][0..2] + puzzle[4][0..2] + puzzle[5][0..2]
        blocks[2] = puzzle[6][0..2] + puzzle[7][0..2] + puzzle[8][0..2]
        blocks[3] = puzzle[0][3..5] + puzzle[1][3..5] + puzzle[2][3..5]
        blocks[4] = puzzle[3][3..5] + puzzle[4][3..5] + puzzle[5][3..5]
        blocks[5] = puzzle[6][3..5] + puzzle[7][3..5] + puzzle[8][3..5]
        blocks[6] = puzzle[0][6..8] + puzzle[1][6..8] + puzzle[2][6..8]
        blocks[7] = puzzle[3][6..8] + puzzle[4][6..8] + puzzle[5][6..8]
        blocks[8] = puzzle[6][6..8] + puzzle[7][6..8] + puzzle[8][6..8]

        blocks.each { |x| refiner(x)}

        puzzle[0] = blocks[0][0..2] + blocks[3][0..2] + blocks[6][0..2]
        puzzle[1] = blocks[0][3..5] + blocks[3][3..5] + blocks[6][3..5]
        puzzle[2] = blocks[0][6..8] + blocks[3][6..8] + blocks[6][6..8]
        puzzle[3] = blocks[1][0..2] + blocks[4][0..2] + blocks[7][0..2]
        puzzle[4] = blocks[1][3..5] + blocks[4][3..5] + blocks[7][3..5]
        puzzle[5] = blocks[1][6..8] + blocks[4][6..8] + blocks[7][6..8]
        puzzle[6] = blocks[2][0..2] + blocks[5][0..2] + blocks[8][0..2]
        puzzle[7] = blocks[2][3..5] + blocks[5][3..5] + blocks[8][3..5]
        puzzle[8] = blocks[2][6..8] + blocks[5][6..8] + blocks[8][6..8]

        puzzle[0] = puzzle[0].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[1] = puzzle[1].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[2] = puzzle[2].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[3] = puzzle[3].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[4] = puzzle[4].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[5] = puzzle[5].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[6] = puzzle[6].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[7] = puzzle[7].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[8] = puzzle[8].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten

        blocks = puzzle.map{|row| row.each_slice(3).to_a}.transpose.flatten.each_slice(9).to_a
        columns = puzzle.transpose
        x = [1, 2, 3, 4, 5, 6, 7, 8, 9]

        puzzle[0][0] = x - puzzle[0] - columns[0] - blocks[0] if puzzle[0][0] == 0
        puzzle[0][1] = x - puzzle[0] - columns[1] - blocks[0] if puzzle[0][1] == 0
        puzzle[0][2] = x - puzzle[0] - columns[2] - blocks[0] if puzzle[0][2] == 0
        puzzle[0][3] = x - puzzle[0] - columns[3] - blocks[3] if puzzle[0][3] == 0
        puzzle[0][4] = x - puzzle[0] - columns[4] - blocks[3] if puzzle[0][4] == 0
        puzzle[0][5] = x - puzzle[0] - columns[5] - blocks[3] if puzzle[0][5] == 0
        puzzle[0][6] = x - puzzle[0] - columns[6] - blocks[6] if puzzle[0][6] == 0
        puzzle[0][7] = x - puzzle[0] - columns[7] - blocks[6] if puzzle[0][7] == 0
        puzzle[0][8] = x - puzzle[0] - columns[8] - blocks[6] if puzzle[0][8] == 0

        puzzle[1][0] = x - puzzle[1] - columns[0] - blocks[0] if puzzle[1][0] == 0
        puzzle[1][1] = x - puzzle[1] - columns[1] - blocks[0] if puzzle[1][1] == 0
        puzzle[1][2] = x - puzzle[1] - columns[2] - blocks[0] if puzzle[1][2] == 0
        puzzle[1][3] = x - puzzle[1] - columns[3] - blocks[3] if puzzle[1][3] == 0
        puzzle[1][4] = x - puzzle[1] - columns[4] - blocks[3] if puzzle[1][4] == 0
        puzzle[1][5] = x - puzzle[1] - columns[5] - blocks[3] if puzzle[1][5] == 0
        puzzle[1][6] = x - puzzle[1] - columns[6] - blocks[6] if puzzle[1][6] == 0
        puzzle[1][7] = x - puzzle[1] - columns[7] - blocks[6] if puzzle[1][7] == 0
        puzzle[1][8] = x - puzzle[1] - columns[8] - blocks[6] if puzzle[1][8] == 0

        puzzle[2][0] = x - puzzle[2] - columns[0] - blocks[0] if puzzle[2][0] == 0
        puzzle[2][1] = x - puzzle[2] - columns[1] - blocks[0] if puzzle[2][1] == 0
        puzzle[2][2] = x - puzzle[2] - columns[2] - blocks[0] if puzzle[2][2] == 0
        puzzle[2][3] = x - puzzle[2] - columns[3] - blocks[3] if puzzle[2][3] == 0
        puzzle[2][4] = x - puzzle[2] - columns[4] - blocks[3] if puzzle[2][4] == 0
        puzzle[2][5] = x - puzzle[2] - columns[5] - blocks[3] if puzzle[2][5] == 0
        puzzle[2][6] = x - puzzle[2] - columns[6] - blocks[6] if puzzle[2][6] == 0
        puzzle[2][7] = x - puzzle[2] - columns[7] - blocks[6] if puzzle[2][7] == 0
        puzzle[2][8] = x - puzzle[2] - columns[8] - blocks[6] if puzzle[2][8] == 0

        puzzle[3][0] = x - puzzle[3] - columns[0] - blocks[1] if puzzle[3][0] == 0
        puzzle[3][1] = x - puzzle[3] - columns[1] - blocks[1] if puzzle[3][1] == 0
        puzzle[3][2] = x - puzzle[3] - columns[2] - blocks[1] if puzzle[3][2] == 0
        puzzle[3][3] = x - puzzle[3] - columns[3] - blocks[4] if puzzle[3][3] == 0
        puzzle[3][4] = x - puzzle[3] - columns[4] - blocks[4] if puzzle[3][4] == 0
        puzzle[3][5] = x - puzzle[3] - columns[5] - blocks[4] if puzzle[3][5] == 0
        puzzle[3][6] = x - puzzle[3] - columns[6] - blocks[7] if puzzle[3][6] == 0
        puzzle[3][7] = x - puzzle[3] - columns[7] - blocks[7] if puzzle[3][7] == 0
        puzzle[3][8] = x - puzzle[3] - columns[8] - blocks[7] if puzzle[3][8] == 0

        puzzle[4][0] = x - puzzle[4] - columns[0] - blocks[1] if puzzle[4][0] == 0
        puzzle[4][1] = x - puzzle[4] - columns[1] - blocks[1] if puzzle[4][1] == 0
        puzzle[4][2] = x - puzzle[4] - columns[2] - blocks[1] if puzzle[4][2] == 0
        puzzle[4][3] = x - puzzle[4] - columns[3] - blocks[4] if puzzle[4][3] == 0
        puzzle[4][4] = x - puzzle[4] - columns[4] - blocks[4] if puzzle[4][4] == 0
        puzzle[4][5] = x - puzzle[4] - columns[5] - blocks[4] if puzzle[4][5] == 0
        puzzle[4][6] = x - puzzle[4] - columns[6] - blocks[7] if puzzle[4][6] == 0
        puzzle[4][7] = x - puzzle[4] - columns[7] - blocks[7] if puzzle[4][7] == 0
        puzzle[4][8] = x - puzzle[4] - columns[8] - blocks[7] if puzzle[4][8] == 0

        puzzle[5][0] = x - puzzle[5] - columns[0] - blocks[1] if puzzle[5][0] == 0
        puzzle[5][1] = x - puzzle[5] - columns[1] - blocks[1] if puzzle[5][1] == 0
        puzzle[5][2] = x - puzzle[5] - columns[2] - blocks[1] if puzzle[5][2] == 0
        puzzle[5][3] = x - puzzle[5] - columns[3] - blocks[4] if puzzle[5][3] == 0
        puzzle[5][4] = x - puzzle[5] - columns[4] - blocks[4] if puzzle[5][4] == 0
        puzzle[5][5] = x - puzzle[5] - columns[5] - blocks[4] if puzzle[5][5] == 0
        puzzle[5][6] = x - puzzle[5] - columns[6] - blocks[7] if puzzle[5][6] == 0
        puzzle[5][7] = x - puzzle[5] - columns[7] - blocks[7] if puzzle[5][7] == 0
        puzzle[5][8] = x - puzzle[5] - columns[8] - blocks[7] if puzzle[5][8] == 0

        puzzle[6][0] = x - puzzle[6] - columns[0] - blocks[2] if puzzle[6][0] == 0
        puzzle[6][1] = x - puzzle[6] - columns[1] - blocks[2] if puzzle[6][1] == 0
        puzzle[6][2] = x - puzzle[6] - columns[2] - blocks[2] if puzzle[6][2] == 0
        puzzle[6][3] = x - puzzle[6] - columns[3] - blocks[5] if puzzle[6][3] == 0
        puzzle[6][4] = x - puzzle[6] - columns[4] - blocks[5] if puzzle[6][4] == 0
        puzzle[6][5] = x - puzzle[6] - columns[5] - blocks[5] if puzzle[6][5] == 0
        puzzle[6][6] = x - puzzle[6] - columns[6] - blocks[8] if puzzle[6][6] == 0
        puzzle[6][7] = x - puzzle[6] - columns[7] - blocks[8] if puzzle[6][7] == 0
        puzzle[6][8] = x - puzzle[6] - columns[8] - blocks[8] if puzzle[6][8] == 0

        puzzle[7][0] = x - puzzle[7] - columns[0] - blocks[2] if puzzle[7][0] == 0
        puzzle[7][1] = x - puzzle[7] - columns[1] - blocks[2] if puzzle[7][1] == 0
        puzzle[7][2] = x - puzzle[7] - columns[2] - blocks[2] if puzzle[7][2] == 0
        puzzle[7][3] = x - puzzle[7] - columns[3] - blocks[5] if puzzle[7][3] == 0
        puzzle[7][4] = x - puzzle[7] - columns[4] - blocks[5] if puzzle[7][4] == 0
        puzzle[7][5] = x - puzzle[7] - columns[5] - blocks[5] if puzzle[7][5] == 0
        puzzle[7][6] = x - puzzle[7] - columns[6] - blocks[8] if puzzle[7][6] == 0
        puzzle[7][7] = x - puzzle[7] - columns[7] - blocks[8] if puzzle[7][7] == 0
        puzzle[7][8] = x - puzzle[7] - columns[8] - blocks[8] if puzzle[7][8] == 0

        puzzle[8][0] = x - puzzle[8] - columns[0] - blocks[2] if puzzle[8][0] == 0
        puzzle[8][1] = x - puzzle[8] - columns[1] - blocks[2] if puzzle[8][1] == 0
        puzzle[8][2] = x - puzzle[8] - columns[2] - blocks[2] if puzzle[8][2] == 0
        puzzle[8][3] = x - puzzle[8] - columns[3] - blocks[5] if puzzle[8][3] == 0
        puzzle[8][4] = x - puzzle[8] - columns[4] - blocks[5] if puzzle[8][4] == 0
        puzzle[8][5] = x - puzzle[8] - columns[5] - blocks[5] if puzzle[8][5] == 0
        puzzle[8][6] = x - puzzle[8] - columns[6] - blocks[8] if puzzle[8][6] == 0
        puzzle[8][7] = x - puzzle[8] - columns[7] - blocks[8] if puzzle[8][7] == 0
        puzzle[8][8] = x - puzzle[8] - columns[8] - blocks[8] if puzzle[8][8] == 0

        flattener(puzzle)

        puzzle.each { |x| refiner(x) }

        flattener(puzzle)

        columns = puzzle.transpose

        puzzle = columns.each {|x| refiner(x)}.transpose

        flattener(puzzle)

        blocks[0] = puzzle[0][0..2] + puzzle[1][0..2] + puzzle[2][0..2]
        blocks[1] = puzzle[3][0..2] + puzzle[4][0..2] + puzzle[5][0..2]
        blocks[2] = puzzle[6][0..2] + puzzle[7][0..2] + puzzle[8][0..2]
        blocks[3] = puzzle[0][3..5] + puzzle[1][3..5] + puzzle[2][3..5]
        blocks[4] = puzzle[3][3..5] + puzzle[4][3..5] + puzzle[5][3..5]
        blocks[5] = puzzle[6][3..5] + puzzle[7][3..5] + puzzle[8][3..5]
        blocks[6] = puzzle[0][6..8] + puzzle[1][6..8] + puzzle[2][6..8]
        blocks[7] = puzzle[3][6..8] + puzzle[4][6..8] + puzzle[5][6..8]
        blocks[8] = puzzle[6][6..8] + puzzle[7][6..8] + puzzle[8][6..8]

        blocks.each { |x| refiner(x)}

        puzzle[0] = blocks[0][0..2] + blocks[3][0..2] + blocks[6][0..2]
        puzzle[1] = blocks[0][3..5] + blocks[3][3..5] + blocks[6][3..5]
        puzzle[2] = blocks[0][6..8] + blocks[3][6..8] + blocks[6][6..8]
        puzzle[3] = blocks[1][0..2] + blocks[4][0..2] + blocks[7][0..2]
        puzzle[4] = blocks[1][3..5] + blocks[4][3..5] + blocks[7][3..5]
        puzzle[5] = blocks[1][6..8] + blocks[4][6..8] + blocks[7][6..8]
        puzzle[6] = blocks[2][0..2] + blocks[5][0..2] + blocks[8][0..2]
        puzzle[7] = blocks[2][3..5] + blocks[5][3..5] + blocks[8][3..5]
        puzzle[8] = blocks[2][6..8] + blocks[5][6..8] + blocks[8][6..8]

        puzzle[0] = puzzle[0].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[1] = puzzle[1].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[2] = puzzle[2].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[3] = puzzle[3].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[4] = puzzle[4].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[5] = puzzle[5].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[6] = puzzle[6].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[7] = puzzle[7].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten
        puzzle[8] = puzzle[8].map { |x| x = 0 if x.kind_of?(Array) && x.length > 1 ; x = x}.flatten

        puzzle
  end
end
