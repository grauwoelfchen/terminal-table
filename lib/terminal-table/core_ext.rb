
class String
  def align position, length
    self.__send__ position, length
  end
  alias_method :left, :ljust
  alias_method :right, :rjust

  def width
    self.to_s.chars.map{ |c| c.bytesize >= 3 ? 2 : 1 }.reduce(0, &:+)
  end

  def lpad pad_width
    return self if pad_width < 0
    (" " * pad_width) + self
  end

  def rpad pad_width
    return self if pad_width < 0
    self + (" " * pad_width)
  end
end
