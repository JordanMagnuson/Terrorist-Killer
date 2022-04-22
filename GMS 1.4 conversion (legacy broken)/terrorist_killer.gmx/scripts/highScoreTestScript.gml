repeat(4)
{
  //Insert random name
  name = randomLetterScript() + randomLetterScript()+ randomLetterScript();
  myScore = -rand(5000);
  civKills = -myScore/10;  
  highScoreAddScript(name,myScore,civKills);
}

/*
namesList = ds_list_create();
scoresList = ds_list_create();
civKillsList = ds_list_create();

//testFile = file_text_open_write("test_data.txt");
//If highscores file doesn't exist
if (!file_exists("tkhighscores.txt"))
{
  //Create lists with empty values
  for (i=0; i<=300; i+=1)
  {
    //Name
    name = randomLetterScript() + randomLetterScript()+ randomLetterScript();
    ds_list_add(namesList,name);
    //Score 
    myScore = -rand(5000);
    ds_list_add(scoresList,myScore);
    //Civilians Killed  
    civKills = -myScore/10;
    ds_list_add(civKillsList,civKills);

//  file_text_write_string(testFile, name);
//  file_text_writeln(testFile);
//  file_text_write_string(testFile, string(myScore));  
//  file_text_writeln(testFile);
//  file_text_write_string(testFile, string(civKills));  
//  file_text_writeln(testFile);  

  }  
//  file_text_close(testFile); 
  
  //Write values to file
  FID = file_text_open_write("tkhighscores.txt");
  //Names
  names = ds_list_write(namesList);
  file_text_write_string(FID,names);
  file_text_writeln(FID);
  //Scores
  scores = ds_list_write(scoresList);
  file_text_write_string(FID,string(scores));
  file_text_writeln(FID);  
  //Civilians Killed
  civKills = ds_list_write(civKillsList);
  file_text_write_string(FID,string(civKills));
  file_text_writeln(FID); 
  
  //Clear the lists, close file
  ds_list_clear(namesList);
  ds_list_clear(scoresList);
  ds_list_clear(civKillsList);
  file_text_close(FID);    
  
  //Insert random name  
  name = randomLetterScript() + randomLetterScript()+ randomLetterScript();
  myScore = -rand(5000);
  civKills = -myScore/10;  
  highScoreAddScript(name,myScore,civKills);  
}
else
{
  //Insert random name
  name = randomLetterScript() + randomLetterScript()+ randomLetterScript();
  myScore = -rand(5000);
  civKills = -myScore/10;  
  highScoreAddScript(civKills,name,myScore);
}

*/
