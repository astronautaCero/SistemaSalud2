module PersonasHelper

	def minuscula_form
    c = self.nombres
    d = self.apellidos
    f = self.lugar_nacimiento
    i = self.poblacion
    j = self.ocupacion           
    t = self.personacn
    s = self.personaca
    z = self.personacp

    c.capitalize!
    d.downcase!
    f.downcase!
    i.downcase!
    j.downcase!
    t.downcase!
    s.downcase!
    z.downcase!



	end
end
