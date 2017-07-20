# The following list contains the names of individuals who are pioneers in the
# field of computing or that have had a significant influence on the field.
# However, the names are in an encrypted form, using a very simple (and
# incredibly weak) form of encryption called rot 13.
#
# Write a program that deciphers and prints each of these names.
#
# Nqn Ybirynpr
# Tenpr Ubccre
# Nqryr Tbyqfgvar
# Nyna Ghevat
# Puneyrf Onoontr
# Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
# Wbua Ngnanfbss
# Ybvf Unyog
# Pynhqr Funaaba
# Fgrir Wbof
# Ovyy Tngrf
# Gvz Orearef-Yrr
# Fgrir Jbmavnx
# Xbaenq Mhfr
# Wbua Ngnanfbss
# Fve Nagbal Ubner
# Zneiva Zvafxl
# Lhxvuveb Zngfhzbgb
# Unllvz Fybavzfxv
# Tregehqr Oynapu

ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unyog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Wbua Ngnanfbss',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
].freeze

def decipher_rot13(name)
  result_name = ""

  name.each_char do |char|
    case char
    when 'a'..'m', 'A'..'M' then result_name += (char.ord + 13).chr
    when 'n'..'z', 'N'..'Z' then result_name += (char.ord - 13).chr
    else result_name += char
    end
  end

  result_name
end

ENCRYPTED_PIONEERS.each do |encrypted_name|
  puts decipher_rot13(encrypted_name)
end
