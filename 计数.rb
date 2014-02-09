# encoding: utf-8
# 描述：
# 这两列数字，类似于电子表的“日”字形表示，每边分别需要用3、4个“*”表示，给你一个数字字符串，在单边需要m个“*”表示的情况下，这个数字需要多少“*”呢？
#   • 程序输入字符串和m
#   • 将结果输出即可
# 例如，输入47 3，答案为16
#      输入693 4，答案为52

class StarCount

  def run
    puts "输入需要的数字字符串"
    STDOUT.flush
    num = gets.chomp
    puts "输入单边的星星数量"
    m = gets.chomp.to_i
    puts "总共需要#{star_total(num,m).to_i}个星星!"
  end

private
  def star_total(num,m)
    total = 0
    row = m
    col = 2*m-1
    # 计算每个数字所需的星星数
    star_num_arr = num.split('').map { |i| calculate(i) }.map { |n| row*n[0]+n[1]*(col-n[0]) }
    # 求和
    total = eval star_num_arr.join('+')
  end

  # 行与列的关系
  def calculate(i)
    one_num_star = 0
    case i
    when '0'
      row = 2, col = 2
    when '1'
      row = 0, col = 1
    when '2'
      row = 3, col = 1
    when '3'
      row = 3, col = 1
    when '4'
      row = 1, col = 1.5
    when '5'
      row = 3, col = 1
    when '6'
      row = 3, col = 1.5
    when '7'
      row = 1, col = 1
    when '8'
      row = 3, col = 2
    when '9'
      row = 3, col = 1.5
    end
  end
end

c = StarCount.new
c.run
# c.star_total('693',4)