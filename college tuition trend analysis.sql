WITH base AS (
    SELECT 
        hd.UNITID,
        hd.INSTNM,
        hd.STABBR,
        a_s.Name AS name_of_state,
        val.valueLabel AS institution_cat
    FROM HD2022 hd
    LEFT JOIN abbrev_state a_s 
        ON hd.STABBR = a_s.Abbreviation
    LEFT JOIN valuesets22 val 
        ON hd.INSTCAT = val.valueOrder
       AND val.varName = 'INSTCAT'
),

unioned AS (

    -- =====================
    -- 2015
    -- =====================
    SELECT 
        b.*,
        2015 AS year,
        dvic18.TUFEYR0 AS tuition,
        a15.ENRLT AS enrollment,
        drvf15.F1CORREV AS core_revenue,
        drvf15.F1COREXP AS core_expense,
        drvf15.F1TUFEPC AS pct_tuition_fee,
        drvf15.F1STAPPC AS pct_state_app,
        drvf15.F1LCAPPC AS pct_local_app,
        drvf15.F1GVGCPC AS pct_gov_grants,
        drvf15.F1PGGCPC AS pct_private_grants,
        drvf15.F1INVRPC AS pct_investment_return,
        drvf15.F1OTRVPC AS pct_other_revenue,
        drvf15.F1INSTPC AS pct_instruction,
        drvf15.F1RSRCPC AS pct_research,
        drvf15.F1PBSVPC AS pct_public_service,
        drvf15.F1ACSPPC AS pct_academic_support,
        drvf15.F1STSVPC AS pct_student_services,
        drvf15.F1INSUPC AS pct_institutional_support,
        drvf15.F1OTEXPC AS pct_other_expense
    FROM base b
    LEFT JOIN DRVIC2018 dvic18 ON b.UNITID = dvic18.UNITID
    LEFT JOIN ADM2015 a15 ON b.UNITID = a15.UNITID
    LEFT JOIN DRVF2015 drvf15 ON b.UNITID = drvf15.UNITID

    UNION ALL

    -- =====================
    -- 2016
    -- =====================
    SELECT 
        b.*, 2016,
        dvic18.TUFEYR1,
        a16.ENRLT,
        drvf16.F1CORREV,
        drvf16.F1COREXP,
        drvf16.F1TUFEPC,
        drvf16.F1STAPPC,
        drvf16.F1LCAPPC,
        drvf16.F1GVGCPC,
        drvf16.F1PGGCPC,
        drvf16.F1INVRPC,
        drvf16.F1OTRVPC,
        drvf16.F1INSTPC,
        drvf16.F1RSRCPC,
        drvf16.F1PBSVPC,
        drvf16.F1ACSPPC,
        drvf16.F1STSVPC,
        drvf16.F1INSUPC,
        drvf16.F1OTEXPC
    FROM base b
    LEFT JOIN DRVIC2018 dvic18 ON b.UNITID = dvic18.UNITID
    LEFT JOIN ADM2016 a16 ON b.UNITID = a16.UNITID
    LEFT JOIN DRVF2016 drvf16 ON b.UNITID = drvf16.UNITID

    UNION ALL

    -- =====================
    -- 2017
    -- =====================
    SELECT 
        b.*, 2017,
        dvic18.TUFEYR2,
        a17.ENRLT,
        drvf17.F1CORREV,
        drvf17.F1COREXP,
        drvf17.F1TUFEPC,
        drvf17.F1STAPPC,
        drvf17.F1LCAPPC,
        drvf17.F1GVGCPC,
        drvf17.F1PGGCPC,
        drvf17.F1INVRPC,
        drvf17.F1OTRVPC,
        drvf17.F1INSTPC,
        drvf17.F1RSRCPC,
        drvf17.F1PBSVPC,
        drvf17.F1ACSPPC,
        drvf17.F1STSVPC,
        drvf17.F1INSUPC,
        drvf17.F1OTEXPC
    FROM base b
    LEFT JOIN DRVIC2018 dvic18 ON b.UNITID = dvic18.UNITID
    LEFT JOIN ADM2017 a17 ON b.UNITID = a17.UNITID
    LEFT JOIN DRVF2017 drvf17 ON b.UNITID = drvf17.UNITID

    UNION ALL

    -- =====================
    -- 2018
    -- =====================
    SELECT 
        b.*, 2018,
        dvic18.TUFEYR3,
        a18.ENRLT,
        drvf18.F1CORREV,
        drvf18.F1COREXP,
        drvf18.F1TUFEPC,
        drvf18.F1STAPPC,
        drvf18.F1LCAPPC,
        drvf18.F1GVGCPC,
        drvf18.F1PGGCPC,
        drvf18.F1INVRPC,
        drvf18.F1OTRVPC,
        drvf18.F1INSTPC,
        drvf18.F1RSRCPC,
        drvf18.F1PBSVPC,
        drvf18.F1ACSPPC,
        drvf18.F1STSVPC,
        drvf18.F1INSUPC,
        drvf18.F1OTEXPC
    FROM base b
    LEFT JOIN DRVIC2018 dvic18 ON b.UNITID = dvic18.UNITID
    LEFT JOIN ADM2018 a18 ON b.UNITID = a18.UNITID
    LEFT JOIN DRVF2018 drvf18 ON b.UNITID = drvf18.UNITID

    UNION ALL

    -- =====================
    -- 2019
    -- =====================
    SELECT 
        b.*, 2019,
        dvic22.TUFEYR0,
        a19.ENRLT,
        drvf19.F1CORREV,
        drvf19.F1COREXP,
        drvf19.F1TUFEPC,
        drvf19.F1STAPPC,
        drvf19.F1LCAPPC,
        drvf19.F1GVGCPC,
        drvf19.F1PGGCPC,
        drvf19.F1INVRPC,
        drvf19.F1OTRVPC,
        drvf19.F1INSTPC,
        drvf19.F1RSRCPC,
        drvf19.F1PBSVPC,
        drvf19.F1ACSPPC,
        drvf19.F1STSVPC,
        drvf19.F1INSUPC,
        drvf19.F1OTEXPC
    FROM base b
    LEFT JOIN DRVIC2022 dvic22 ON b.UNITID = dvic22.UNITID
    LEFT JOIN ADM2019 a19 ON b.UNITID = a19.UNITID
    LEFT JOIN DRVF2019 drvf19 ON b.UNITID = drvf19.UNITID

    UNION ALL

    -- =====================
    -- 2020
    -- =====================
    SELECT 
        b.*, 2020,
        dvic22.TUFEYR1,
        a20.ENRLT,
        drvf20.F1CORREV,
        drvf20.F1COREXP,
        drvf20.F1TUFEPC,
        drvf20.F1STAPPC,
        drvf20.F1LCAPPC,
        drvf20.F1GVGCPC,
        drvf20.F1PGGCPC,
        drvf20.F1INVRPC,
        drvf20.F1OTRVPC,
        drvf20.F1INSTPC,
        drvf20.F1RSRCPC,
        drvf20.F1PBSVPC,
        drvf20.F1ACSPPC,
        drvf20.F1STSVPC,
        drvf20.F1INSUPC,
        drvf20.F1OTEXPC
    FROM base b
    LEFT JOIN DRVIC2022 dvic22 ON b.UNITID = dvic22.UNITID
    LEFT JOIN ADM2020 a20 ON b.UNITID = a20.UNITID
    LEFT JOIN DRVF2020 drvf20 ON b.UNITID = drvf20.UNITID

    UNION ALL

    -- =====================
    -- 2021
    -- =====================
    SELECT 
        b.*, 2021,
        dvic22.TUFEYR2,
        a21.ENRLT,
        drvf21.F1CORREV,
        drvf21.F1COREXP,
        drvf21.F1TUFEPC,
        drvf21.F1STAPPC,
        drvf21.F1LCAPPC,
        drvf21.F1GVGCPC,
        drvf21.F1PGGCPC,
        drvf21.F1INVRPC,
        drvf21.F1OTRVPC,
        drvf21.F1INSTPC,
        drvf21.F1RSRCPC,
        drvf21.F1PBSVPC,
        drvf21.F1ACSPPC,
        drvf21.F1STSVPC,
        drvf21.F1INSUPC,
        drvf21.F1OTEXPC
    FROM base b
    LEFT JOIN DRVIC2022 dvic22 ON b.UNITID = dvic22.UNITID
    LEFT JOIN ADM2021 a21 ON b.UNITID = a21.UNITID
    LEFT JOIN DRVF2021 drvf21 ON b.UNITID = drvf21.UNITID

    UNION ALL

    -- =====================
    -- 2022
    -- =====================
    SELECT 
        b.*, 2022,
        dvic22.TUFEYR3,
        a22.ENRLT,
        drvf22.F1CORREV,
        drvf22.F1COREXP,
        drvf22.F1TUFEPC,
        drvf22.F1STAPPC,
        drvf22.F1LCAPPC,
        drvf22.F1GVGCPC,
        drvf22.F1PGGCPC,
        drvf22.F1INVRPC,
        drvf22.F1OTRVPC,
        drvf22.F1INSTPC,
        drvf22.F1RSRCPC,
        drvf22.F1PBSVPC,
        drvf22.F1ACSPPC,
        drvf22.F1STSVPC,
        drvf22.F1INSUPC,
        drvf22.F1OTEXPC
    FROM base b
    LEFT JOIN DRVIC2022 dvic22 ON b.UNITID = dvic22.UNITID
    LEFT JOIN ADM2022 a22 ON b.UNITID = a22.UNITID
    LEFT JOIN DRVF2022 drvf22 ON b.UNITID = drvf22.UNITID
)

SELECT *
FROM unioned
WHERE NOT (
    UNITID IS NULL OR
    INSTNM IS NULL OR
    STABBR IS NULL OR
    name_of_state IS NULL OR
    institution_cat IS NULL OR
    year IS NULL OR
    tuition IS NULL OR
    enrollment IS NULL OR
    core_revenue IS NULL OR
    core_expense IS NULL OR
    pct_tuition_fee IS NULL OR
    pct_state_app IS NULL OR
    pct_local_app IS NULL OR
    pct_gov_grants IS NULL OR
    pct_private_grants IS NULL OR
    pct_investment_return IS NULL OR
    pct_other_revenue IS NULL OR
    pct_instruction IS NULL OR
    pct_research IS NULL OR
    pct_public_service IS NULL OR
    pct_academic_support IS NULL OR
    pct_student_services IS NULL OR
    pct_institutional_support IS NULL OR
    pct_other_expense IS NULL
)
ORDER BY STABBR, INSTNM, UNITID, year;
