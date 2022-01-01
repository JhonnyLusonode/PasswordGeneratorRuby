#to_a
#
#static VALUE
#rb_ary_to_a(VALUE ary)
#{
#    if (rb_obj_class(ary) != rb_cArray) {
#       VALUE dup = rb_ary_new2(RARRAY_LEN(ary));
#       rb_ary_replace(dup, ary);
#        return dup;
#    }
#    return ary;
#}
#
#Metodo pack('U*).chars.to_a - UTF-8 character 
#  33..38- ver tabela ascii (https://www.asciitable.com/)
#- %w(i o 0 1 l 0) gExcepto caracteres que podem ser confundidos (i o 0 1 l 0).
#
#inspect 
#inspect() public
#Creates a string representation of self.
#
#[ "a", "b", "c" ].to_s     #=> "[\"a\", \"b\", \"c\"]"
#
#static VALUE
#rb_ary_inspect(VALUE ary)
#{
#    if (RARRAY_LEN(ary) == 0) return rb_usascii_str_new2("[]");
#    return rb_exec_recursive(inspect_ary, ary, 0);
#}

# print "Gera password complexa >8<=16 \n"
# puts "Numero de caraters"
# b = gets.chomp.to_i
# def random_password (size = 8)
#   chars = (('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + ((33..38).to_a).pack('U*').chars.to_a) - %w(i o 0 1 l 0)
#   (1..size).collect{|a| [rand(chars.size)] }.join

#   puts random_password.inspect
# end

CHARS = ('0'..'9').to_a + ('A'..'Z').to_a + ('a'..'z').to_a + ((33..38).to_a).pack('U*').chars.to_a - %w(i o 0 1 l 0)
def random_password(length)
  CHARS.sort_by { rand }.join[0...length]
end

print "Gera password complexa de 8 a 64 chars\n"
puts "Numero de chars??"
num = gets.chomp.to_i
while num < 8 || num > 64
  print "Numero invalido\n"
  puts "Numero de chars??"
  num = gets.chomp.to_i
end
puts random_password(num)

