ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician RENAME COLUMN singerName TO musicianName;

ALTER TABLE musician  ADD COLUMN role varchar(50);

update musician set musician.role = 'vocals' where musician.musicianName	like 'Alina';
update musician set musician.role = 'guitar' where musician.musicianName	like 'Mysterio';
update musician set musician.role = 'percussion' where musician.musicianName	like 'Rainbow';
update musician set musician.role = 'piano' where musician.musicianName	like 'Luna';

ALTER TABLE musician  ADD COLUMN bandName varchar(50);

select * from musician;
update musician set musician.bandName = 'Crazy Duo' where musician.musicianName	like 'Alina';
update musician set musician.bandName = 'Crazy Duo' where musician.musicianName	like 'Rainbow';
update musician set musician.bandName = 'Mysterio' where musician.musicianName	like 'Mysterio';
update musician set musician.bandName = 'Luna' where musician.musicianName	like 'Luna';

CREATE TABLE band (
    bandName VARCHAR(50),
    PRIMARY KEY (bandName)
);
INSERT INTO band (bandName)
SELECT DISTINCT bandName FROM musician;

ALTER TABLE band  ADD COLUMN creation YEAR;

update band set band.creation = 2015 where band.bandName	like 'Crazy Duo';
update band set band.creation = 2009 where band.bandName	like 'Luna';
update band set band.creation = 2019 where band.bandName	like 'Mysterio';

ALTER TABLE band  ADD COLUMN genre varchar(50);

update band set band.genre = 'rock' where band.bandName	like 'Crazy Duo';
update band set band.genre = 'classical' where band.bandName	like 'Luna';
update band set band.genre = 'pop' where band.bandName	like 'Mysterio';


