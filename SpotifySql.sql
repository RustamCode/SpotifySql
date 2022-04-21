CREATE DATABASE Spotify

USE Spotify

CREATE TABLE Listeners(
ListenerId int primary key not null,
ListenerName nvarchar(50) not null UNIQUE
)

CREATE TABLE Musics(
MusicId int primary key not null,
MusicName nvarchar(50) not null,
totalSecond int not null
)

CREATE TABLE Artists(
ArtistId int primary key not null,
ArtistName nvarchar(50),
MusicCount int not null
)

CREATE TABLE Albums(
AlbumId int primary key not null,
AlbumName nvarchar(50),
AlbumMusicCount int not null
)

CREATE VIEW AboutMusic  AS
SELECT MusicName , totalSecond ,ArtistName
FROM Musics , Artists

CREATE VIEW AboutAlbum AS
SELECT AlbumName ,AlbumMusicCount
FROM Albums
