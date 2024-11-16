#oillife #model #functionaltest #sqlfunctionaltest



#### Functional test - SQL
***
#sqlfunctionaltest #olfunctionaltestsql

###### _ol_na_historical_preprocess_
```SQL
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_na_prognostics.ol_na_historical_preprocess` WHERE vin='1FTFW1E5__(1.1.1)' OR vin='1FTFW1E5__(1.2.1)' OR vin='1FTFW1E5__(1.3.1)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_eu_prognostics.ol_eu_historical_preprocess` WHERE vin='1FTFW1E5__(1.1.2)' OR vin='1FTFW1E5__(1.2.2)' OR vin='1FTFW1E5__(1.3.2)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_img_prognostics.ol_img_historical_preprocess` WHERE vin='1FTFW1E5__(1.1.3)' OR vin='1FTFW1E5__(1.2.3)' OR vin='1FTFW1E5__(1.3.3)';

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_na_prognostics.ol_na_historical_preprocess` WHERE vin='1FTFW1E5__(2.1.1)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_eu_prognostics.ol_eu_historical_preprocess` WHERE vin='1FTFW1E5__(2.1.2)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_img_prognostics.ol_img_historical_preprocess` WHERE vin='1FTFW1E5__(2.1.3)';

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_na_prognostics.ol_na_historical_preprocess` WHERE vin='1FTFW1E5__(3.1.1)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_eu_prognostics.ol_eu_historical_preprocess` WHERE vin='1FTFW1E5__(3.1.2)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_img_prognostics.ol_img_historical_preprocess` WHERE vin='1FTFW1E5__(3.1.3)';

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_na_prognostics.ol_na_historical_preprocess` WHERE vin='1FTFW1E5__(4.1.1)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_eu_prognostics.ol_eu_historical_preprocess` WHERE vin='1FTFW1E5__(4.1.2)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_img_prognostics.ol_img_historical_preprocess` WHERE vin='1FTFW1E5__(4.1.3)';

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_na_prognostics.ol_na_historical_preprocess` WHERE vin='1FTFW1E5__(5.1.1)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_eu_prognostics.ol_eu_historical_preprocess` WHERE vin='1FTFW1E5__(5.1.2)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_img_prognostics.ol_img_historical_preprocess` WHERE vin='1FTFW1E5__(5.1.3)';

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_na_prognostics.ol_na_historical_preprocess` WHERE vin='1FTFW1E5__(6.1.1)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_eu_prognostics.ol_eu_historical_preprocess` WHERE vin='1FTFW1E5__(6.1.2)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_img_prognostics.ol_img_historical_preprocess` WHERE vin='1FTFW1E5__(6.1.3)';

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_na_prognostics.ol_na_historical_preprocess` WHERE vin='1FTFW1E5__(7.1.1)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_eu_prognostics.ol_eu_historical_preprocess` WHERE vin='1FTFW1E5__(7.1.2)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_img_prognostics.ol_img_historical_preprocess` WHERE vin='1FTFW1E5__(7.1.3)';
```

###### _ol\_\<region\>\_model
***
```SQL
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_na_prognostics.ol_na_model` WHERE vin='1FTFW1E5__(1.1.1)' OR vin='1FTFW1E5__(1.2.1)' OR vin='1FTFW1E5__(1.3.1)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_eu_prognostics.ol_eu_model` WHERE vin='1FTFW1E5__(1.1.2)' OR vin='1FTFW1E5__(1.2.2)' OR vin='1FTFW1E5__(1.3.2)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_img_prognostics.ol_img_model` WHERE vin='1FTFW1E5__(1.1.3)' OR vin='1FTFW1E5__(1.2.3)' OR vin='1FTFW1E5__(1.3.3)';

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_na_prognostics.ol_na_model` WHERE vin='1FTFW1E5__(2.1.1)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_eu_prognostics.ol_eu_model` WHERE vin='1FTFW1E5__(2.1.2)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_img_prognostics.ol_img_model` WHERE vin='1FTFW1E5__(2.1.3)';

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_na_prognostics.ol_na_model` WHERE vin='1FTFW1E5__(3.1.1)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_eu_prognostics.ol_eu_model` WHERE vin='1FTFW1E5__(3.1.2)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_img_prognostics.ol_img_model` WHERE vin='1FTFW1E5__(3.1.3)';

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_na_prognostics.ol_na_model` WHERE vin='1FTFW1E5__(4.1.1)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_eu_prognostics.ol_eu_model` WHERE vin='1FTFW1E5__(4.1.2)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_img_prognostics.ol_img_model` WHERE vin='1FTFW1E5__(4.1.3)';

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_na_prognostics.ol_na_model` WHERE vin='1FTFW1E5__(6.1.1)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_eu_prognostics.ol_eu_model` WHERE vin='1FTFW1E5__(6.1.2)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_img_prognostics.ol_img_model` WHERE vin='1FTFW1E5__(6.1.3)';

SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_na_prognostics.ol_na_model` WHERE vin='1FTFW1E5__(7.1.1)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_eu_prognostics.ol_eu_model` WHERE vin='1FTFW1E5__(7.1.2)';
SELECT * FROM `ford-d7910739734ba7b122bc0c0b.oil_life_img_prognostics.ol_img_model` WHERE vin='1FTFW1E5__(7.1.3)';
```


