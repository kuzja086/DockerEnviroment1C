CREATE TABLE log_storage_AIS.tlock(`DateTime` DateTime64(6,'Asia/Yekaterinburg'),
                                  `duration` Int32,
                                  `Level` Int32,
                                  `Process` String,
                                  `ProcessID` Int32,
                                  `ProcessName` String,
                                  `OSThread` Int32,
                                  `ClientID` Int32,
                                  `ApplicationName` String,
                                  `ComputerName` String,
                                  `ConnectID` Int32,
                                  `SessionID` Int32,
                                  `User` String,
                                  `AppID` String,
                                  `DBMS` String,
                                  `DataBase` String,
                                  `Regions` String,
                                  `Locks` String,
                                  `WaitConnections` String,
                                  `Escalating` String,
                                  `Durationus` Int32,
                                  `Exception` String,
                                  `Description` String,
                                  `Context` String,
                                  `message` String,
                                  `file` String) ENGINE = MergeTree() PARTITION BY toYYYYMM(DateTime)
ORDER BY (DateTime);