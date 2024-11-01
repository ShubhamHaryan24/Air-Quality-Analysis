create database AirQualityAnalysis

Create table Locations(
LocationID int primary key,
City varchar(50),
Area varchar(50),
Latitude float,
Longitude float
);

select * from Locations;

create table Pollutants(
PollutantID int primary key,
PollutantName varchar(50),
Description varchar(100)
);

select * from Pollutants;

create table AirQuality(
RecordID int primary key,
LocationID int,
PollutantID int,
Date datetime,
Hour datetime,
PollutantLevel int,
AQI int,
foreign key (LocationID) references Locations(LocationID),
foreign key (PollutantID) references Pollutants(PollutantID)
);

select * from AirQuality;

create table HealthImpact(
ImpactID int primary key,
PollutantID int,
HealthEffect varchar(50),
RecommendedAction varchar(100),
foreign key (PollutantID) references AirQuality(PollutantID)
);

select * from HealthImpact;


