#####################
# 生成随机码
#####################

module RandomCode
  def self.number(length = 6)
    (0...length).map { (0..9).to_a.rand }.join("")
  end
  
  def self.mix_string(length = 12)
    tnow = Time.now.to_i
    digest_string = (1..100).to_a.reduce("") { |a, e| a + ("a".."z").to_a.rand }
    origin_string = (Digest::MD5.hexdigest(digest_string)[0...(length - 4)] + tnow.to_s.gsub((tnow / 10000).to_s, '')).upcase
    origin_string[0..1] + origin_string[(length - 4)..(length - 3)] + origin_string[2..3] + origin_string[(length - 2)..(length - 1)] + origin_string[4..(length - 5)]
  end
end