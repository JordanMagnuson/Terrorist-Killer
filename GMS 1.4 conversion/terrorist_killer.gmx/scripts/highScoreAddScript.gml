//argument0 = name
//argument1 = score
//argument2 = civilian kills

namesList = ds_list_create();
scoresList = ds_list_create();
civKillsList = ds_list_create();


//If highscores file doesn't exist
if (!file_exists("tkhighscores.txt"))
{
  //Create lists with empty values
  for (i=0; i<=15; i+=1)
  {
    //Name
    name = "<empty>";
    ds_list_add(namesList,name);
    //Score 
    myScore = 0;
    ds_list_add(scoresList,score);
    //Civilians Killed  
    civKills = 0;
    ds_list_add(civKillsList,civKills);
  }  
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
}



//Read values from highscores file
FID = file_text_open_read("tkhighscores.txt")
//Name
names = file_text_read_string(FID);
ds_list_read(namesList,names);
file_text_readln(FID);
//Score 
scores = file_text_read_string(FID);
ds_list_read(scoresList,scores);
file_text_readln(FID);
//Civilians Killed  
civKills = file_text_read_string(FID);
ds_list_read(civKillsList,civKills);
file_text_readln(FID);
file_text_close(FID);



//Insert new score
for (i=0; i<ds_list_size(scoresList); i+=1)
{
  scoreToCompare = ds_list_find_value(scoresList,i);
  if (argument1 > scoreToCompare or scoreToCompare == 0)
  {
    newHighScoreIndex = i;
    newHighScoreDecile = (i div 10) * 10;
    ds_list_insert(namesList,i,argument0);     
    ds_list_insert(scoresList,i,argument1); 
    ds_list_insert(civKillsList,i,argument2);
    //Add another empty value to the end of the list
    ds_list_add(namesList,"<empty>"); 
    ds_list_add(scoresList,0);     
    ds_list_add(civKillsList,0);
    break;
  }
}

//Write new highscores to file
FID = file_text_open_write("tkhighscores.txt")
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
file_text_close(FID);


