-- テーブル定義

/*品目マスタ*/
CREATE TABLE m_hinmoku (
    hinmoku_cd CHAR(3) NOT NULL PRIMARY KEY                      -- 品目コード
  , hinmoku_name VARCHAR(30)                                     -- 品目名称
);
INSERT INTO m_hinmoku
VALUES ('001','イチゴショート')
      ,('002','ガトーショコラ')
      ,('003','レモンレアチーズ')
      ,('004','シュガーバターサブレ')
      ,('005','豆乳きなこ黒ゴマクッキー')
      ;

/*販売明細*/
CREATE TABLE t_hanbai_meisai (
    denpyo_no BIGINT NOT NULL PRIMARY KEY                  -- 伝票番号
  , hanbai_date DATE NOT NULL                              -- 販売日
  , hinmoku_cd CHAR(3) NOT NULL                            -- 品目コード
  , hanbai_kingaku NUMERIC(19,3) NOT NULL DEFAULT 0        -- 販売金額
);
INSERT INTO t_hanbai_meisai
VALUES (1,'2023-09-01','001',105000)
      ,(2,'2023-09-02','002',13500)
      ,(3,'2023-09-01','001',167000)
      ,(4,'2023-09-02','003',69870)
      ,(5,'2023-09-02','005',13500)
      ,(6,'2023-09-01','005',167000)
      ,(7,'2023-09-02','003',69870)
      ,(8,'2023-09-02','002',13500)
      ,(9,'2023-09-01','001',167000)
      ,(10,'2023-09-02','003',69870)
;


-- SELECT文

/*品目マスタ*/
SELECT * FROM m_hinmoku ORDER BY hinmoku_cd
;

/*販売明細*/
SELECT * FROM t_hanbai_meisai
;