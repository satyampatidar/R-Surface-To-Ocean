library(ggplot2)

# Scatter plot of hwy vs cyl
# Way 1
p <- ggplot(data = mpg, aes(hwy,cyl))
p+geom_point(alpha = 3, color = "blue", size = 3)

# Way 2
p <- ggplot(data = mpg, aes(x = hwy, y = cyl))
p+geom_point()

#Way3
ggplot(mpg, aes(hwy,cyl))+geom_point()


# Scatterplot of class vs drv
p <- ggplot(data = mpg, aes(class, drv))+geom_point()
p+geom_point(alpha = 3, color = "blue", size = 3)
p+geom_jitter()

# A scatterplot is definitely not a helpful showcase of these factors since both
# drv and class are categorical vars. Since categorical vars ordinarily take a few
# qualities, there are a set number of special blends of (x, y) values that can be shown.

ggplot(data = mpg) +  geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))
# Color is worng since it should be outside the bracket

ggplot(data = mpg) +  geom_point(mapping = aes(x = displ, y = hwy))
# Default is Black

ggplot(data = mpg)+geom_point(mapping = aes(x = displ, y = hwy), colour = "blue")
#correct

ggplot(mpg, aes(displ, hwy, colors(ditinct = FALSE)))+geom_point()
# No Shade

ggplot(mpg, aes(x = displ,y = hwy, colour = cty))+geom_point()
# Continuous Variable

ggplot(mpg, aes(x = displ,y = hwy, size = cty))+geom_point()
# Continuous Variable

ggplot(mpg, aes(x = displ,y = hwy, shape = cty))+geom_point()
# Error - A continuous variable can not be mapped to shape

ggplot(mpg, aes(x = displ,y = hwy, size = hwy))+geom_point()
ggplot(mpg, aes(x = displ,y = hwy, size = displ))+geom_point()
ggplot(mpg, aes(x = displ,y = hwy, colour = displ))+geom_point()
ggplot(mpg, aes(x = displ,y = hwy, colour = hwy))+geom_point()
ggplot(mpg, aes(x = displ,y = hwy, colour = hwy, size = hwy))+geom_point()
ggplot(mpg, aes(x = displ,y = hwy, colour = hwy, size = displ))+geom_point()
ggplot(mpg, aes(x = displ,y = hwy, colour = displ, size = hwy))+geom_point()

# If you compare above plots to original versions ploted in the above codes.
# You will find that code produces plots but plots are bad. This is redundant and not adviced.

ggplot(mpg, aes(displ, hwy, colour = displ < 5))+geom_point()
# Produces different color to th plot greater than 5 on X axis

ggplot(data = mpg) +  geom_point(mapping = aes(x = drv, y = cyl))
p <- ggplot(data = mpg) +  geom_point(mapping = aes(x = drv, y = cyl))+facet_grid(drv ~ cyl)
p+facet_grid(drv ~ cyl)
# No change except for outer boundary. Nothing to observe with fewer plots

# The symbol . ignores that dimension while faceting.
ggplot(data = mpg) +   geom_point(mapping = aes(x = displ, y = hwy)) +   facet_grid(drv ~ .)
# Facet drv on Y Axis

ggplot(data = mpg) +   geom_point(mapping = aes(x = displ, y = hwy)) +   facet_grid(. ~ cyl)
# Facet cyl on X Axis

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom_point() + geom_smooth()

ggplot() + geom_point(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_smooth(data = mpg, mapping = aes(x = displ, y = hwy))

# Both graph looks same, since they inherit data from ggplot in second code

ggplot(mpg, aes(displ,hwy))+geom_point()+geom_smooth(se = FALSE)

ggplot(mpg, aes(displ, hwy))+geom_smooth(mapping = aes(group = drv), se = FALSE)+geom_point()

ggplot(mpg, aes(displ, hwy, colour = drv))+geom_point()+geom_smooth(se = FALSE)

ggplot(mpg, aes(displ,hwy))+geom_point(aes(colour = drv))+geom_smooth(se = FALSE)

ggplot(mpg, aes(displ, hwy))+geom_point(aes(colour = drv))+geom_smooth(aes(linetype = drv), se = FALSE)

ggplot(mpg, aes(displ,hwy))+geom_point(size = 4, color = "white")+geom_point(aes(colour = drv))
