# Load the required datasets and preprocessing functions
rikz_data <- read.csv("https://kaizhuphd.github.io/nat-res-stat/data/rikz.csv")

# Convert 'Beach' and 'Exposure' to factor
rikz_data$Beach <- as.factor(rikz_data$Beach)
rikz_data$Exposure <- as.factor(rikz_data$Exposure)

# Overview of the dataset structure
head(rikz_data)


# get the model
lm <- lm(Richness ~ NAP * Beach, data = rikz_data)
summary(lm)

lm2 <- lm(Richness ~ NAP + Beach + NAP * Beach, data = rikz_data)
summary(lm2)

identical(summary(lm), summary(lm2))
