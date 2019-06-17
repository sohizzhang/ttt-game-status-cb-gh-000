def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [1,4,7],
  [0,3,6],
  [2,5,8],
]

def won?(board)
  WIN_COMBINATIONS.each do |numbers|
    win_index_1 = numbers[0]
    win_index_2 = numbers[1]
    win_index_3 = numbers[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      puts WIN_COMBINATIONS(numbers[0], numbers[1], numbers[2])
    else
      false
    end
  end
end

def full?(board)
  board.each do |value|
    if value == "X" || value == "O"
      true
    else
      false
    end
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  elsif won?(board)
    false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end

def winner(board)
end
