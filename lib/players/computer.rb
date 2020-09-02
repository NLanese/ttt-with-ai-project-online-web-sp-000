module Players
  class Computer < Player

    WIN_COMBINATIONS = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [6, 4, 2]
    ]

    def move(inputBoard)
      if self != "X"
        opp = "O"
      else
        opp = "X"
      end
      selectedSpace = -1
      WIN_COMBINATIONS.each do | selectedCombo |
        if (selectedCombo[0] == opp && selectedCombo[1] == opp)
          selectedSpace = selectedCombo[2]
          break
        elsif (selectedCombo[1] == opp && selectedCombo[2] == opp)
          selectedSpace = selectedCombo[0]
          break
        elsif (selectedCombo[0] == opp && selectedCombo[2] == opp)
          selectedSpace = selectedCombo[1]
          break
        end
      end
      if (selectedSpace == -1)
      WIN_COMBINATIONS.each do | selectedCombo |
        if (selectedCombo[0] == self && selectedCombo[1] == self)
          selectedSpace = selectedCombo[2]
          break
        elsif (selectedCombo[1] == self && selectedCombo[2] == self)
          selectedSpace = selectedCombo[0]
          break
        elsif (selectedCombo[0] == self && selectedCombo[2] == self)
          selectedSpace = selectedCombo[1]
          break
        end
      end

    end

  end
end
