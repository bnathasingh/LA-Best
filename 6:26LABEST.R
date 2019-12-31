t.test(beads$Weight[beads$Color== 'celeste' & beads$Shape== 'round' & beads$Length< 7], 
       beads$Weight[beads$Length<7 & beads$Shape=='round' & beads$Color== 'emerald'])
?t.test
?lm()
model = lm(formula = Weight~Shape , data = beads, subset = 
             (Shape=='round'))
summary(model)

beads$Color = relevel(beads$Shape, ref = 'flat')
model = lm(formula = Weight~Color, data = beads)
summary(model)

mlr = lm(Weight~ Length+Shape, data = beads)
summary(mlr)

mlrmain = (lm(formula = Weight~Length+Shape*Length, data = beads))
summary(mlrmain)

slm = lm(formula = Weight~Length+Shape, data = beads, subset = (Shape == "rondelle"))
summary(slm)

beads$Shape == 'flat'


anova(mlr2, mlr)

