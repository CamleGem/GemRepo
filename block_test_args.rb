

def do_block_test
  yield()
  yield(1)
  yield(1, 2)
  yield(1, 2, 3)
end

do_block_test do |*a|
  p a
end
