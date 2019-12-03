hash = Hash.new

hash.store(:larry, 100)
p hash.fetch(:larry)


hash.store("jason", 100)
p hash.fetch("jason", nil)

p hash.fetch("perl", 200)

p hash.fetch("wall"){
   Array.new
}

hashes = {'larry' => 100, 'wall' => 200}
values = hashes.values
keys  = hashes.keys
p values
p keys

valuess = []
hashes.each_key do |key|
    valuess << key
end

p valuess


ok = Hash.new do |hash, num|
   hash[num] = num.upcase
end



og = { 'pan' => 90, 'ki' => 100}

og.delete_if do |key, vaule|
   key == 'ki'
end
p og


og.reject! do |key, value|
   key == 'pan'
end

p og