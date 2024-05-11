MODULE obe;

IMPORT
  Files,
  Platform,
  Out;

PROCEDURE CheckDirectories;
BEGIN
END CheckDirectories;

PROCEDURE GenIndex;
CONST
  templpath     = "../templates/index.html";
  outputpath    = "../public/index.html";
  examplespath  = "../examples.txt";
VAR
  outputfd, templfd, examplesfd: Files.File;
  outputrd, templrd, examplesrd: Files.Rider;
BEGIN
END GenIndex;

BEGIN
  CheckDirectories;
  GenIndex;
END obe.
